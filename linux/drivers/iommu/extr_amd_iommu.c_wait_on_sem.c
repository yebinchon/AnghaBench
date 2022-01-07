
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int EIO ;
 int LOOP_TIMEOUT ;
 int pr_alert (char*) ;
 int udelay (int) ;

__attribute__((used)) static int wait_on_sem(volatile u64 *sem)
{
 int i = 0;

 while (*sem == 0 && i < LOOP_TIMEOUT) {
  udelay(1);
  i += 1;
 }

 if (i == LOOP_TIMEOUT) {
  pr_alert("Completion-Wait loop timed out\n");
  return -EIO;
 }

 return 0;
}
