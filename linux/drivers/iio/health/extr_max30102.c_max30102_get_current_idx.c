
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int max30102_get_current_idx(unsigned int val, int *reg)
{

 *reg = val / 200;

 return *reg > 0xff ? -EINVAL : 0;
}
