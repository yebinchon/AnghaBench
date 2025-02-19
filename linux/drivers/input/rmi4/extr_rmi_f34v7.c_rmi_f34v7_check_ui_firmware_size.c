
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_9__ {int ui_firmware; } ;
struct TYPE_7__ {int size; } ;
struct TYPE_8__ {TYPE_2__ ui_firmware; } ;
struct TYPE_10__ {int block_size; TYPE_4__ blkcount; TYPE_3__ img; } ;
struct f34_data {int update_size; TYPE_5__ v7; TYPE_1__* fn; } ;
struct TYPE_6__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*,int,int) ;

__attribute__((used)) static int rmi_f34v7_check_ui_firmware_size(struct f34_data *f34)
{
 u16 block_count;

 block_count = f34->v7.img.ui_firmware.size / f34->v7.block_size;
 f34->update_size += block_count;

 if (block_count != f34->v7.blkcount.ui_firmware) {
  dev_err(&f34->fn->dev,
   "UI firmware size mismatch: %d != %d\n",
   block_count, f34->v7.blkcount.ui_firmware);
  return -EINVAL;
 }

 return 0;
}
