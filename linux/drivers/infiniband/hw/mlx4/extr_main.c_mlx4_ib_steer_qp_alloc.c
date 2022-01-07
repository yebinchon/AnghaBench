
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_dev {int steer_qpn_base; int steer_qpn_count; int ib_uc_qpns_bitmap; } ;


 int WARN_ON (int) ;
 int bitmap_find_free_region (int ,int ,int ) ;
 int get_count_order (int) ;

int mlx4_ib_steer_qp_alloc(struct mlx4_ib_dev *dev, int count, int *qpn)
{
 int offset;

 WARN_ON(!dev->ib_uc_qpns_bitmap);

 offset = bitmap_find_free_region(dev->ib_uc_qpns_bitmap,
      dev->steer_qpn_count,
      get_count_order(count));
 if (offset < 0)
  return offset;

 *qpn = dev->steer_qpn_base + offset;
 return 0;
}
