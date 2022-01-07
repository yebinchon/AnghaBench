
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {scalar_t__ intf_idx; int parent; } ;


 int DRMID (int ) ;
 int DRM_ERROR (char*,int ,int,scalar_t__) ;
 int EINVAL ;
 scalar_t__ INTF_0 ;
 int _dpu_encoder_phys_cmd_wait_for_idle (struct dpu_encoder_phys*) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static int dpu_encoder_phys_cmd_wait_for_tx_complete(
  struct dpu_encoder_phys *phys_enc)
{
 int rc;
 struct dpu_encoder_phys_cmd *cmd_enc;

 if (!phys_enc)
  return -EINVAL;

 cmd_enc = to_dpu_encoder_phys_cmd(phys_enc);

 rc = _dpu_encoder_phys_cmd_wait_for_idle(phys_enc);
 if (rc) {
  DRM_ERROR("failed wait_for_idle: id:%u ret:%d intf:%d\n",
     DRMID(phys_enc->parent), rc,
     phys_enc->intf_idx - INTF_0);
 }

 return rc;
}
