
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st_lsm6dsx_hw {int page_lock; int regmap; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int st_lsm6dsx_set_page (struct st_lsm6dsx_hw*,int) ;

__attribute__((used)) static int st_lsm6dsx_shub_read_reg(struct st_lsm6dsx_hw *hw, u8 addr,
        u8 *data, int len)
{
 int err;

 mutex_lock(&hw->page_lock);

 err = st_lsm6dsx_set_page(hw, 1);
 if (err < 0)
  goto out;

 err = regmap_bulk_read(hw->regmap, addr, data, len);

 st_lsm6dsx_set_page(hw, 0);
out:
 mutex_unlock(&hw->page_lock);

 return err;
}
