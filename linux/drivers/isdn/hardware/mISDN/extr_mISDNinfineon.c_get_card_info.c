
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf_cinfo {scalar_t__ typ; } ;
typedef enum inf_types { ____Placeholder_inf_types } inf_types ;


 scalar_t__ INF_NONE ;
 struct inf_cinfo* inf_card_info ;

__attribute__((used)) static const struct inf_cinfo *
get_card_info(enum inf_types typ)
{
 const struct inf_cinfo *ci = inf_card_info;

 while (ci->typ != INF_NONE) {
  if (ci->typ == typ)
   return ci;
  ci++;
 }
 return ((void*)0);
}
