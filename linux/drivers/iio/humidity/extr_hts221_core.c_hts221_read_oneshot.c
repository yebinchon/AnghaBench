
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hts221_hw {int regmap; } ;
typedef int s16 ;
typedef int data ;
typedef int __le16 ;


 int IIO_VAL_INT ;
 int hts221_set_enable (struct hts221_hw*,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int msleep (int) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int hts221_read_oneshot(struct hts221_hw *hw, u8 addr, int *val)
{
 __le16 data;
 int err;

 err = hts221_set_enable(hw, 1);
 if (err < 0)
  return err;

 msleep(50);

 err = regmap_bulk_read(hw->regmap, addr, &data, sizeof(data));
 if (err < 0)
  return err;

 hts221_set_enable(hw, 0);

 *val = (s16)le16_to_cpu(data);

 return IIO_VAL_INT;
}
