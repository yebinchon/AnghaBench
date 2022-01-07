
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int session_id; } ;
struct psp_gfx_cmd_resp {TYPE_1__ resp; } ;
struct psp_context {int mutex; TYPE_3__* cmd_buf_mem; scalar_t__ fence_buf; int fence_value; int cmd_buf_mc_addr; } ;
struct amdgpu_firmware_info {int ucode_id; int tmr_mc_addr_hi; int tmr_mc_addr_lo; } ;
struct TYPE_6__ {int status; int fw_addr_hi; int fw_addr_lo; int session_id; } ;
struct TYPE_7__ {TYPE_2__ resp; } ;


 int DRM_WARN (char*,int) ;
 int EINVAL ;
 int GFX_CMD_STATUS_MASK ;
 int PSP_CMD_BUFFER_SIZE ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int memcpy (TYPE_3__*,struct psp_gfx_cmd_resp*,int) ;
 int memset (TYPE_3__*,int ,int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int psp_cmd_submit (struct psp_context*,int ,int ,int) ;

__attribute__((used)) static int
psp_cmd_submit_buf(struct psp_context *psp,
     struct amdgpu_firmware_info *ucode,
     struct psp_gfx_cmd_resp *cmd, uint64_t fence_mc_addr)
{
 int ret;
 int index;
 int timeout = 2000;

 mutex_lock(&psp->mutex);

 memset(psp->cmd_buf_mem, 0, PSP_CMD_BUFFER_SIZE);

 memcpy(psp->cmd_buf_mem, cmd, sizeof(struct psp_gfx_cmd_resp));

 index = atomic_inc_return(&psp->fence_value);
 ret = psp_cmd_submit(psp, psp->cmd_buf_mc_addr, fence_mc_addr, index);
 if (ret) {
  atomic_dec(&psp->fence_value);
  mutex_unlock(&psp->mutex);
  return ret;
 }

 while (*((unsigned int *)psp->fence_buf) != index) {
  if (--timeout == 0)
   break;
  msleep(1);
 }
 if (psp->cmd_buf_mem->resp.status || !timeout) {
  if (ucode)
   DRM_WARN("failed to load ucode id (%d) ",
      ucode->ucode_id);
  DRM_WARN("psp command failed and response status is (0x%X)\n",
     psp->cmd_buf_mem->resp.status & GFX_CMD_STATUS_MASK);
  if (!timeout) {
   mutex_unlock(&psp->mutex);
   return -EINVAL;
  }
 }


 cmd->resp.session_id = psp->cmd_buf_mem->resp.session_id;

 if (ucode) {
  ucode->tmr_mc_addr_lo = psp->cmd_buf_mem->resp.fw_addr_lo;
  ucode->tmr_mc_addr_hi = psp->cmd_buf_mem->resp.fw_addr_hi;
 }
 mutex_unlock(&psp->mutex);

 return ret;
}
