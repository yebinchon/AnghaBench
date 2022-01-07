
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 sw_ownership_bit(int n, int nent)
{
 return (n & nent) ? 1 : 0;
}
