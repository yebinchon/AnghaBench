
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8231_data {int dummy; } ;


 int VT8231_REG_TEMP1_CONFIG ;
 int VT8231_REG_TEMP2_CONFIG ;
 int vt8231_write_value (struct vt8231_data*,int ,int ) ;

__attribute__((used)) static void vt8231_init_device(struct vt8231_data *data)
{
 vt8231_write_value(data, VT8231_REG_TEMP1_CONFIG, 0);
 vt8231_write_value(data, VT8231_REG_TEMP2_CONFIG, 0);
}
