
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keybuf_key {int node; } ;
struct keybuf {int freelist; int keys; } ;


 int array_free (int *,struct keybuf_key*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void __bch_keybuf_del(struct keybuf *buf, struct keybuf_key *w)
{
 rb_erase(&w->node, &buf->keys);
 array_free(&buf->freelist, w);
}
