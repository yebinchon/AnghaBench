
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pblk_w_ctx {int ppa; int lba; } ;
struct TYPE_2__ {int ppa; int lba; } ;
struct pblk_rb_entry {TYPE_1__ w_ctx; int data; } ;
struct pblk_rb {int seg_size; } ;


 int memcpy (int ,void*,int ) ;

__attribute__((used)) static void __pblk_rb_write_entry(struct pblk_rb *rb, void *data,
      struct pblk_w_ctx w_ctx,
      struct pblk_rb_entry *entry)
{
 memcpy(entry->data, data, rb->seg_size);

 entry->w_ctx.lba = w_ctx.lba;
 entry->w_ctx.ppa = w_ctx.ppa;
}
