
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29501_private {int dummy; } ;


 int ARRAY_SIZE (int**) ;
 int EINVAL ;
 int REG_INT_TIME ;
 int** isl29501_int_time ;
 int isl29501_register_write (struct isl29501_private*,int ,int) ;

__attribute__((used)) static int isl29501_set_inttime(struct isl29501_private *isl29501,
    int val, int val2)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(isl29501_int_time); i++) {
  if (isl29501_int_time[i][0] == val &&
      isl29501_int_time[i][1] == val2) {
   return isl29501_register_write(isl29501,
             REG_INT_TIME,
             i);
  }
 }

 return -EINVAL;
}
