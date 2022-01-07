
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int size; } ;
struct md_rdev {scalar_t__ raid_disk; TYPE_1__ ppl; TYPE_2__* mddev; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {scalar_t__ major_version; int external; scalar_t__ persistent; int flags; scalar_t__ pers; } ;


 size_t EBUSY ;
 size_t EINVAL ;
 int MD_HAS_PPL ;
 unsigned int U16_MAX ;
 scalar_t__ kstrtouint (char const*,int,unsigned int*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static ssize_t
ppl_size_store(struct md_rdev *rdev, const char *buf, size_t len)
{
 unsigned int size;

 if (kstrtouint(buf, 10, &size) < 0)
  return -EINVAL;

 if (rdev->mddev->pers && test_bit(MD_HAS_PPL, &rdev->mddev->flags) &&
     rdev->raid_disk >= 0)
  return -EBUSY;

 if (rdev->mddev->persistent) {
  if (rdev->mddev->major_version == 0)
   return -EINVAL;
  if (size > U16_MAX)
   return -EINVAL;
 } else if (!rdev->mddev->external) {
  return -EBUSY;
 }
 rdev->ppl.size = size;
 return len;
}
