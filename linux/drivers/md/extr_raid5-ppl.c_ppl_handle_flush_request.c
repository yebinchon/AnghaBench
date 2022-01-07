
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5l_log {int dummy; } ;
struct TYPE_2__ {scalar_t__ bi_size; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;


 int EAGAIN ;
 int REQ_PREFLUSH ;
 int bio_endio (struct bio*) ;

int ppl_handle_flush_request(struct r5l_log *log, struct bio *bio)
{
 if (bio->bi_iter.bi_size == 0) {
  bio_endio(bio);
  return 0;
 }
 bio->bi_opf &= ~REQ_PREFLUSH;
 return -EAGAIN;
}
