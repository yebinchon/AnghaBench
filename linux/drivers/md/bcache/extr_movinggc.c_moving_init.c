
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bi_size; } ;
struct bio {int * bi_private; TYPE_1__ bi_iter; int bi_inline_vecs; } ;
struct TYPE_5__ {struct bio bio; } ;
struct moving_io {int cl; TYPE_3__* w; TYPE_2__ bio; } ;
struct TYPE_6__ {int key; } ;


 int DIV_ROUND_UP (int,int ) ;
 int IOPRIO_CLASS_IDLE ;
 int IOPRIO_PRIO_VALUE (int ,int ) ;
 int KEY_SIZE (int *) ;
 int PAGE_SECTORS ;
 int bch_bio_map (struct bio*,int *) ;
 int bio_get (struct bio*) ;
 int bio_init (struct bio*,int ,int ) ;
 int bio_set_prio (struct bio*,int ) ;

__attribute__((used)) static void moving_init(struct moving_io *io)
{
 struct bio *bio = &io->bio.bio;

 bio_init(bio, bio->bi_inline_vecs,
   DIV_ROUND_UP(KEY_SIZE(&io->w->key), PAGE_SECTORS));
 bio_get(bio);
 bio_set_prio(bio, IOPRIO_PRIO_VALUE(IOPRIO_CLASS_IDLE, 0));

 bio->bi_iter.bi_size = KEY_SIZE(&io->w->key) << 9;
 bio->bi_private = &io->cl;
 bch_bio_map(bio, ((void*)0));
}
