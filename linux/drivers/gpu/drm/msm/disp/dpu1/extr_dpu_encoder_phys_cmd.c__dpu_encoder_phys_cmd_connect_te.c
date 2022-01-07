
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpu_encoder_phys {TYPE_2__* hw_pp; int parent; } ;
struct TYPE_3__ {int (* connect_external_te ) (TYPE_2__*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int DRMID (int ) ;
 int stub1 (TYPE_2__*,int) ;
 int trace_dpu_enc_phys_cmd_connect_te (int ,int) ;

__attribute__((used)) static void _dpu_encoder_phys_cmd_connect_te(
  struct dpu_encoder_phys *phys_enc, bool enable)
{
 if (!phys_enc || !phys_enc->hw_pp ||
   !phys_enc->hw_pp->ops.connect_external_te)
  return;

 trace_dpu_enc_phys_cmd_connect_te(DRMID(phys_enc->parent), enable);
 phys_enc->hw_pp->ops.connect_external_te(phys_enc->hw_pp, enable);
}
