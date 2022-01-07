
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sbridge_pvt {int dummy; } ;
typedef enum dev_type { ____Placeholder_dev_type } dev_type ;


 int DEV_X16 ;

__attribute__((used)) static enum dev_type knl_get_width(struct sbridge_pvt *pvt, u32 mtr)
{

 return DEV_X16;
}
