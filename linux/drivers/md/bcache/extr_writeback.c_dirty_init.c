
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct keybuf_key {int key; struct dirty_io* private; } ;
struct TYPE_4__ {int bi_size; } ;
struct bio {struct keybuf_key* bi_private; TYPE_2__ bi_iter; int bi_inline_vecs; } ;
struct dirty_io {TYPE_1__* dc; struct bio bio; } ;
struct TYPE_3__ {int writeback_percent; } ;


 int DIV_ROUND_UP (int,int ) ;
 int IOPRIO_CLASS_IDLE ;
 int IOPRIO_PRIO_VALUE (int ,int ) ;
 int KEY_SIZE (int *) ;
 int PAGE_SECTORS ;
 int bch_bio_map (struct bio*,int *) ;
 int bio_init (struct bio*,int ,int ) ;
 int bio_set_prio (struct bio*,int ) ;

__attribute__((used)) static void dirty_init(struct keybuf_key *w)
{
 struct dirty_io *io = w->private;
 struct bio *bio = &io->bio;

 bio_init(bio, bio->bi_inline_vecs,
   DIV_ROUND_UP(KEY_SIZE(&w->key), PAGE_SECTORS));
 if (!io->dc->writeback_percent)
  bio_set_prio(bio, IOPRIO_PRIO_VALUE(IOPRIO_CLASS_IDLE, 0));

 bio->bi_iter.bi_size = KEY_SIZE(&w->key) << 9;
 bio->bi_private = w;
 bch_bio_map(bio, ((void*)0));
}
