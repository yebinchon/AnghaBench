
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int max_handles; int* img_size; int * handles; } ;
struct radeon_device {TYPE_1__ uvd; } ;


 int atomic_read (int *) ;

__attribute__((used)) static void radeon_uvd_count_handles(struct radeon_device *rdev,
         unsigned *sd, unsigned *hd)
{
 unsigned i;

 *sd = 0;
 *hd = 0;

 for (i = 0; i < rdev->uvd.max_handles; ++i) {
  if (!atomic_read(&rdev->uvd.handles[i]))
   continue;

  if (rdev->uvd.img_size[i] >= 720*576)
   ++(*hd);
  else
   ++(*sd);
 }
}
