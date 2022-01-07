
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 scalar_t__ GZIP_HEAD_FEXTRA_XLEN ;

__attribute__((used)) static u16 get_extra_field_size(const u8 *start)
{
 return *((u16 *)start) + GZIP_HEAD_FEXTRA_XLEN;
}
