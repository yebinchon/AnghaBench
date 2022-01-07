
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_encoder {int dummy; } ;
struct encoder_init_data {size_t transmitter; int channel; size_t hpd_source; } ;
struct TYPE_2__ {struct link_encoder base; } ;
struct dcn20_link_encoder {TYPE_1__ enc10; } ;


 int GFP_KERNEL ;
 int dcn20_link_encoder_construct (struct dcn20_link_encoder*,struct encoder_init_data const*,int *,int *,int *,int *,int *,int *) ;
 struct dcn20_link_encoder* kzalloc (int,int ) ;
 int le_mask ;
 int le_shift ;
 int * link_enc_aux_regs ;
 int link_enc_feature ;
 int * link_enc_hpd_regs ;
 int * link_enc_regs ;

struct link_encoder *dcn20_link_encoder_create(
 const struct encoder_init_data *enc_init_data)
{
 struct dcn20_link_encoder *enc20 =
  kzalloc(sizeof(struct dcn20_link_encoder), GFP_KERNEL);

 if (!enc20)
  return ((void*)0);

 dcn20_link_encoder_construct(enc20,
          enc_init_data,
          &link_enc_feature,
          &link_enc_regs[enc_init_data->transmitter],
          &link_enc_aux_regs[enc_init_data->channel - 1],
          &link_enc_hpd_regs[enc_init_data->hpd_source],
          &le_shift,
          &le_mask);

 return &enc20->enc10.base;
}
