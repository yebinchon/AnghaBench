
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ recovery_cp; } ;
typedef int ssize_t ;


 scalar_t__ MaxSector ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
resync_start_show(struct mddev *mddev, char *page)
{
 if (mddev->recovery_cp == MaxSector)
  return sprintf(page, "none\n");
 return sprintf(page, "%llu\n", (unsigned long long)mddev->recovery_cp);
}
