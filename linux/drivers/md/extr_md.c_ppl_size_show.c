
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct md_rdev {TYPE_1__ ppl; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
ppl_size_show(struct md_rdev *rdev, char *page)
{
 return sprintf(page, "%u\n", rdev->ppl.size);
}
