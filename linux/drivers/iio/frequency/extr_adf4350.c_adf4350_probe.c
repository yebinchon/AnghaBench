
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {struct adf4350_platform_data* platform_data; scalar_t__ of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_10__ {TYPE_3__* parent; } ;
struct iio_dev {scalar_t__* name; int num_channels; int * channels; int modes; int * info; TYPE_1__ dev; } ;
struct clk {int dummy; } ;
struct adf4350_state {struct clk* reg; int regs_hw; int min_out_freq; scalar_t__ clkin; struct clk* clk; int chspc; struct adf4350_platform_data* pdata; struct spi_device* spi; } ;
struct adf4350_platform_data {scalar_t__* name; scalar_t__ power_up_frequency; int gpio_lock_detect; scalar_t__ clkin; int channel_spacing; } ;
struct TYPE_11__ {scalar_t__* name; int driver_data; } ;


 int ADF4350_MIN_OUT_FREQ ;
 int ADF4351_MIN_OUT_FREQ ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (struct clk*) ;
 int adf4350_chan ;
 int adf4350_info ;
 struct adf4350_platform_data* adf4350_parse_dt (TYPE_3__*) ;
 int adf4350_set_freq (struct adf4350_state*,scalar_t__) ;
 int clk_disable_unprepare (struct clk*) ;
 scalar_t__ clk_get_rate (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 struct adf4350_platform_data default_pdata ;
 int dev_err (TYPE_3__*,char*,int ) ;
 int dev_warn (TYPE_3__*,char*) ;
 struct clk* devm_clk_get (TYPE_3__*,char*) ;
 int devm_gpio_request (TYPE_3__*,int ,scalar_t__*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 struct clk* devm_regulator_get (TYPE_3__*,char*) ;
 int gpio_direction_input (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int iio_device_register (struct iio_dev*) ;
 struct adf4350_state* iio_priv (struct iio_dev*) ;
 int memset (int ,int,int) ;
 int regulator_disable (struct clk*) ;
 int regulator_enable (struct clk*) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adf4350_probe(struct spi_device *spi)
{
 struct adf4350_platform_data *pdata;
 struct iio_dev *indio_dev;
 struct adf4350_state *st;
 struct clk *clk = ((void*)0);
 int ret;

 if (spi->dev.of_node) {
  pdata = adf4350_parse_dt(&spi->dev);
  if (pdata == ((void*)0))
   return -EINVAL;
 } else {
  pdata = spi->dev.platform_data;
 }

 if (!pdata) {
  dev_warn(&spi->dev, "no platform data? using default\n");
  pdata = &default_pdata;
 }

 if (!pdata->clkin) {
  clk = devm_clk_get(&spi->dev, "clkin");
  if (IS_ERR(clk))
   return -EPROBE_DEFER;

  ret = clk_prepare_enable(clk);
  if (ret < 0)
   return ret;
 }

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0)) {
  ret = -ENOMEM;
  goto error_disable_clk;
 }

 st = iio_priv(indio_dev);

 st->reg = devm_regulator_get(&spi->dev, "vcc");
 if (!IS_ERR(st->reg)) {
  ret = regulator_enable(st->reg);
  if (ret)
   goto error_disable_clk;
 }

 spi_set_drvdata(spi, indio_dev);
 st->spi = spi;
 st->pdata = pdata;

 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = (pdata->name[0] != 0) ? pdata->name :
  spi_get_device_id(spi)->name;

 indio_dev->info = &adf4350_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = &adf4350_chan;
 indio_dev->num_channels = 1;

 st->chspc = pdata->channel_spacing;
 if (clk) {
  st->clk = clk;
  st->clkin = clk_get_rate(clk);
 } else {
  st->clkin = pdata->clkin;
 }

 st->min_out_freq = spi_get_device_id(spi)->driver_data == 4351 ?
  ADF4351_MIN_OUT_FREQ : ADF4350_MIN_OUT_FREQ;

 memset(st->regs_hw, 0xFF, sizeof(st->regs_hw));

 if (gpio_is_valid(pdata->gpio_lock_detect)) {
  ret = devm_gpio_request(&spi->dev, pdata->gpio_lock_detect,
     indio_dev->name);
  if (ret) {
   dev_err(&spi->dev, "fail to request lock detect GPIO-%d",
    pdata->gpio_lock_detect);
   goto error_disable_reg;
  }
  gpio_direction_input(pdata->gpio_lock_detect);
 }

 if (pdata->power_up_frequency) {
  ret = adf4350_set_freq(st, pdata->power_up_frequency);
  if (ret)
   goto error_disable_reg;
 }

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_disable_reg;

 return 0;

error_disable_reg:
 if (!IS_ERR(st->reg))
  regulator_disable(st->reg);
error_disable_clk:
 if (clk)
  clk_disable_unprepare(clk);

 return ret;
}
