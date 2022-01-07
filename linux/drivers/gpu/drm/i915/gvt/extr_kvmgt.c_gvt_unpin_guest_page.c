
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mdev; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;


 int PAGE_SIZE ;
 int WARN_ON (int) ;
 int mdev_dev (int ) ;
 int roundup (unsigned long,int) ;
 int vfio_unpin_pages (int ,unsigned long*,int) ;

__attribute__((used)) static void gvt_unpin_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
  unsigned long size)
{
 int total_pages;
 int npage;
 int ret;

 total_pages = roundup(size, PAGE_SIZE) / PAGE_SIZE;

 for (npage = 0; npage < total_pages; npage++) {
  unsigned long cur_gfn = gfn + npage;

  ret = vfio_unpin_pages(mdev_dev(vgpu->vdev.mdev), &cur_gfn, 1);
  WARN_ON(ret != 1);
 }
}
