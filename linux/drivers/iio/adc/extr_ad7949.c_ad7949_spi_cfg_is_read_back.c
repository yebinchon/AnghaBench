
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7949_adc_chip {int cfg; } ;


 int AD7949_CFG_READ_BACK ;

__attribute__((used)) static bool ad7949_spi_cfg_is_read_back(struct ad7949_adc_chip *ad7949_adc)
{
 if (!(ad7949_adc->cfg & AD7949_CFG_READ_BACK))
  return 1;

 return 0;
}
