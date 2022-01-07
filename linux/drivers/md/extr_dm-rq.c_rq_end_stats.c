
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mapped_device {int stats; } ;
struct dm_rq_target_io {int stats_aux; scalar_t__ duration_jiffies; int n_sectors; } ;


 int blk_rq_pos (struct request*) ;
 int dm_stats_account_io (int *,int ,int ,int ,int,scalar_t__,int *) ;
 int dm_stats_used (int *) ;
 scalar_t__ jiffies ;
 int rq_data_dir (struct request*) ;
 struct dm_rq_target_io* tio_from_request (struct request*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void rq_end_stats(struct mapped_device *md, struct request *orig)
{
 if (unlikely(dm_stats_used(&md->stats))) {
  struct dm_rq_target_io *tio = tio_from_request(orig);
  tio->duration_jiffies = jiffies - tio->duration_jiffies;
  dm_stats_account_io(&md->stats, rq_data_dir(orig),
        blk_rq_pos(orig), tio->n_sectors, 1,
        tio->duration_jiffies, &tio->stats_aux);
 }
}
