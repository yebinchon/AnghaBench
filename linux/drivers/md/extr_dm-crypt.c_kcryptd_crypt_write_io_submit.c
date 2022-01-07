
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct TYPE_7__ {int bi_size; } ;
struct TYPE_8__ {TYPE_1__ iter_out; struct bio* bio_out; } ;
struct dm_crypt_io {scalar_t__ sector; int rb_node; TYPE_2__ ctx; int error; struct crypt_config* cc; } ;
struct TYPE_10__ {struct rb_node* rb_node; } ;
struct crypt_config {scalar_t__ start; int write_thread_lock; TYPE_4__ write_tree; int write_thread; int flags; } ;
struct TYPE_9__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_3__ bi_iter; } ;
typedef scalar_t__ sector_t ;
struct TYPE_11__ {scalar_t__ sector; } ;


 int BUG_ON (int ) ;
 int DM_CRYPT_NO_OFFLOAD ;
 scalar_t__ RB_EMPTY_ROOT (TYPE_4__*) ;
 int bio_put (struct bio*) ;
 int crypt_dec_pending (struct dm_crypt_io*) ;
 int crypt_free_buffer_pages (struct crypt_config*,struct bio*) ;
 TYPE_5__* crypt_io_from_node (struct rb_node*) ;
 int generic_make_request (struct bio*) ;
 scalar_t__ likely (int) ;
 int rb_insert_color (int *,TYPE_4__*) ;
 int rb_link_node (int *,struct rb_node*,struct rb_node**) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void kcryptd_crypt_write_io_submit(struct dm_crypt_io *io, int async)
{
 struct bio *clone = io->ctx.bio_out;
 struct crypt_config *cc = io->cc;
 unsigned long flags;
 sector_t sector;
 struct rb_node **rbp, *parent;

 if (unlikely(io->error)) {
  crypt_free_buffer_pages(cc, clone);
  bio_put(clone);
  crypt_dec_pending(io);
  return;
 }


 BUG_ON(io->ctx.iter_out.bi_size);

 clone->bi_iter.bi_sector = cc->start + io->sector;

 if (likely(!async) && test_bit(DM_CRYPT_NO_OFFLOAD, &cc->flags)) {
  generic_make_request(clone);
  return;
 }

 spin_lock_irqsave(&cc->write_thread_lock, flags);
 if (RB_EMPTY_ROOT(&cc->write_tree))
  wake_up_process(cc->write_thread);
 rbp = &cc->write_tree.rb_node;
 parent = ((void*)0);
 sector = io->sector;
 while (*rbp) {
  parent = *rbp;
  if (sector < crypt_io_from_node(parent)->sector)
   rbp = &(*rbp)->rb_left;
  else
   rbp = &(*rbp)->rb_right;
 }
 rb_link_node(&io->rb_node, parent, rbp);
 rb_insert_color(&io->rb_node, &cc->write_tree);
 spin_unlock_irqrestore(&cc->write_thread_lock, flags);
}
