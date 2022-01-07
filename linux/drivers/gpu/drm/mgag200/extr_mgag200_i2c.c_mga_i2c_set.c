
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_device {int dummy; } ;


 int mga_i2c_set_gpio (struct mga_device*,int,int) ;

__attribute__((used)) static inline void mga_i2c_set(struct mga_device *mdev, int mask, int state)
{
 if (state)
  state = 0;
 else
  state = mask;
 mga_i2c_set_gpio(mdev, ~mask, state);
}
