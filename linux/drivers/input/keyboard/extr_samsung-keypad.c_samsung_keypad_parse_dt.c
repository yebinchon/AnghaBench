
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_keypad_platdata {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct samsung_keypad_platdata* ERR_PTR (int ) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static struct samsung_keypad_platdata *
samsung_keypad_parse_dt(struct device *dev)
{
 dev_err(dev, "no platform data defined\n");

 return ERR_PTR(-EINVAL);
}
