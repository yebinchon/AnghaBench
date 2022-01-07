
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st_uvis25_hw {int regmap; } ;


 int IIO_VAL_INT ;
 int msleep (int) ;
 int regmap_read (int ,int ,int*) ;
 int st_uvis25_set_enable (struct st_uvis25_hw*,int) ;

__attribute__((used)) static int st_uvis25_read_oneshot(struct st_uvis25_hw *hw, u8 addr, int *val)
{
 int err;

 err = st_uvis25_set_enable(hw, 1);
 if (err < 0)
  return err;

 msleep(1500);







 err = st_uvis25_set_enable(hw, 0);
 if (err < 0)
  return err;

 err = regmap_read(hw->regmap, addr, val);

 return err < 0 ? err : IIO_VAL_INT;
}
