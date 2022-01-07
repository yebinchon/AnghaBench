
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys {int dummy; } ;


 int dpu_encoder_helper_trigger_start (struct dpu_encoder_phys*) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_trigger_start(
  struct dpu_encoder_phys *phys_enc)
{
 if (!phys_enc)
  return;

 dpu_encoder_helper_trigger_start(phys_enc);
}
