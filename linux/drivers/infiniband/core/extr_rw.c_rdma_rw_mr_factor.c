
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {unsigned int max_sge_rd; } ;
struct ib_device {TYPE_1__ attrs; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 scalar_t__ rdma_rw_can_use_mr (struct ib_device*,int ) ;
 unsigned int rdma_rw_fr_page_list_len (struct ib_device*,int) ;

unsigned int rdma_rw_mr_factor(struct ib_device *device, u8 port_num,
          unsigned int maxpages)
{
 unsigned int mr_pages;

 if (rdma_rw_can_use_mr(device, port_num))
  mr_pages = rdma_rw_fr_page_list_len(device, 0);
 else
  mr_pages = device->attrs.max_sge_rd;
 return DIV_ROUND_UP(maxpages, mr_pages);
}
