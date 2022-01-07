
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_w_ctx {int dummy; } ;
struct pblk_rb {TYPE_1__* entries; } ;
struct TYPE_2__ {struct pblk_w_ctx w_ctx; } ;


 unsigned int pblk_rb_ptr_wrap (struct pblk_rb*,unsigned int,int ) ;

struct pblk_w_ctx *pblk_rb_w_ctx(struct pblk_rb *rb, unsigned int pos)
{
 unsigned int entry = pblk_rb_ptr_wrap(rb, pos, 0);

 return &rb->entries[entry].w_ctx;
}
