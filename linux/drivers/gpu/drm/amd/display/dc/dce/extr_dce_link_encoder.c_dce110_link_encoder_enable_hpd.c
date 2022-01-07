
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct link_encoder {int dummy; } ;
struct TYPE_2__ {struct dc_context* ctx; } ;
struct dce110_link_encoder {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int DC_HPD_CONTROL ;
 int DC_HPD_EN ;
 scalar_t__ HPD_REG (int ) ;
 struct dce110_link_encoder* TO_DCE110_LINK_ENC (struct link_encoder*) ;
 scalar_t__ dm_read_reg (struct dc_context*,scalar_t__) ;
 int get_reg_field_value (scalar_t__,int ,int ) ;
 int set_reg_field_value (scalar_t__,int,int ,int ) ;

void dce110_link_encoder_enable_hpd(struct link_encoder *enc)
{
 struct dce110_link_encoder *enc110 = TO_DCE110_LINK_ENC(enc);
 struct dc_context *ctx = enc110->base.ctx;
 uint32_t addr = HPD_REG(DC_HPD_CONTROL);
 uint32_t hpd_enable = 0;
 uint32_t value = dm_read_reg(ctx, addr);

 get_reg_field_value(hpd_enable, DC_HPD_CONTROL, DC_HPD_EN);

 if (hpd_enable == 0)
  set_reg_field_value(value, 1, DC_HPD_CONTROL, DC_HPD_EN);
}
