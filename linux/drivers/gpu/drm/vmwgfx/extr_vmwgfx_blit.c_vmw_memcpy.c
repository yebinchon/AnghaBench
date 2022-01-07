
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vmw_diff_cpy {int dummy; } ;


 int memcpy (int *,int const*,size_t) ;

void vmw_memcpy(struct vmw_diff_cpy *diff, u8 *dest, const u8 *src, size_t n)
{
 memcpy(dest, src, n);
}
