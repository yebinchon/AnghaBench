
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ssize_t ;


 int VMW_TRY_FIND_LAST_DIFF (int ) ;
 int round_down (scalar_t__,size_t) ;
 int u16 ;
 int u32 ;
 int u64 ;
 scalar_t__ vmw_find_last_diff_u8 (int const*,int const*,size_t) ;

__attribute__((used)) static ssize_t vmw_find_last_diff(const u8 *dst, const u8 *src, size_t size,
      size_t granularity)
{
 dst += size;
 src += size;




 VMW_TRY_FIND_LAST_DIFF(u32);
 VMW_TRY_FIND_LAST_DIFF(u16);

 return round_down(vmw_find_last_diff_u8(dst, src, size) - 1,
     granularity);
}
