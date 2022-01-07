
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gp2ap020a00f_data {int cur_opmode; int regmap; } ;
typedef enum gp2ap020a00f_opmode { ____Placeholder_gp2ap020a00f_opmode } gp2ap020a00f_opmode ;
struct TYPE_2__ {unsigned int op_reg; unsigned int als_reg; unsigned int ps_reg; unsigned int led_reg; } ;


 int GP2AP020A00F_ALS_REG ;
 unsigned int GP2AP020A00F_INTTYPE_MASK ;
 int GP2AP020A00F_LED_REG ;
 unsigned int GP2AP020A00F_OP2_MASK ;
 unsigned int GP2AP020A00F_OP3_MASK ;
 unsigned int GP2AP020A00F_OP3_SHUTDOWN ;
 int GP2AP020A00F_OPMODE_SHUTDOWN ;
 unsigned int GP2AP020A00F_OP_MASK ;
 int GP2AP020A00F_OP_REG ;
 unsigned int GP2AP020A00F_PIN_MASK ;
 unsigned int GP2AP020A00F_PRST_MASK ;
 int GP2AP020A00F_PS_REG ;
 unsigned int GP2AP020A00F_TYPE_MASK ;
 TYPE_1__* opmode_regs_settings ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int gp2ap020a00f_set_operation_mode(struct gp2ap020a00f_data *data,
     enum gp2ap020a00f_opmode op)
{
 unsigned int op_reg_val;
 int err;

 if (op != GP2AP020A00F_OPMODE_SHUTDOWN) {
  err = regmap_read(data->regmap, GP2AP020A00F_OP_REG,
     &op_reg_val);
  if (err < 0)
   return err;




  if ((opmode_regs_settings[op].op_reg & GP2AP020A00F_OP_MASK) !=
      (op_reg_val & GP2AP020A00F_OP_MASK)) {

   err = regmap_update_bits(data->regmap,
    GP2AP020A00F_OP_REG, GP2AP020A00F_OP3_MASK,
    GP2AP020A00F_OP3_SHUTDOWN);
   if (err < 0)
    return err;
  }

  err = regmap_update_bits(data->regmap, GP2AP020A00F_ALS_REG,
   GP2AP020A00F_PRST_MASK, opmode_regs_settings[op]
        .als_reg);
  if (err < 0)
   return err;

  err = regmap_update_bits(data->regmap, GP2AP020A00F_PS_REG,
   GP2AP020A00F_INTTYPE_MASK, opmode_regs_settings[op]
        .ps_reg);
  if (err < 0)
   return err;

  err = regmap_update_bits(data->regmap, GP2AP020A00F_LED_REG,
   GP2AP020A00F_PIN_MASK, opmode_regs_settings[op]
        .led_reg);
  if (err < 0)
   return err;
 }


 err = regmap_update_bits(data->regmap,
     GP2AP020A00F_OP_REG,
     GP2AP020A00F_OP_MASK | GP2AP020A00F_OP2_MASK |
     GP2AP020A00F_OP3_MASK | GP2AP020A00F_TYPE_MASK,
     opmode_regs_settings[op].op_reg);
 if (err < 0)
  return err;

 data->cur_opmode = op;

 return 0;
}
