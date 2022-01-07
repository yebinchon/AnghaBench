
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_mblock {int state; } ;
struct bio {scalar_t__ bi_status; struct dmz_mblock* bi_private; } ;


 int DMZ_META_ERROR ;
 int DMZ_META_READING ;
 int DMZ_META_WRITING ;
 scalar_t__ REQ_OP_WRITE ;
 scalar_t__ bio_op (struct bio*) ;
 int bio_put (struct bio*) ;
 int clear_bit_unlock (int,int *) ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int wake_up_bit (int *,int) ;

__attribute__((used)) static void dmz_mblock_bio_end_io(struct bio *bio)
{
 struct dmz_mblock *mblk = bio->bi_private;
 int flag;

 if (bio->bi_status)
  set_bit(DMZ_META_ERROR, &mblk->state);

 if (bio_op(bio) == REQ_OP_WRITE)
  flag = DMZ_META_WRITING;
 else
  flag = DMZ_META_READING;

 clear_bit_unlock(flag, &mblk->state);
 smp_mb__after_atomic();
 wake_up_bit(&mblk->state, flag);

 bio_put(bio);
}
