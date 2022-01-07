
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ reshape_position; int ro; } ;
typedef enum sync_state { ____Placeholder_sync_state } sync_state ;


 int MD_RECOVERY_CHECK ;
 int MD_RECOVERY_DONE ;
 int MD_RECOVERY_FROZEN ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RECOVER ;
 int MD_RECOVERY_REQUESTED ;
 int MD_RECOVERY_RESHAPE ;
 int MD_RECOVERY_RUNNING ;
 int MD_RECOVERY_SYNC ;
 scalar_t__ MaxSector ;
 int st_check ;
 int st_frozen ;
 int st_idle ;
 int st_recover ;
 int st_repair ;
 int st_reshape ;
 int st_resync ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static enum sync_state decipher_sync_action(struct mddev *mddev, unsigned long recovery)
{
 if (test_bit(MD_RECOVERY_FROZEN, &recovery))
  return st_frozen;


 if (!test_bit(MD_RECOVERY_DONE, &recovery) &&
     (test_bit(MD_RECOVERY_RUNNING, &recovery) ||
      (!mddev->ro && test_bit(MD_RECOVERY_NEEDED, &recovery)))) {
  if (test_bit(MD_RECOVERY_RESHAPE, &recovery))
   return st_reshape;

  if (test_bit(MD_RECOVERY_SYNC, &recovery)) {
   if (!test_bit(MD_RECOVERY_REQUESTED, &recovery))
    return st_resync;
   if (test_bit(MD_RECOVERY_CHECK, &recovery))
    return st_check;
   return st_repair;
  }

  if (test_bit(MD_RECOVERY_RECOVER, &recovery))
   return st_recover;

  if (mddev->reshape_position != MaxSector)
   return st_reshape;
 }

 return st_idle;
}
