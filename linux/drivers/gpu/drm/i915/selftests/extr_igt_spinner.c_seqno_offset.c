
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 unsigned int offset_in_page (int) ;

__attribute__((used)) static unsigned int seqno_offset(u64 fence)
{
 return offset_in_page(sizeof(u32) * fence);
}
