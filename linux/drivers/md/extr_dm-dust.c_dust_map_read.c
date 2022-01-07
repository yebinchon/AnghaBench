
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dust_device {int sect_per_block_shift; int dust_lock; } ;
typedef int sector_t ;


 int DM_MAPIO_REMAPPED ;
 int __dust_map_read (struct dust_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dust_map_read(struct dust_device *dd, sector_t thisblock,
    bool fail_read_on_bb)
{
 unsigned long flags;
 int ret = DM_MAPIO_REMAPPED;

 if (fail_read_on_bb) {
  thisblock >>= dd->sect_per_block_shift;
  spin_lock_irqsave(&dd->dust_lock, flags);
  ret = __dust_map_read(dd, thisblock);
  spin_unlock_irqrestore(&dd->dust_lock, flags);
 }

 return ret;
}
