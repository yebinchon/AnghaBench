
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ cmd; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* sdvo_cmd_names ;

__attribute__((used)) static const char *sdvo_cmd_name(u8 cmd)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(sdvo_cmd_names); i++) {
  if (cmd == sdvo_cmd_names[i].cmd)
   return sdvo_cmd_names[i].name;
 }

 return ((void*)0);
}
