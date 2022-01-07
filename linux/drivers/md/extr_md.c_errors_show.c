
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int corrected_errors; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
errors_show(struct md_rdev *rdev, char *page)
{
 return sprintf(page, "%d\n", atomic_read(&rdev->corrected_errors));
}
