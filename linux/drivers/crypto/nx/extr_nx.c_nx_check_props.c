
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int nx_check_prop (struct device*,int ,int ,int) ;

__attribute__((used)) static bool nx_check_props(struct device *dev, u32 fc, u32 mode)
{
 int i;

 for (i = 0; i < 3; i++)
  if (!nx_check_prop(dev, fc, mode, i))
   return 0;

 return 1;
}
