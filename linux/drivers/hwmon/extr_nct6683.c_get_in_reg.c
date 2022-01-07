
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct6683_data {int* in_index; int customer_id; } ;


 int EINVAL ;
 int NCT6683_CUSTOMER_ID_INTEL ;
 int NCT6683_REG_MON (int) ;
 int NCT6683_REG_MON_HIGH (int) ;
 int NCT6683_REG_MON_LOW (int) ;

__attribute__((used)) static int get_in_reg(struct nct6683_data *data, int nr, int index)
{
 int ch = data->in_index[index];
 int reg = -EINVAL;

 switch (nr) {
 case 0:
  reg = NCT6683_REG_MON(ch);
  break;
 case 1:
  if (data->customer_id != NCT6683_CUSTOMER_ID_INTEL)
   reg = NCT6683_REG_MON_LOW(ch);
  break;
 case 2:
  if (data->customer_id != NCT6683_CUSTOMER_ID_INTEL)
   reg = NCT6683_REG_MON_HIGH(ch);
  break;
 default:
  break;
 }
 return reg;
}
