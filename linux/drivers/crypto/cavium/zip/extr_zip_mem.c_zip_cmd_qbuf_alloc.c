
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct zip_device {TYPE_1__* iq; } ;
struct TYPE_2__ {int * sw_head; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int ZIP_CMD_QBUF_SIZE ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (int ) ;
 int memset (int *,int ,int ) ;
 int zip_dbg (char*,int,int *) ;

int zip_cmd_qbuf_alloc(struct zip_device *zip, int q)
{
 zip->iq[q].sw_head = (u64 *)__get_free_pages((GFP_KERNEL | GFP_DMA),
      get_order(ZIP_CMD_QBUF_SIZE));

 if (!zip->iq[q].sw_head)
  return -ENOMEM;

 memset(zip->iq[q].sw_head, 0, ZIP_CMD_QBUF_SIZE);

 zip_dbg("cmd_qbuf_alloc[%d] Success : %p\n", q, zip->iq[q].sw_head);
 return 0;
}
