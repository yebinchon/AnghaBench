
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mISDN_dsp_element {int num_args; TYPE_1__* args; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; char* def; int desc; } ;


 struct mISDN_dsp_element* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*,char*,char*,char*,int ) ;

__attribute__((used)) static ssize_t
attr_show_args(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct mISDN_dsp_element *elem = dev_get_drvdata(dev);
 int i;
 char *p = buf;

 *buf = 0;
 for (i = 0; i < elem->num_args; i++)
  p += sprintf(p, "Name:        %s\n%s%s%sDescription: %s\n\n",
        elem->args[i].name,
        elem->args[i].def ? "Default:     " : "",
        elem->args[i].def ? elem->args[i].def : "",
        elem->args[i].def ? "\n" : "",
        elem->args[i].desc);

 return p - buf;
}
