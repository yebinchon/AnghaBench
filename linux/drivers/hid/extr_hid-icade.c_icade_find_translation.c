
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct icade_key {int dummy; } ;


 size_t ICADE_MAX_USAGE ;
 struct icade_key const* icade_usage_table ;

__attribute__((used)) static const struct icade_key *icade_find_translation(u16 from)
{
 if (from > ICADE_MAX_USAGE)
  return ((void*)0);
 return &icade_usage_table[from];
}
