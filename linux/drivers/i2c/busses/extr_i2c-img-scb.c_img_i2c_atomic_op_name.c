
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** img_i2c_atomic_cmd_names ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const char *img_i2c_atomic_op_name(unsigned int cmd)
{
 if (unlikely(cmd >= ARRAY_SIZE(img_i2c_atomic_cmd_names)))
  return "UNKNOWN";
 return img_i2c_atomic_cmd_names[cmd];
}
