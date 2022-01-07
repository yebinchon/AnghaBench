
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys {int dummy; } ;


 int _dpu_encoder_phys_cmd_connect_te (struct dpu_encoder_phys*,int) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_handle_post_kickoff(
  struct dpu_encoder_phys *phys_enc)
{




 _dpu_encoder_phys_cmd_connect_te(phys_enc, 1);
}
