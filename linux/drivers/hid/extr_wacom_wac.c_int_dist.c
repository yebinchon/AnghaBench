
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int int_sqrt (int) ;

__attribute__((used)) static int int_dist(int x1, int y1, int x2, int y2)
{
 int x = x2 - x1;
 int y = y2 - y1;

 return int_sqrt(x*x + y*y);
}
