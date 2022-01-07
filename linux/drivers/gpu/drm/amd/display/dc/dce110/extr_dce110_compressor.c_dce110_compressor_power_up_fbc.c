
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int CLK_GATING_DISABLED; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct compressor {int ctx; int min_compress_ratio; TYPE_2__ options; } ;


 int FBC_CNTL ;
 int FBC_COHERENCY_MODE ;
 int FBC_COMPRESS_RATIO_1TO1 ;
 int FBC_COMP_CLK_GATE_EN ;
 int FBC_COMP_CNTL ;
 int FBC_COMP_MODE ;
 int FBC_DEPTH_RGB08_EN ;
 int FBC_DPCM4_RGB_EN ;
 int FBC_EN ;
 int FBC_GRPH_COMP_EN ;
 int FBC_IND_EN ;
 int FBC_MIN_COMPRESSION ;
 int FBC_RLE_EN ;
 int dm_read_reg (int ,int) ;
 int dm_write_reg (int ,int,int) ;
 int mmFBC_CNTL ;
 int mmFBC_COMP_CNTL ;
 int mmFBC_COMP_MODE ;
 int mmFBC_IND_LUT0 ;
 int mmFBC_IND_LUT1 ;
 int set_reg_field_value (int,int,int ,int ) ;

void dce110_compressor_power_up_fbc(struct compressor *compressor)
{
 uint32_t value;
 uint32_t addr;

 addr = mmFBC_CNTL;
 value = dm_read_reg(compressor->ctx, addr);
 set_reg_field_value(value, 0, FBC_CNTL, FBC_GRPH_COMP_EN);
 set_reg_field_value(value, 1, FBC_CNTL, FBC_EN);
 set_reg_field_value(value, 2, FBC_CNTL, FBC_COHERENCY_MODE);
 if (compressor->options.bits.CLK_GATING_DISABLED == 1) {

  set_reg_field_value(
   value,
   0,
   FBC_CNTL,
   FBC_COMP_CLK_GATE_EN);
 }
 dm_write_reg(compressor->ctx, addr, value);

 addr = mmFBC_COMP_MODE;
 value = dm_read_reg(compressor->ctx, addr);
 set_reg_field_value(value, 1, FBC_COMP_MODE, FBC_RLE_EN);
 set_reg_field_value(value, 1, FBC_COMP_MODE, FBC_DPCM4_RGB_EN);
 set_reg_field_value(value, 1, FBC_COMP_MODE, FBC_IND_EN);
 dm_write_reg(compressor->ctx, addr, value);

 addr = mmFBC_COMP_CNTL;
 value = dm_read_reg(compressor->ctx, addr);
 set_reg_field_value(value, 1, FBC_COMP_CNTL, FBC_DEPTH_RGB08_EN);
 dm_write_reg(compressor->ctx, addr, value);




 set_reg_field_value(value, 0xF, FBC_COMP_CNTL, FBC_MIN_COMPRESSION);
 dm_write_reg(compressor->ctx, addr, value);
 compressor->min_compress_ratio = FBC_COMPRESS_RATIO_1TO1;

 value = 0;
 dm_write_reg(compressor->ctx, mmFBC_IND_LUT0, value);

 value = 0xFFFFFF;
 dm_write_reg(compressor->ctx, mmFBC_IND_LUT1, value);
}
