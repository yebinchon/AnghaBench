
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_gain {int scale; int uscale; } ;



__attribute__((used)) static int ltr501_get_gain_index(struct ltr501_gain *gain, int size,
     int val, int val2)
{
 int i;

 for (i = 0; i < size; i++)
  if (val == gain[i].scale && val2 == gain[i].uscale)
   return i;

 return -1;
}
