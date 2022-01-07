
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int hex2bcd (int n)
{
 return ((n / 10) << 4) + (n % 10);
}
