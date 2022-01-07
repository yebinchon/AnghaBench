
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int dev_name (struct device*) ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *hfi1_user_devnode(struct device *dev, umode_t *mode)
{
 if (mode)
  *mode = 0666;
 return kasprintf(GFP_KERNEL, "%s", dev_name(dev));
}
