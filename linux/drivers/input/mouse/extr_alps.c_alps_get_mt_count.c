
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_mt_pos {scalar_t__ x; scalar_t__ y; } ;


 int MAX_TOUCHES ;

__attribute__((used)) static int alps_get_mt_count(struct input_mt_pos *mt)
{
 int i, fingers = 0;

 for (i = 0; i < MAX_TOUCHES; i++) {
  if (mt[i].x != 0 || mt[i].y != 0)
   fingers++;
 }

 return fingers;
}
