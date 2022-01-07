
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int preferred_engine; int output_signals; int transmitter; int connector; int hpd_source; int id; int ctx; int * funcs; } ;
struct encoder_init_data {int transmitter; int connector; int hpd_source; int encoder; int ctx; } ;


 int ENGINE_ID_VIRTUAL ;
 int SIGNAL_TYPE_VIRTUAL ;
 int virtual_lnk_enc_funcs ;

bool virtual_link_encoder_construct(
 struct link_encoder *enc, const struct encoder_init_data *init_data)
{
 enc->funcs = &virtual_lnk_enc_funcs;
 enc->ctx = init_data->ctx;
 enc->id = init_data->encoder;

 enc->hpd_source = init_data->hpd_source;
 enc->connector = init_data->connector;

 enc->transmitter = init_data->transmitter;

 enc->output_signals = SIGNAL_TYPE_VIRTUAL;

 enc->preferred_engine = ENGINE_ID_VIRTUAL;

 return 1;
}
