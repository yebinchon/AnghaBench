
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (char const**) ;
 char const** cmd_status_names ;

__attribute__((used)) static const char *sdvo_cmd_status(u8 status)
{
 if (status < ARRAY_SIZE(cmd_status_names))
  return cmd_status_names[status];
 else
  return ((void*)0);
}
