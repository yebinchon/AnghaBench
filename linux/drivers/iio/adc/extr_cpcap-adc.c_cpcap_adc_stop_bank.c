
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_adc {int reg; } ;


 int CPCAP_REG_ADCC1 ;
 int CPCAP_REG_ADCC1_DEFAULTS ;
 int CPCAP_REG_ADCC2 ;
 int CPCAP_REG_ADCC2_DEFAULTS ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static int cpcap_adc_stop_bank(struct cpcap_adc *ddata)
{
 int error;

 error = regmap_update_bits(ddata->reg, CPCAP_REG_ADCC1,
       0xffff,
       CPCAP_REG_ADCC1_DEFAULTS);
 if (error)
  return error;

 return regmap_update_bits(ddata->reg, CPCAP_REG_ADCC2,
      0xffff,
      CPCAP_REG_ADCC2_DEFAULTS);
}
