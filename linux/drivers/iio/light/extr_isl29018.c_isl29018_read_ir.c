
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29018_chip {int dummy; } ;


 int ISL29018_CMD1_OPMODE_IR_ONCE ;
 int isl29018_read_sensor_input (struct isl29018_chip*,int ) ;

__attribute__((used)) static int isl29018_read_ir(struct isl29018_chip *chip, int *ir)
{
 int ir_data;

 ir_data = isl29018_read_sensor_input(chip,
          ISL29018_CMD1_OPMODE_IR_ONCE);
 if (ir_data < 0)
  return ir_data;

 *ir = ir_data;

 return 0;
}
