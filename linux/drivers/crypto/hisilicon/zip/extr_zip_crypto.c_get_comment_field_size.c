
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 scalar_t__ strlen (int const*) ;

__attribute__((used)) static u32 get_comment_field_size(const u8 *start)
{
 return strlen(start) + 1;
}
