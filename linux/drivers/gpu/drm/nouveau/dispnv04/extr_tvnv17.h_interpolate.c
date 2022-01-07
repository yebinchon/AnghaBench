
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int interpolate(int y0, int y1, int y2, int x)
{
 return y1 + (x < 50 ? y1 - y0 : y2 - y1) * (x - 50) / 50;
}
