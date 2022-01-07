
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;
struct encoder_init_data {size_t transmitter; int channel; size_t hpd_source; } ;
struct dce110_link_encoder {struct link_encoder base; } ;


 int GFP_KERNEL ;
 int dce110_link_encoder_construct (struct dce110_link_encoder*,struct encoder_init_data const*,int *,int *,int *,int *) ;
 struct dce110_link_encoder* kzalloc (int,int ) ;
 int * link_enc_aux_regs ;
 int link_enc_feature ;
 int * link_enc_hpd_regs ;
 int * link_enc_regs ;

__attribute__((used)) static struct link_encoder *dce120_link_encoder_create(
 const struct encoder_init_data *enc_init_data)
{
 struct dce110_link_encoder *enc110 =
  kzalloc(sizeof(struct dce110_link_encoder), GFP_KERNEL);

 if (!enc110)
  return ((void*)0);

 dce110_link_encoder_construct(enc110,
          enc_init_data,
          &link_enc_feature,
          &link_enc_regs[enc_init_data->transmitter],
          &link_enc_aux_regs[enc_init_data->channel - 1],
          &link_enc_hpd_regs[enc_init_data->hpd_source]);

 return &enc110->base;
}
