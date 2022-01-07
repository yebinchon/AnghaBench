
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int data; } ;
struct TYPE_5__ {TYPE_1__ dp_config; } ;
struct TYPE_6__ {int config_size; int config_block_count; int block_size; TYPE_2__ img; int config_data; int config_area; } ;
struct f34_data {TYPE_3__ v7; } ;


 int rmi_f34v7_write_config (struct f34_data*) ;
 int v7_DP_CONFIG_AREA ;

__attribute__((used)) static int rmi_f34v7_write_dp_config(struct f34_data *f34)
{
 f34->v7.config_area = v7_DP_CONFIG_AREA;
 f34->v7.config_data = f34->v7.img.dp_config.data;
 f34->v7.config_size = f34->v7.img.dp_config.size;
 f34->v7.config_block_count = f34->v7.config_size / f34->v7.block_size;

 return rmi_f34v7_write_config(f34);
}
