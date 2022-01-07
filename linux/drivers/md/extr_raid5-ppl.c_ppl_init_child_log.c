
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct request_queue {int queue_flags; } ;
struct ppl_log {int use_multippl; int entry_space; int wb_cache_on; int next_io_sector; TYPE_4__* rdev; TYPE_2__* ppl_conf; } ;
struct TYPE_10__ {int size; int sector; } ;
struct md_rdev {int bdev; TYPE_5__ ppl; } ;
struct TYPE_8__ {int size; } ;
struct TYPE_9__ {TYPE_3__ ppl; } ;
struct TYPE_7__ {TYPE_1__* mddev; } ;
struct TYPE_6__ {int flags; } ;


 int MD_HAS_MULTIPLE_PPLS ;
 int PPL_HEADER_SIZE ;
 int PPL_SPACE_SIZE ;
 int QUEUE_FLAG_WC ;
 struct request_queue* bdev_get_queue (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ppl_init_child_log(struct ppl_log *log, struct md_rdev *rdev)
{
 struct request_queue *q;

 if ((rdev->ppl.size << 9) >= (PPL_SPACE_SIZE +
          PPL_HEADER_SIZE) * 2) {
  log->use_multippl = 1;
  set_bit(MD_HAS_MULTIPLE_PPLS,
   &log->ppl_conf->mddev->flags);
  log->entry_space = PPL_SPACE_SIZE;
 } else {
  log->use_multippl = 0;
  log->entry_space = (log->rdev->ppl.size << 9) -
       PPL_HEADER_SIZE;
 }
 log->next_io_sector = rdev->ppl.sector;

 q = bdev_get_queue(rdev->bdev);
 if (test_bit(QUEUE_FLAG_WC, &q->queue_flags))
  log->wb_cache_on = 1;
}
