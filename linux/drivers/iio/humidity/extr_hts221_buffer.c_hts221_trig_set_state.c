
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct hts221_hw {int regmap; } ;


 int FIELD_PREP (int ,int) ;
 int HTS221_REG_DRDY_EN_ADDR ;
 int HTS221_REG_DRDY_EN_MASK ;
 struct hts221_hw* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int hts221_trig_set_state(struct iio_trigger *trig, bool state)
{
 struct iio_dev *iio_dev = iio_trigger_get_drvdata(trig);
 struct hts221_hw *hw = iio_priv(iio_dev);

 return regmap_update_bits(hw->regmap, HTS221_REG_DRDY_EN_ADDR,
      HTS221_REG_DRDY_EN_MASK,
      FIELD_PREP(HTS221_REG_DRDY_EN_MASK, state));
}
