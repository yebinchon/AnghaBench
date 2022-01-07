
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29018_chip {int regmap; } ;
struct device {int dummy; } ;


 int ISL29018_CMD1_OPMODE_IR_ONCE ;
 int ISL29018_CMD1_OPMODE_PROX_ONCE ;
 int ISL29018_CMD2_SCHEME_MASK ;
 int ISL29018_CMD2_SCHEME_SHIFT ;
 int ISL29018_REG_ADD_COMMAND2 ;
 int dev_err (struct device*,char*) ;
 int isl29018_read_sensor_input (struct isl29018_chip*,int ) ;
 struct device* regmap_get_device (int ) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int isl29018_read_proximity_ir(struct isl29018_chip *chip, int scheme,
          int *near_ir)
{
 int status;
 int prox_data = -1;
 int ir_data = -1;
 struct device *dev = regmap_get_device(chip->regmap);


 status = regmap_update_bits(chip->regmap, ISL29018_REG_ADD_COMMAND2,
        ISL29018_CMD2_SCHEME_MASK,
        scheme << ISL29018_CMD2_SCHEME_SHIFT);
 if (status) {
  dev_err(dev, "Error in setting operating mode\n");
  return status;
 }

 prox_data = isl29018_read_sensor_input(chip,
            ISL29018_CMD1_OPMODE_PROX_ONCE);
 if (prox_data < 0)
  return prox_data;

 if (scheme == 1) {
  *near_ir = prox_data;
  return 0;
 }

 ir_data = isl29018_read_sensor_input(chip,
          ISL29018_CMD1_OPMODE_IR_ONCE);
 if (ir_data < 0)
  return ir_data;

 if (prox_data >= ir_data)
  *near_ir = prox_data - ir_data;
 else
  *near_ir = 0;

 return 0;
}
