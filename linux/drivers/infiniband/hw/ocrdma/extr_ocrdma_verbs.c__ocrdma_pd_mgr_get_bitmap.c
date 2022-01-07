
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ocrdma_dev {TYPE_1__* pd_mgr; } ;
struct TYPE_2__ {unsigned long* pd_dpp_bitmap; scalar_t__ pd_dpp_count; scalar_t__ pd_dpp_thrsh; unsigned long* pd_norm_bitmap; scalar_t__ pd_norm_count; scalar_t__ pd_norm_thrsh; int max_normal_pd; int max_dpp_pd; } ;


 int __set_bit (int ,unsigned long*) ;
 int find_first_zero_bit (unsigned long const*,int ) ;

__attribute__((used)) static u16 _ocrdma_pd_mgr_get_bitmap(struct ocrdma_dev *dev, bool dpp_pool)
{
 u16 pd_bitmap_idx = 0;
 const unsigned long *pd_bitmap;

 if (dpp_pool) {
  pd_bitmap = dev->pd_mgr->pd_dpp_bitmap;
  pd_bitmap_idx = find_first_zero_bit(pd_bitmap,
          dev->pd_mgr->max_dpp_pd);
  __set_bit(pd_bitmap_idx, dev->pd_mgr->pd_dpp_bitmap);
  dev->pd_mgr->pd_dpp_count++;
  if (dev->pd_mgr->pd_dpp_count > dev->pd_mgr->pd_dpp_thrsh)
   dev->pd_mgr->pd_dpp_thrsh = dev->pd_mgr->pd_dpp_count;
 } else {
  pd_bitmap = dev->pd_mgr->pd_norm_bitmap;
  pd_bitmap_idx = find_first_zero_bit(pd_bitmap,
          dev->pd_mgr->max_normal_pd);
  __set_bit(pd_bitmap_idx, dev->pd_mgr->pd_norm_bitmap);
  dev->pd_mgr->pd_norm_count++;
  if (dev->pd_mgr->pd_norm_count > dev->pd_mgr->pd_norm_thrsh)
   dev->pd_mgr->pd_norm_thrsh = dev->pd_mgr->pd_norm_count;
 }
 return pd_bitmap_idx;
}
