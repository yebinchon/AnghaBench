
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_lsm6dsx_hw {int page_lock; int regmap; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static inline int
st_lsm6dsx_write_locked(struct st_lsm6dsx_hw *hw, unsigned int addr,
   unsigned int val)
{
 int err;

 mutex_lock(&hw->page_lock);
 err = regmap_write(hw->regmap, addr, val);
 mutex_unlock(&hw->page_lock);

 return err;
}
