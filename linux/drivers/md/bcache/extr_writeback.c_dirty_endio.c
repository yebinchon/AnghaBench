
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keybuf_key {int key; struct dirty_io* private; } ;
struct dirty_io {int cl; int dc; } ;
struct bio {scalar_t__ bi_status; struct keybuf_key* bi_private; } ;


 int SET_KEY_DIRTY (int *,int) ;
 int bch_count_backing_io_errors (int ,struct bio*) ;
 int closure_put (int *) ;

__attribute__((used)) static void dirty_endio(struct bio *bio)
{
 struct keybuf_key *w = bio->bi_private;
 struct dirty_io *io = w->private;

 if (bio->bi_status) {
  SET_KEY_DIRTY(&w->key, 0);
  bch_count_backing_io_errors(io->dc, bio);
 }

 closure_put(&io->cl);
}
