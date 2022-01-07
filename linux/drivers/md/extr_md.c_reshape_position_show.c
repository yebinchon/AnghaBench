
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ reshape_position; } ;
typedef int ssize_t ;


 scalar_t__ MaxSector ;
 int sprintf (char*,char*,unsigned long long) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static ssize_t
reshape_position_show(struct mddev *mddev, char *page)
{
 if (mddev->reshape_position != MaxSector)
  return sprintf(page, "%llu\n",
          (unsigned long long)mddev->reshape_position);
 strcpy(page, "none\n");
 return 5;
}
