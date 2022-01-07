
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_dev {int sb; int has_dirty; } ;


 scalar_t__ BDEV_STATE (int *) ;
 scalar_t__ BDEV_STATE_DIRTY ;
 int SET_BDEV_STATE (int *,scalar_t__) ;
 int atomic_read (int *) ;
 int atomic_xchg (int *,int) ;
 int bch_write_bdev_super (struct cached_dev*,int *) ;
 int bch_writeback_queue (struct cached_dev*) ;

__attribute__((used)) static inline void bch_writeback_add(struct cached_dev *dc)
{
 if (!atomic_read(&dc->has_dirty) &&
     !atomic_xchg(&dc->has_dirty, 1)) {
  if (BDEV_STATE(&dc->sb) != BDEV_STATE_DIRTY) {
   SET_BDEV_STATE(&dc->sb, BDEV_STATE_DIRTY);

   bch_write_bdev_super(dc, ((void*)0));
  }

  bch_writeback_queue(dc);
 }
}
