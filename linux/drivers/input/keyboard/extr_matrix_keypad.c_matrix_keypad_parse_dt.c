
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrix_keypad_platform_data {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct matrix_keypad_platform_data* ERR_PTR (int ) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static inline struct matrix_keypad_platform_data *
matrix_keypad_parse_dt(struct device *dev)
{
 dev_err(dev, "no platform data defined\n");

 return ERR_PTR(-EINVAL);
}
