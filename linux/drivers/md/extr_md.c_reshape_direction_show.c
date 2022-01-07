
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ reshape_backwards; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t
reshape_direction_show(struct mddev *mddev, char *page)
{
 return sprintf(page, "%s\n",
         mddev->reshape_backwards ? "backwards" : "forwards");
}
