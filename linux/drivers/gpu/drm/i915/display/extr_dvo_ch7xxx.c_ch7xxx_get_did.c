
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ did; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ch7xxx_dids ;

__attribute__((used)) static char *ch7xxx_get_did(u8 did)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ch7xxx_dids); i++) {
  if (ch7xxx_dids[i].did == did)
   return ch7xxx_dids[i].name;
 }

 return ((void*)0);
}
