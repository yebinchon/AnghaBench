
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int endo_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct gb_svc* to_gb_svc (struct device*) ;

__attribute__((used)) static ssize_t endo_id_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct gb_svc *svc = to_gb_svc(dev);

 return sprintf(buf, "0x%04x\n", svc->endo_id);
}
