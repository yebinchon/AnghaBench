
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {unsigned long recovery; scalar_t__ reshape_position; int ro; } ;
typedef int ssize_t ;


 int MD_RECOVERY_CHECK ;
 int MD_RECOVERY_FROZEN ;
 int MD_RECOVERY_NEEDED ;
 int MD_RECOVERY_RECOVER ;
 int MD_RECOVERY_REQUESTED ;
 int MD_RECOVERY_RESHAPE ;
 int MD_RECOVERY_RUNNING ;
 int MD_RECOVERY_SYNC ;
 scalar_t__ MaxSector ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static ssize_t
action_show(struct mddev *mddev, char *page)
{
 char *type = "idle";
 unsigned long recovery = mddev->recovery;
 if (test_bit(MD_RECOVERY_FROZEN, &recovery))
  type = "frozen";
 else if (test_bit(MD_RECOVERY_RUNNING, &recovery) ||
     (!mddev->ro && test_bit(MD_RECOVERY_NEEDED, &recovery))) {
  if (test_bit(MD_RECOVERY_RESHAPE, &recovery))
   type = "reshape";
  else if (test_bit(MD_RECOVERY_SYNC, &recovery)) {
   if (!test_bit(MD_RECOVERY_REQUESTED, &recovery))
    type = "resync";
   else if (test_bit(MD_RECOVERY_CHECK, &recovery))
    type = "check";
   else
    type = "repair";
  } else if (test_bit(MD_RECOVERY_RECOVER, &recovery))
   type = "recover";
  else if (mddev->reshape_position != MaxSector)
   type = "reshape";
 }
 return sprintf(page, "%s\n", type);
}
