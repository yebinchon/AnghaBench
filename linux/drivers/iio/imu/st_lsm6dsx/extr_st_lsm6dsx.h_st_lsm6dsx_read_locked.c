
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_lsm6dsx_hw {int page_lock; int regmap; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,unsigned int,void*,unsigned int) ;

__attribute__((used)) static inline int
st_lsm6dsx_read_locked(struct st_lsm6dsx_hw *hw, unsigned int addr,
         void *val, unsigned int len)
{
 int err;

 mutex_lock(&hw->page_lock);
 err = regmap_bulk_read(hw->regmap, addr, val, len);
 mutex_unlock(&hw->page_lock);

 return err;
}
