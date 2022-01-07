
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct keybuf_key {int key; struct dirty_io* private; } ;
struct dirty_io {TYPE_2__* dc; } ;
struct bio {int bi_status; struct keybuf_key* bi_private; } ;
struct TYPE_3__ {int c; } ;
struct TYPE_4__ {TYPE_1__ disk; } ;


 int PTR_CACHE (int ,int *,int ) ;
 int bch_count_io_errors (int ,int ,int,char*) ;
 int dirty_endio (struct bio*) ;

__attribute__((used)) static void read_dirty_endio(struct bio *bio)
{
 struct keybuf_key *w = bio->bi_private;
 struct dirty_io *io = w->private;


 bch_count_io_errors(PTR_CACHE(io->dc->disk.c, &w->key, 0),
       bio->bi_status, 1,
       "reading dirty data from cache");

 dirty_endio(bio);
}
