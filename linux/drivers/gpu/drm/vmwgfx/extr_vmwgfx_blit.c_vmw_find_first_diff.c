
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int VMW_TRY_FIND_FIRST_DIFF (int ) ;
 size_t round_down (scalar_t__,size_t) ;
 int u16 ;
 int u32 ;
 int u64 ;
 scalar_t__ vmw_find_first_diff_u8 (int const*,int const*,size_t) ;

__attribute__((used)) static size_t vmw_find_first_diff(const u8 *dst, const u8 *src, size_t size,
      size_t granularity)
{
 size_t offset = 0;
 VMW_TRY_FIND_FIRST_DIFF(u32);
 VMW_TRY_FIND_FIRST_DIFF(u16);

 return round_down(offset + vmw_find_first_diff_u8(dst, src, size),
     granularity);
}
