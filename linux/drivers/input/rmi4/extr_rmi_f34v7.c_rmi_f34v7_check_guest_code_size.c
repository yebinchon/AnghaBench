
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
struct TYPE_8__ {int guest_code; } ;
struct TYPE_6__ {int size; } ;
struct TYPE_7__ {TYPE_1__ guest_code; } ;
struct TYPE_9__ {int block_size; TYPE_3__ blkcount; TYPE_2__ img; } ;
struct f34_data {int update_size; TYPE_5__* fn; TYPE_4__ v7; } ;
struct TYPE_10__ {int dev; } ;


 int EINVAL ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int rmi_f34v7_check_guest_code_size(struct f34_data *f34)
{
 u16 block_count;

 block_count = f34->v7.img.guest_code.size / f34->v7.block_size;
 f34->update_size += block_count;

 if (block_count != f34->v7.blkcount.guest_code) {
  dev_err(&f34->fn->dev, "Guest code size mismatch\n");
  return -EINVAL;
 }

 return 0;
}
