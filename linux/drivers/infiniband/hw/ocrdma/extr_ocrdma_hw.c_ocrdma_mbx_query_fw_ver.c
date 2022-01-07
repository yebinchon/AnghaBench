
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cmd; } ;
struct ocrdma_mqe {TYPE_1__ u; } ;
struct ocrdma_mbx_hdr {int dummy; } ;
struct ocrdma_fw_ver_rsp {int * running_ver; } ;
struct TYPE_4__ {int * fw_ver; } ;
struct ocrdma_dev {TYPE_2__ attr; } ;


 int ENOMEM ;
 int OCRDMA_CMD_GET_FW_VER ;
 int OCRDMA_SUBSYS_COMMON ;
 int kfree (struct ocrdma_mqe*) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 struct ocrdma_mqe* ocrdma_init_emb_mqe (int ,int) ;
 int ocrdma_init_mch (struct ocrdma_mbx_hdr*,int ,int ,int) ;
 int ocrdma_le32_to_cpu (int *,int) ;
 int ocrdma_mbx_cmd (struct ocrdma_dev*,struct ocrdma_mqe*) ;

__attribute__((used)) static int ocrdma_mbx_query_fw_ver(struct ocrdma_dev *dev)
{
 int status = -ENOMEM;
 struct ocrdma_mqe *cmd;
 struct ocrdma_fw_ver_rsp *rsp;

 cmd = ocrdma_init_emb_mqe(OCRDMA_CMD_GET_FW_VER, sizeof(*cmd));
 if (!cmd)
  return -ENOMEM;
 ocrdma_init_mch((struct ocrdma_mbx_hdr *)&cmd->u.cmd[0],
   OCRDMA_CMD_GET_FW_VER,
   OCRDMA_SUBSYS_COMMON, sizeof(*cmd));

 status = ocrdma_mbx_cmd(dev, (struct ocrdma_mqe *)cmd);
 if (status)
  goto mbx_err;
 rsp = (struct ocrdma_fw_ver_rsp *)cmd;
 memset(&dev->attr.fw_ver[0], 0, sizeof(dev->attr.fw_ver));
 memcpy(&dev->attr.fw_ver[0], &rsp->running_ver[0],
        sizeof(rsp->running_ver));
 ocrdma_le32_to_cpu(dev->attr.fw_ver, sizeof(rsp->running_ver));
mbx_err:
 kfree(cmd);
 return status;
}
