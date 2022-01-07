
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_encoder_phys {scalar_t__ split_role; } ;


 scalar_t__ ENC_ROLE_SLAVE ;

__attribute__((used)) static bool dpu_encoder_phys_cmd_is_master(struct dpu_encoder_phys *phys_enc)
{
 return (phys_enc->split_role != ENC_ROLE_SLAVE) ? 1 : 0;
}
