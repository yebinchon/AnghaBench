
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidff_device {int hid; int * reports; } ;


 int PID_REQUIRED_REPORTS ;
 int hid_dbg (int ,char*,int) ;

__attribute__((used)) static int pidff_reports_ok(struct pidff_device *pidff)
{
 int i;

 for (i = 0; i <= PID_REQUIRED_REPORTS; i++) {
  if (!pidff->reports[i]) {
   hid_dbg(pidff->hid, "%d missing\n", i);
   return 0;
  }
 }

 return 1;
}
