
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool __within_range(long v, long min, long max)
{
 return v >= min && v <= max;
}
