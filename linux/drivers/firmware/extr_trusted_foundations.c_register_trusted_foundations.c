
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trusted_foundations_platform_data {int dummy; } ;


 int register_firmware_ops (int *) ;
 int trusted_foundations_ops ;

void register_trusted_foundations(struct trusted_foundations_platform_data *pd)
{




 register_firmware_ops(&trusted_foundations_ops);
}
