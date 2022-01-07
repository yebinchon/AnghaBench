
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_dev {struct device* dev; } ;
struct TYPE_3__ {int map; scalar_t__ buf; } ;
struct hns_roce_buf {int nbufs; int page_shift; TYPE_2__* page_list; TYPE_1__ direct; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int map; scalar_t__ buf; } ;


 int dma_free_coherent (struct device*,int,scalar_t__,int ) ;
 int kfree (TYPE_2__*) ;

void hns_roce_buf_free(struct hns_roce_dev *hr_dev, u32 size,
         struct hns_roce_buf *buf)
{
 int i;
 struct device *dev = hr_dev->dev;

 if (buf->nbufs == 1) {
  dma_free_coherent(dev, size, buf->direct.buf, buf->direct.map);
 } else {
  for (i = 0; i < buf->nbufs; ++i)
   if (buf->page_list[i].buf)
    dma_free_coherent(dev, 1 << buf->page_shift,
        buf->page_list[i].buf,
        buf->page_list[i].map);
  kfree(buf->page_list);
 }
}
