
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rackmeter {int* ubuf; } ;



__attribute__((used)) static void rackmeter_set_default_pattern(struct rackmeter *rm)
{
 int i;

 for (i = 0; i < 16; i++) {
  if (i < 8)
   rm->ubuf[i] = (i & 1) * 255;
  else
   rm->ubuf[i] = ((~i) & 1) * 255;
 }
}
