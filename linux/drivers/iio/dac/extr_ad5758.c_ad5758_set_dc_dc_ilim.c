
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5758_state {int dummy; } ;


 int AD5758_DCDC_CONFIG2 ;
 int AD5758_DCDC_CONFIG2_BUSY_3WI_MSK ;
 int AD5758_DCDC_CONFIG2_ILIMIT_MODE (unsigned int) ;
 int AD5758_DCDC_CONFIG2_ILIMIT_MSK ;
 int ad5758_spi_write_mask (struct ad5758_state*,int ,int ,int ) ;
 int ad5758_wait_for_task_complete (struct ad5758_state*,int ,int ) ;

__attribute__((used)) static int ad5758_set_dc_dc_ilim(struct ad5758_state *st, unsigned int ilim)
{
 int ret;

 ret = ad5758_spi_write_mask(st, AD5758_DCDC_CONFIG2,
        AD5758_DCDC_CONFIG2_ILIMIT_MSK,
        AD5758_DCDC_CONFIG2_ILIMIT_MODE(ilim));
 if (ret < 0)
  return ret;




 return ad5758_wait_for_task_complete(st, AD5758_DCDC_CONFIG2,
          AD5758_DCDC_CONFIG2_BUSY_3WI_MSK);
}
