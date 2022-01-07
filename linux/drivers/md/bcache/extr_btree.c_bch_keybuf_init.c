
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keybuf {int freelist; int lock; int keys; int last_scanned; } ;


 int MAX_KEY ;
 int RB_ROOT ;
 int array_allocator_init (int *) ;
 int spin_lock_init (int *) ;

void bch_keybuf_init(struct keybuf *buf)
{
 buf->last_scanned = MAX_KEY;
 buf->keys = RB_ROOT;

 spin_lock_init(&buf->lock);
 array_allocator_init(&buf->freelist);
}
