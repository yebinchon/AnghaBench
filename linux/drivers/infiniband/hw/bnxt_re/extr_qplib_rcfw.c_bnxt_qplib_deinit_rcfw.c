
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct creq_deinitialize_fw_resp {int dummy; } ;
struct cmdq_deinitialize_fw {int dummy; } ;
struct bnxt_qplib_rcfw {int flags; } ;


 int DEINITIALIZE_FW ;
 int FIRMWARE_INITIALIZED_FLAG ;
 int RCFW_CMD_PREP (struct cmdq_deinitialize_fw,int ,int ) ;
 int bnxt_qplib_rcfw_send_message (struct bnxt_qplib_rcfw*,void*,void*,int *,int ) ;
 int clear_bit (int ,int *) ;

int bnxt_qplib_deinit_rcfw(struct bnxt_qplib_rcfw *rcfw)
{
 struct cmdq_deinitialize_fw req;
 struct creq_deinitialize_fw_resp resp;
 u16 cmd_flags = 0;
 int rc;

 RCFW_CMD_PREP(req, DEINITIALIZE_FW, cmd_flags);
 rc = bnxt_qplib_rcfw_send_message(rcfw, (void *)&req, (void *)&resp,
       ((void*)0), 0);
 if (rc)
  return rc;

 clear_bit(FIRMWARE_INITIALIZED_FLAG, &rcfw->flags);
 return 0;
}
