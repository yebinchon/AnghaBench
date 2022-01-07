
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int min_odd(unsigned int x, unsigned int y)
{
 unsigned int val = min(x, y);

 return val % 2 ? val : val - 1;
}
