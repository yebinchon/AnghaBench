
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int reg; } ;
struct ad5758_state {scalar_t__ slew_time; TYPE_2__ out_range; int dc_dc_mode; int dc_dc_ilim; int gpio_reset; TYPE_1__* spi; } ;
struct TYPE_3__ {int dev; } ;


 int AD5758_DAC_CONFIG ;
 int AD5758_DAC_CONFIG_OUT_EN_MODE (int) ;
 int AD5758_DAC_CONFIG_OUT_EN_MSK ;
 int AD5758_DIGITAL_DIAG_RESULTS ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ad5758_calib_mem_refresh (struct ad5758_state*) ;
 int ad5758_crc_disable (struct ad5758_state*) ;
 int ad5758_internal_buffers_en (struct ad5758_state*,int) ;
 int ad5758_reset (struct ad5758_state*) ;
 int ad5758_set_dc_dc_conv_mode (struct ad5758_state*,int ) ;
 int ad5758_set_dc_dc_ilim (struct ad5758_state*,int ) ;
 int ad5758_set_out_range (struct ad5758_state*,int ) ;
 int ad5758_slew_rate_config (struct ad5758_state*) ;
 int ad5758_spi_reg_read (struct ad5758_state*,int ) ;
 int ad5758_spi_reg_write (struct ad5758_state*,int ,int) ;
 int ad5758_spi_write_mask (struct ad5758_state*,int ,int ,int ) ;
 int devm_gpiod_get_optional (int *,char*,int ) ;

__attribute__((used)) static int ad5758_init(struct ad5758_state *st)
{
 int regval, ret;

 st->gpio_reset = devm_gpiod_get_optional(&st->spi->dev, "reset",
       GPIOD_OUT_HIGH);
 if (IS_ERR(st->gpio_reset))
  return PTR_ERR(st->gpio_reset);


 ret = ad5758_crc_disable(st);
 if (ret < 0)
  return ret;


 ret = ad5758_reset(st);
 if (ret < 0)
  return ret;


 ret = ad5758_crc_disable(st);
 if (ret < 0)
  return ret;


 ret = ad5758_calib_mem_refresh(st);
 if (ret < 0)
  return ret;

 regval = ad5758_spi_reg_read(st, AD5758_DIGITAL_DIAG_RESULTS);
 if (regval < 0)
  return regval;


 ret = ad5758_spi_reg_write(st, AD5758_DIGITAL_DIAG_RESULTS, regval);
 if (ret < 0)
  return ret;


 ret = ad5758_set_dc_dc_ilim(st, st->dc_dc_ilim);
 if (ret < 0)
  return ret;


 ret = ad5758_set_dc_dc_conv_mode(st, st->dc_dc_mode);
 if (ret < 0)
  return ret;


 ret = ad5758_set_out_range(st, st->out_range.reg);
 if (ret < 0)
  return ret;


 if (st->slew_time) {
  ret = ad5758_slew_rate_config(st);
  if (ret < 0)
   return ret;
 }


 ret = ad5758_internal_buffers_en(st, 1);
 if (ret < 0)
  return ret;


 return ad5758_spi_write_mask(st, AD5758_DAC_CONFIG,
         AD5758_DAC_CONFIG_OUT_EN_MSK,
         AD5758_DAC_CONFIG_OUT_EN_MODE(1));
}
