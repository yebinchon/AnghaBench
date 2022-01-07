
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct6683_data {int* temp_index; int customer_id; } ;


 int EINVAL ;


 int NCT6683_REG_INTEL_TEMP_CRIT (int) ;
 int NCT6683_REG_INTEL_TEMP_MAX (int) ;
 int NCT6683_REG_MON_HIGH (int) ;
 int NCT6683_REG_MON_LOW (int) ;
 int NCT6683_REG_TEMP_HYST (int) ;
 int NCT6683_REG_TEMP_MAX (int) ;

__attribute__((used)) static int get_temp_reg(struct nct6683_data *data, int nr, int index)
{
 int ch = data->temp_index[index];
 int reg = -EINVAL;

 switch (data->customer_id) {
 case 129:
  switch (nr) {
  default:
  case 1:
   reg = NCT6683_REG_INTEL_TEMP_MAX(ch);
   break;
  case 3:
   reg = NCT6683_REG_INTEL_TEMP_CRIT(ch);
   break;
  }
  break;
 case 128:
 default:
  switch (nr) {
  default:
  case 0:
   reg = NCT6683_REG_MON_LOW(ch);
   break;
  case 1:
   reg = NCT6683_REG_TEMP_MAX(ch);
   break;
  case 2:
   reg = NCT6683_REG_TEMP_HYST(ch);
   break;
  case 3:
   reg = NCT6683_REG_MON_HIGH(ch);
   break;
  }
  break;
 }
 return reg;
}
