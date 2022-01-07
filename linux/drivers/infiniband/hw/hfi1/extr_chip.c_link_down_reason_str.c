
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (char**) ;
 char** link_down_reason_strs ;

__attribute__((used)) static const char *link_down_reason_str(u8 reason)
{
 const char *str = ((void*)0);

 if (reason < ARRAY_SIZE(link_down_reason_strs))
  str = link_down_reason_strs[reason];
 if (!str)
  str = "(invalid)";

 return str;
}
