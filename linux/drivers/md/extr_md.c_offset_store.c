
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md_rdev {scalar_t__ raid_disk; unsigned long long data_offset; unsigned long long new_data_offset; TYPE_1__* mddev; scalar_t__ sectors; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {scalar_t__ external; scalar_t__ pers; } ;


 size_t EBUSY ;
 size_t EINVAL ;
 scalar_t__ kstrtoull (char const*,int,unsigned long long*) ;

__attribute__((used)) static ssize_t
offset_store(struct md_rdev *rdev, const char *buf, size_t len)
{
 unsigned long long offset;
 if (kstrtoull(buf, 10, &offset) < 0)
  return -EINVAL;
 if (rdev->mddev->pers && rdev->raid_disk >= 0)
  return -EBUSY;
 if (rdev->sectors && rdev->mddev->external)


  return -EBUSY;
 rdev->data_offset = offset;
 rdev->new_data_offset = offset;
 return len;
}
