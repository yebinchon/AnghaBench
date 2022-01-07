
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct out_csc_color_matrix {int* regval; } ;
struct TYPE_2__ {struct dc_context* ctx; } ;
struct dce_transform {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;
typedef enum grph_color_adjust_option { ____Placeholder_grph_color_adjust_option } grph_color_adjust_option ;


 int COL_MAN_OUTPUT_CSC_CONTROL ;
 int OUTPUT_CSC_C11_A ;
 int OUTPUT_CSC_C11_B ;
 int OUTPUT_CSC_C11_C12_A ;
 int OUTPUT_CSC_C11_C12_B ;
 int OUTPUT_CSC_C12_A ;
 int OUTPUT_CSC_C12_B ;
 int OUTPUT_CSC_C13_A ;
 int OUTPUT_CSC_C13_B ;
 int OUTPUT_CSC_C13_C14_A ;
 int OUTPUT_CSC_C13_C14_B ;
 int OUTPUT_CSC_C14_A ;
 int OUTPUT_CSC_C14_B ;
 int OUTPUT_CSC_C21_A ;
 int OUTPUT_CSC_C21_B ;
 int OUTPUT_CSC_C21_C22_A ;
 int OUTPUT_CSC_C21_C22_B ;
 int OUTPUT_CSC_C22_A ;
 int OUTPUT_CSC_C22_B ;
 int OUTPUT_CSC_C23_A ;
 int OUTPUT_CSC_C23_B ;
 int OUTPUT_CSC_C23_C24_A ;
 int OUTPUT_CSC_C23_C24_B ;
 int OUTPUT_CSC_C24_A ;
 int OUTPUT_CSC_C24_B ;
 int OUTPUT_CSC_C31_A ;
 int OUTPUT_CSC_C31_B ;
 int OUTPUT_CSC_C31_C32_A ;
 int OUTPUT_CSC_C31_C32_B ;
 int OUTPUT_CSC_C32_A ;
 int OUTPUT_CSC_C32_B ;
 int OUTPUT_CSC_C33_A ;
 int OUTPUT_CSC_C33_B ;
 int OUTPUT_CSC_C33_C34_A ;
 int OUTPUT_CSC_C33_C34_B ;
 int OUTPUT_CSC_C34_A ;
 int OUTPUT_CSC_C34_B ;
 int OUTPUT_CSC_MODE ;
 int dm_read_reg (struct dc_context*,int ) ;
 int dm_write_reg (struct dc_context*,int ,int ) ;
 int get_reg_field_value (int ,int ,int ) ;
 int mmCOL_MAN_OUTPUT_CSC_CONTROL ;
 int mmOUTPUT_CSC_C11_C12_A ;
 int mmOUTPUT_CSC_C11_C12_B ;
 int mmOUTPUT_CSC_C13_C14_A ;
 int mmOUTPUT_CSC_C13_C14_B ;
 int mmOUTPUT_CSC_C21_C22_A ;
 int mmOUTPUT_CSC_C21_C22_B ;
 int mmOUTPUT_CSC_C23_C24_A ;
 int mmOUTPUT_CSC_C23_C24_B ;
 int mmOUTPUT_CSC_C31_C32_A ;
 int mmOUTPUT_CSC_C31_C32_B ;
 int mmOUTPUT_CSC_C33_C34_A ;
 int mmOUTPUT_CSC_C33_C34_B ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void program_color_matrix_v(
 struct dce_transform *xfm_dce,
 const struct out_csc_color_matrix *tbl_entry,
 enum grph_color_adjust_option options)
{
 struct dc_context *ctx = xfm_dce->base.ctx;
 uint32_t cntl_value = dm_read_reg(ctx, mmCOL_MAN_OUTPUT_CSC_CONTROL);
 bool use_set_a = (get_reg_field_value(cntl_value,
   COL_MAN_OUTPUT_CSC_CONTROL,
   OUTPUT_CSC_MODE) != 4);

 set_reg_field_value(
   cntl_value,
  0,
  COL_MAN_OUTPUT_CSC_CONTROL,
  OUTPUT_CSC_MODE);

 if (use_set_a) {
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C11_C12_A;

   set_reg_field_value(
    value,
    tbl_entry->regval[0],
    OUTPUT_CSC_C11_C12_A,
    OUTPUT_CSC_C11_A);

   set_reg_field_value(
    value,
    tbl_entry->regval[1],
    OUTPUT_CSC_C11_C12_A,
    OUTPUT_CSC_C12_A);

   dm_write_reg(ctx, addr, value);
  }
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C13_C14_A;

   set_reg_field_value(
    value,
    tbl_entry->regval[2],
    OUTPUT_CSC_C13_C14_A,
    OUTPUT_CSC_C13_A);

   set_reg_field_value(
    value,
    tbl_entry->regval[3],
    OUTPUT_CSC_C13_C14_A,
    OUTPUT_CSC_C14_A);

