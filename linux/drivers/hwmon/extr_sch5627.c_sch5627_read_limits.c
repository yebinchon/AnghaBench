
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sch5627_data {int* temp_max; int* temp_crit; int* fan_min; int addr; } ;


 int SCH5627_NO_FANS ;
 int SCH5627_NO_TEMPS ;
 int * SCH5627_REG_FAN_MIN ;
 int * SCH5627_REG_TEMP_ABS ;
 int * SCH5627_REG_TEMP_HIGH ;
 int sch56xx_read_virtual_reg (int ,int ) ;
 int sch56xx_read_virtual_reg16 (int ,int ) ;

__attribute__((used)) static int sch5627_read_limits(struct sch5627_data *data)
{
 int i, val;

 for (i = 0; i < SCH5627_NO_TEMPS; i++) {




  val = sch56xx_read_virtual_reg(data->addr,
            SCH5627_REG_TEMP_ABS[i]);
  if (val < 0)
   return val;
  data->temp_max[i] = val;

  val = sch56xx_read_virtual_reg(data->addr,
            SCH5627_REG_TEMP_HIGH[i]);
  if (val < 0)
   return val;
  data->temp_crit[i] = val;
 }
 for (i = 0; i < SCH5627_NO_FANS; i++) {
  val = sch56xx_read_virtual_reg16(data->addr,
       SCH5627_REG_FAN_MIN[i]);
  if (val < 0)
   return val;
  data->fan_min[i] = val;
 }

 return 0;
}
