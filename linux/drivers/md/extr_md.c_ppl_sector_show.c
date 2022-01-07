
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sector; } ;
struct md_rdev {TYPE_1__ ppl; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t
ppl_sector_show(struct md_rdev *rdev, char *page)
{
 return sprintf(page, "%llu\n", (unsigned long long)rdev->ppl.sector);
}
