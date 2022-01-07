
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef scalar_t__ u_int ;


 int EBUSY ;
 scalar_t__ MAX_DEVICE_ID ;
 int device_ids ;
 int test_and_set_bit (scalar_t__,int *) ;

__attribute__((used)) static int
get_free_devid(void)
{
 u_int i;

 for (i = 0; i <= MAX_DEVICE_ID; i++)
  if (!test_and_set_bit(i, (u_long *)&device_ids))
   break;
 if (i > MAX_DEVICE_ID)
  return -EBUSY;
 return i;
}
