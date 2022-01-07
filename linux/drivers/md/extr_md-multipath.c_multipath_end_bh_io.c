
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multipath_bh {TYPE_1__* mddev; struct bio* master_bio; } ;
struct mpconf {int pool; } ;
struct bio {int bi_status; } ;
typedef int blk_status_t ;
struct TYPE_2__ {struct mpconf* private; } ;


 int bio_endio (struct bio*) ;
 int mempool_free (struct multipath_bh*,int *) ;

__attribute__((used)) static void multipath_end_bh_io(struct multipath_bh *mp_bh, blk_status_t status)
{
 struct bio *bio = mp_bh->master_bio;
 struct mpconf *conf = mp_bh->mddev->private;

 bio->bi_status = status;
 bio_endio(bio);
 mempool_free(mp_bh, &conf->pool);
}
