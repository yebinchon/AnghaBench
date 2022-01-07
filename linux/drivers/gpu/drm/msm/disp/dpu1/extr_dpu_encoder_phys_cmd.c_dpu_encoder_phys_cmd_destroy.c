
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys_cmd {int dummy; } ;
struct dpu_encoder_phys {int dummy; } ;


 int DPU_ERROR (char*) ;
 int kfree (struct dpu_encoder_phys_cmd*) ;
 struct dpu_encoder_phys_cmd* to_dpu_encoder_phys_cmd (struct dpu_encoder_phys*) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_destroy(struct dpu_encoder_phys *phys_enc)
{
 struct dpu_encoder_phys_cmd *cmd_enc =
  to_dpu_encoder_phys_cmd(phys_enc);

 if (!phys_enc) {
  DPU_ERROR("invalid encoder\n");
  return;
 }
 kfree(cmd_enc);
}
