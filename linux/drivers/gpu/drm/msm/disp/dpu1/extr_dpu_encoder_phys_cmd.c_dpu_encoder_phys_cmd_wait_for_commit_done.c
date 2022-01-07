
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys_cmd {scalar_t__ serialize_wait4pp; } ;
struct dpu_encoder_phys {int dummy; } ;


 int EINVAL ;
 int _dpu_encoder_phys_cmd_wait_for_ctl_start (struct dpu_encoder_phys*) ;
 scalar_t__ dpu_encoder_phys_cmd_is_master (struct dpu_encoder_phys*) ;
 int dpu_encoder_phys_cmd_prepare_for_kickoff (struct dpu_encoder_phys*) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static int dpu_encoder_phys_cmd_wait_for_commit_done(
  struct dpu_encoder_phys *phys_enc)
{
 int rc = 0;
 struct dpu_encoder_phys_cmd *cmd_enc;

 if (!phys_enc)
  return -EINVAL;

 cmd_enc = to_dpu_encoder_phys_cmd(phys_enc);


 if (dpu_encoder_phys_cmd_is_master(phys_enc))
  rc = _dpu_encoder_phys_cmd_wait_for_ctl_start(phys_enc);


 if (!rc && cmd_enc->serialize_wait4pp)
  dpu_encoder_phys_cmd_prepare_for_kickoff(phys_enc);

 return rc;
}
