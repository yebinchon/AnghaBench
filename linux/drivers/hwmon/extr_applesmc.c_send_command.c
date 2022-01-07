
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int APPLESMC_CMD_PORT ;
 int send_byte (int ,int ) ;

__attribute__((used)) static int send_command(u8 cmd)
{
 return send_byte(cmd, APPLESMC_CMD_PORT);
}
