
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int hpd_source; struct dc_context* ctx; } ;
struct dce110_link_encoder {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;
typedef enum hpd_source_id { ____Placeholder_hpd_source_id } hpd_source_id ;


 int AUX_CONTROL ;
 int AUX_DPHY_RX_CONTROL0 ;
 int AUX_HPD_SEL ;
 int AUX_LS_READ_EN ;
 int AUX_REG (int ) ;
 int AUX_RX_RECEIVE_WINDOW ;
 int dm_read_reg (struct dc_context*,int ) ;
 int dm_write_reg (struct dc_context*,int ,int ) ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void aux_initialize(
 struct dce110_link_encoder *enc110)
{
 struct dc_context *ctx = enc110->base.ctx;
 enum hpd_source_id hpd_source = enc110->base.hpd_source;
 uint32_t addr = AUX_REG(AUX_CONTROL);
 uint32_t value = dm_read_reg(ctx, addr);

 set_reg_field_value(value, hpd_source, AUX_CONTROL, AUX_HPD_SEL);
 set_reg_field_value(value, 0, AUX_CONTROL, AUX_LS_READ_EN);
 dm_write_reg(ctx, addr, value);

 addr = AUX_REG(AUX_DPHY_RX_CONTROL0);
 value = dm_read_reg(ctx, addr);


 set_reg_field_value(value, 1,
   AUX_DPHY_RX_CONTROL0, AUX_RX_RECEIVE_WINDOW);
 dm_write_reg(ctx, addr, value);

}
