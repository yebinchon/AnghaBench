
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int dummy; } ;
struct bio {int bi_status; struct dm_snapshot* bi_private; } ;


 int BLK_STS_IOERR ;
 int account_end_copy (struct dm_snapshot*) ;
 int bio_endio (struct bio*) ;

__attribute__((used)) static void zero_callback(int read_err, unsigned long write_err, void *context)
{
 struct bio *bio = context;
 struct dm_snapshot *s = bio->bi_private;

 account_end_copy(s);
 bio->bi_status = write_err ? BLK_STS_IOERR : 0;
 bio_endio(bio);
}