   dm_write_reg(ctx, addr, value);
  }
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C21_C22_A;

   set_reg_field_value(
    value,
    tbl_entry->regval[4],
    OUTPUT_CSC_C21_C22_A,
    OUTPUT_CSC_C21_A);

   set_reg_field_value(
    value,
    tbl_entry->regval[5],
    OUTPUT_CSC_C21_C22_A,
    OUTPUT_CSC_C22_A);

   dm_write_reg(ctx, addr, value);
  }
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C23_C24_A;

   set_reg_field_value(
    value,
    tbl_entry->regval[6],
    OUTPUT_CSC_C23_C24_A,
    OUTPUT_CSC_C23_A);

   set_reg_field_value(
    value,
    tbl_entry->regval[7],
    OUTPUT_CSC_C23_C24_A,
    OUTPUT_CSC_C24_A);

   dm_write_reg(ctx, addr, value);
  }
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C31_C32_A;

   set_reg_field_value(
    value,
    tbl_entry->regval[8],
    OUTPUT_CSC_C31_C32_A,
    OUTPUT_CSC_C31_A);

   set_reg_field_value(
    value,
    tbl_entry->regval[9],
    OUTPUT_CSC_C31_C32_A,
    OUTPUT_CSC_C32_A);

   dm_write_reg(ctx, addr, value);
  }
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C33_C34_A;

   set_reg_field_value(
    value,
    tbl_entry->regval[10],
    OUTPUT_CSC_C33_C34_A,
    OUTPUT_CSC_C33_A);

   set_reg_field_value(
    value,
    tbl_entry->regval[11],
    OUTPUT_CSC_C33_C34_A,
    OUTPUT_CSC_C34_A);

   dm_write_reg(ctx, addr, value);
  }
  set_reg_field_value(
   cntl_value,
   4,
   COL_MAN_OUTPUT_CSC_CONTROL,
   OUTPUT_CSC_MODE);
 } else {
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C11_C12_B;

   set_reg_field_value(
    value,
    tbl_entry->regval[0],
    OUTPUT_CSC_C11_C12_B,
    OUTPUT_CSC_C11_B);

   set_reg_field_value(
    value,
    tbl_entry->regval[1],
    OUTPUT_CSC_C11_C12_B,
    OUTPUT_CSC_C12_B);

   dm_write_reg(ctx, addr, value);
  }
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C13_C14_B;

   set_reg_field_value(
    value,
    tbl_entry->regval[2],
    OUTPUT_CSC_C13_C14_B,
    OUTPUT_CSC_C13_B);

   set_reg_field_value(
    value,
    tbl_entry->regval[3],
    OUTPUT_CSC_C13_C14_B,
    OUTPUT_CSC_C14_B);

   dm_write_reg(ctx, addr, value);
  }
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C21_C22_B;

   set_reg_field_value(
    value,
    tbl_entry->regval[4],
    OUTPUT_CSC_C21_C22_B,
    OUTPUT_CSC_C21_B);

   set_reg_field_value(
    value,
    tbl_entry->regval[5],
    OUTPUT_CSC_C21_C22_B,
    OUTPUT_CSC_C22_B);

   dm_write_reg(ctx, addr, value);
  }
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C23_C24_B;

   set_reg_field_value(
    value,
    tbl_entry->regval[6],
    OUTPUT_CSC_C23_C24_B,
    OUTPUT_CSC_C23_B);

   set_reg_field_value(
    value,
    tbl_entry->regval[7],
    OUTPUT_CSC_C23_C24_B,
    OUTPUT_CSC_C24_B);

   dm_write_reg(ctx, addr, value);
  }
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C31_C32_B;

   set_reg_field_value(
    value,
    tbl_entry->regval[8],
    OUTPUT_CSC_C31_C32_B,
    OUTPUT_CSC_C31_B);

   set_reg_field_value(
    value,
    tbl_entry->regval[9],
    OUTPUT_CSC_C31_C32_B,
    OUTPUT_CSC_C32_B);

   dm_write_reg(ctx, addr, value);
  }
  {
   uint32_t value = 0;
   uint32_t addr = mmOUTPUT_CSC_C33_C34_B;

   set_reg_field_value(
    value,
    tbl_entry->regval[10],
    OUTPUT_CSC_C33_C34_B,
    OUTPUT_CSC_C33_B);

   set_reg_field_value(
    value,
    tbl_entry->regval[11],
    OUTPUT_CSC_C33_C34_B,
    OUTPUT_CSC_C34_B);

   dm_write_reg(ctx, addr, value);
  }
  set_reg_field_value(
   cntl_value,
   5,
   COL_MAN_OUTPUT_CSC_CONTROL,
   OUTPUT_CSC_MODE);
 }

 dm_write_reg(ctx, mmCOL_MAN_OUTPUT_CSC_CONTROL, cntl_value);
}
