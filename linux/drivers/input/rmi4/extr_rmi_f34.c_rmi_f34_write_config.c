
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config_blocks; } ;
struct f34_data {TYPE_1__ v5; } ;


 int F34_WRITE_CONFIG_BLOCK ;
 int rmi_f34_write_blocks (struct f34_data*,void const*,int ,int ) ;

__attribute__((used)) static int rmi_f34_write_config(struct f34_data *f34, const void *data)
{
 return rmi_f34_write_blocks(f34, data, f34->v5.config_blocks,
        F34_WRITE_CONFIG_BLOCK);
}
