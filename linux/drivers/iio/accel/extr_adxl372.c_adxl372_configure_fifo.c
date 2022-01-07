
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl372_state {unsigned int watermark; unsigned int fifo_set_size; int regmap; int fifo_mode; int fifo_format; } ;


 int ADXL372_FIFO_CTL ;
 unsigned int ADXL372_FIFO_CTL_FORMAT_MODE (int ) ;
 unsigned int ADXL372_FIFO_CTL_MODE_MODE (int ) ;
 unsigned int ADXL372_FIFO_CTL_SAMPLES_MODE (unsigned int) ;
 int ADXL372_FIFO_SAMPLES ;
 int ADXL372_FULL_BW_MEASUREMENT ;
 int ADXL372_STANDBY ;
 int adxl372_set_op_mode (struct adxl372_state*,int ) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int adxl372_configure_fifo(struct adxl372_state *st)
{
 unsigned int fifo_samples, fifo_ctl;
 int ret;


 ret = adxl372_set_op_mode(st, ADXL372_STANDBY);
 if (ret < 0)
  return ret;





 fifo_samples = (st->watermark * st->fifo_set_size);
 fifo_ctl = ADXL372_FIFO_CTL_FORMAT_MODE(st->fifo_format) |
     ADXL372_FIFO_CTL_MODE_MODE(st->fifo_mode) |
     ADXL372_FIFO_CTL_SAMPLES_MODE(fifo_samples);

 ret = regmap_write(st->regmap,
      ADXL372_FIFO_SAMPLES, fifo_samples & 0xFF);
 if (ret < 0)
  return ret;

 ret = regmap_write(st->regmap, ADXL372_FIFO_CTL, fifo_ctl);
 if (ret < 0)
  return ret;

 return adxl372_set_op_mode(st, ADXL372_FULL_BW_MEASUREMENT);
}
