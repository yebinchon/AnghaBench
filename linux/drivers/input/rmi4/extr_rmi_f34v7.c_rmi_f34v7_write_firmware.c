
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int size; int data; } ;
struct TYPE_5__ {TYPE_1__ ui_firmware; } ;
struct TYPE_6__ {int block_size; TYPE_2__ img; } ;
struct f34_data {TYPE_3__ v7; } ;


 int rmi_f34v7_write_f34v7_blocks (struct f34_data*,int ,int,int ) ;
 int v7_CMD_WRITE_FW ;

__attribute__((used)) static int rmi_f34v7_write_firmware(struct f34_data *f34)
{
 u16 blk_count;

 blk_count = f34->v7.img.ui_firmware.size / f34->v7.block_size;

 return rmi_f34v7_write_f34v7_blocks(f34, f34->v7.img.ui_firmware.data,
         blk_count, v7_CMD_WRITE_FW);
}
