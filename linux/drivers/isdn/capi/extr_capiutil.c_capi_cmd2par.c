
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t command_2_index (int ,int ) ;
 unsigned char** cpars ;

__attribute__((used)) static unsigned char *capi_cmd2par(u8 cmd, u8 subcmd)
{
 return cpars[command_2_index(cmd, subcmd)];
}
