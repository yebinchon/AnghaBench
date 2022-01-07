
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keybuf_key {int dummy; } ;
struct keybuf {int lock; } ;


 int __bch_keybuf_del (struct keybuf*,struct keybuf_key*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void bch_keybuf_del(struct keybuf *buf, struct keybuf_key *w)
{
 spin_lock(&buf->lock);
 __bch_keybuf_del(buf, w);
 spin_unlock(&buf->lock);
}
