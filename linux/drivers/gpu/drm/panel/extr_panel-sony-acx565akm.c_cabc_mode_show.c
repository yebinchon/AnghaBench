
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acx565akm_panel {int has_cabc; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (char**) ;
 char** acx565akm_cabc_modes ;
 int acx565akm_get_cabc_mode (struct acx565akm_panel*) ;
 struct acx565akm_panel* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static ssize_t cabc_mode_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct acx565akm_panel *lcd = dev_get_drvdata(dev);
 const char *mode_str;
 int mode;

 if (!lcd->has_cabc)
  mode = 0;
 else
  mode = acx565akm_get_cabc_mode(lcd);

 mode_str = "unknown";
 if (mode >= 0 && mode < ARRAY_SIZE(acx565akm_cabc_modes))
  mode_str = acx565akm_cabc_modes[mode];

 return sprintf(buf, "%s\n", mode_str);
}
