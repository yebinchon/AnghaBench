
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_dev {int dev; } ;
struct TYPE_3__ {int map; } ;
struct hns_roce_buf {int npages; int nbufs; int page_shift; TYPE_2__* page_list; TYPE_1__ direct; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int map; } ;


 int EINVAL ;
 int dev_err (int ,char*,int,int,int) ;

int hns_roce_get_kmem_bufs(struct hns_roce_dev *hr_dev, dma_addr_t *bufs,
      int buf_cnt, int start, struct hns_roce_buf *buf)
{
 int i, end;
 int total;

 end = start + buf_cnt;
 if (end > buf->npages) {
  dev_err(hr_dev->dev,
   "invalid kmem region,offset %d,buf_cnt %d,total %d!\n",
   start, buf_cnt, buf->npages);
  return -EINVAL;
 }

 total = 0;
 for (i = start; i < end; i++)
  if (buf->nbufs == 1)
   bufs[total++] = buf->direct.map +
     ((dma_addr_t)i << buf->page_shift);
  else
   bufs[total++] = buf->page_list[i].map;

 return total;
}
