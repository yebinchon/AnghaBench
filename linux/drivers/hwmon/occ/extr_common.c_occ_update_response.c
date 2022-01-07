
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct occ {int last_error; int lock; scalar_t__ last_update; } ;


 scalar_t__ OCC_UPDATE_FREQUENCY ;
 scalar_t__ jiffies ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int occ_poll (struct occ*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

int occ_update_response(struct occ *occ)
{
 int rc = mutex_lock_interruptible(&occ->lock);

 if (rc)
  return rc;


 if (time_after(jiffies, occ->last_update + OCC_UPDATE_FREQUENCY)) {
  rc = occ_poll(occ);
  occ->last_update = jiffies;
 } else {
  rc = occ->last_error;
 }

 mutex_unlock(&occ->lock);
 return rc;
}
