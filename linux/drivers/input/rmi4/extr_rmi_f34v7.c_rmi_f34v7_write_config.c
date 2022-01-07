
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config_block_count; int config_data; } ;
struct f34_data {TYPE_1__ v7; } ;


 int rmi_f34v7_write_f34v7_blocks (struct f34_data*,int ,int ,int ) ;
 int v7_CMD_WRITE_CONFIG ;

__attribute__((used)) static int rmi_f34v7_write_config(struct f34_data *f34)
{
 return rmi_f34v7_write_f34v7_blocks(f34, f34->v7.config_data,
         f34->v7.config_block_count,
         v7_CMD_WRITE_CONFIG);
}
