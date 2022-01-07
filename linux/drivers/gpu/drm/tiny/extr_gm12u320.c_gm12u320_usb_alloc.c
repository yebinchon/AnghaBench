
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int workq; } ;
struct gm12u320_device {int* data_buf; TYPE_1__ fb_update; int cmd_buf; } ;


 int CMD_SIZE ;
 int DATA_BLOCK_FOOTER_SIZE ;
 int DATA_BLOCK_HEADER_SIZE ;
 int DATA_BLOCK_SIZE ;
 int DATA_LAST_BLOCK_SIZE ;
 int DRIVER_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GM12U320_BLOCK_COUNT ;
 int create_singlethread_workqueue (int ) ;
 char const* data_block_footer ;
 char* data_block_header ;
 char* data_last_block_header ;
 int kmalloc (int ,int ) ;
 int kzalloc (int,int ) ;
 int memcpy (int,char const*,int) ;

__attribute__((used)) static int gm12u320_usb_alloc(struct gm12u320_device *gm12u320)
{
 int i, block_size;
 const char *hdr;

 gm12u320->cmd_buf = kmalloc(CMD_SIZE, GFP_KERNEL);
 if (!gm12u320->cmd_buf)
  return -ENOMEM;

 for (i = 0; i < GM12U320_BLOCK_COUNT; i++) {
  if (i == GM12U320_BLOCK_COUNT - 1) {
   block_size = DATA_LAST_BLOCK_SIZE;
   hdr = data_last_block_header;
  } else {
   block_size = DATA_BLOCK_SIZE;
   hdr = data_block_header;
  }

  gm12u320->data_buf[i] = kzalloc(block_size, GFP_KERNEL);
  if (!gm12u320->data_buf[i])
   return -ENOMEM;

  memcpy(gm12u320->data_buf[i], hdr, DATA_BLOCK_HEADER_SIZE);
  memcpy(gm12u320->data_buf[i] +
    (block_size - DATA_BLOCK_FOOTER_SIZE),
         data_block_footer, DATA_BLOCK_FOOTER_SIZE);
 }

 gm12u320->fb_update.workq = create_singlethread_workqueue(DRIVER_NAME);
 if (!gm12u320->fb_update.workq)
  return -ENOMEM;

 return 0;
}
