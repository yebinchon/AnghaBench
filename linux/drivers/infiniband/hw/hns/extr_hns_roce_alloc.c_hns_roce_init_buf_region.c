
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_buf_region {int hopnum; int offset; int count; } ;


 int HNS_ROCE_HOP_NUM_0 ;

void hns_roce_init_buf_region(struct hns_roce_buf_region *region, int hopnum,
         int offset, int buf_cnt)
{
 if (hopnum == HNS_ROCE_HOP_NUM_0)
  region->hopnum = 0;
 else
  region->hopnum = hopnum;

 region->offset = offset;
 region->count = buf_cnt;
}
