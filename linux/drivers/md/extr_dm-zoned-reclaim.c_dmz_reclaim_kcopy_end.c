
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {int flags; int kc_err; } ;


 int DMZ_RECLAIM_KCOPY ;
 int EIO ;
 int clear_bit_unlock (int ,int *) ;
 int smp_mb__after_atomic () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void dmz_reclaim_kcopy_end(int read_err, unsigned long write_err,
      void *context)
{
 struct dmz_reclaim *zrc = context;

 if (read_err || write_err)
  zrc->kc_err = -EIO;
 else
  zrc->kc_err = 0;

 clear_bit_unlock(DMZ_RECLAIM_KCOPY, &zrc->flags);
 smp_mb__after_atomic();
 wake_up_bit(&zrc->flags, DMZ_RECLAIM_KCOPY);
}
