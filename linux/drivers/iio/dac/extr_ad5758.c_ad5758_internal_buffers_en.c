
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5758_state {int dummy; } ;


 int AD5758_CAL_MEM_UNREFRESHED_MSK ;
 int AD5758_DAC_CONFIG ;
 int AD5758_DAC_CONFIG_INT_EN_MODE (int) ;
 int AD5758_DAC_CONFIG_INT_EN_MSK ;
 int AD5758_DIGITAL_DIAG_RESULTS ;
 int ad5758_spi_write_mask (struct ad5758_state*,int ,int ,int ) ;
 int ad5758_wait_for_task_complete (struct ad5758_state*,int ,int ) ;

__attribute__((used)) static int ad5758_internal_buffers_en(struct ad5758_state *st, bool enable)
{
 int ret;

 ret = ad5758_spi_write_mask(st, AD5758_DAC_CONFIG,
        AD5758_DAC_CONFIG_INT_EN_MSK,
        AD5758_DAC_CONFIG_INT_EN_MODE(enable));
 if (ret < 0)
  return ret;


 return ad5758_wait_for_task_complete(st, AD5758_DIGITAL_DIAG_RESULTS,
          AD5758_CAL_MEM_UNREFRESHED_MSK);
}
