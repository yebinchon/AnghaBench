
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sin_mul (int,int) ;

__attribute__((used)) static inline int
cos_mul(int degrees, int factor)
{
 return sin_mul((degrees + 90) % 360, factor);
}
