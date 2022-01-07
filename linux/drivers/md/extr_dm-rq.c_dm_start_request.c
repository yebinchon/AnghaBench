
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mapped_device {int stats; } ;
struct dm_rq_target_io {int stats_aux; int n_sectors; int duration_jiffies; } ;


 int blk_mq_start_request (struct request*) ;
 int blk_rq_pos (struct request*) ;
 int blk_rq_sectors (struct request*) ;
 int dm_get (struct mapped_device*) ;
 int dm_stats_account_io (int *,int ,int ,int ,int,int ,int *) ;
 int dm_stats_used (int *) ;
 int jiffies ;
 int rq_data_dir (struct request*) ;
 struct dm_rq_target_io* tio_from_request (struct request*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void dm_start_request(struct mapped_device *md, struct request *orig)
{
 blk_mq_start_request(orig);

 if (unlikely(dm_stats_used(&md->stats))) {
  struct dm_rq_target_io *tio = tio_from_request(orig);
  tio->duration_jiffies = jiffies;
  tio->n_sectors = blk_rq_sectors(orig);
  dm_stats_account_io(&md->stats, rq_data_dir(orig),
        blk_rq_pos(orig), tio->n_sectors, 0, 0,
        &tio->stats_aux);
 }
 dm_get(md);
}
