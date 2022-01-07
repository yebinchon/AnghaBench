
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int data; } ;
struct TYPE_5__ {TYPE_1__ guest_code; } ;
struct TYPE_6__ {int block_size; TYPE_2__ img; } ;
struct f34_data {TYPE_3__ v7; } ;


 int rmi_f34v7_write_f34v7_blocks (struct f34_data*,int ,int,int ) ;
 int v7_CMD_WRITE_GUEST_CODE ;

__attribute__((used)) static int rmi_f34v7_write_guest_code(struct f34_data *f34)
{
 return rmi_f34v7_write_f34v7_blocks(f34, f34->v7.img.guest_code.data,
         f34->v7.img.guest_code.size /
       f34->v7.block_size,
         v7_CMD_WRITE_GUEST_CODE);
}
