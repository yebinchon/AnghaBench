
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_adc {int reg; } ;


 int regmap_read (int ,int,int*) ;

__attribute__((used)) static int cpcap_adc_read_st_die_temp(struct cpcap_adc *ddata,
          int addr, int *val)
{
 int error;

 error = regmap_read(ddata->reg, addr, val);
 if (error)
  return error;

 *val -= 282;
 *val *= 114;
 *val += 25000;

 return 0;
}
