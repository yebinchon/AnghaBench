
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct cyapa {int client; scalar_t__ smbus; } ;
typedef int s32 ;
struct TYPE_4__ {size_t cmd; } ;
struct TYPE_3__ {size_t cmd; } ;


 size_t SMBUS_ENCODE_RW (size_t,int ) ;
 int SMBUS_READ ;
 TYPE_2__* cyapa_i2c_cmds ;
 TYPE_1__* cyapa_smbus_cmds ;
 int i2c_smbus_read_byte_data (int ,size_t) ;

__attribute__((used)) static s32 cyapa_read_byte(struct cyapa *cyapa, u8 cmd_idx)
{
 u8 cmd;

 if (cyapa->smbus) {
  cmd = cyapa_smbus_cmds[cmd_idx].cmd;
  cmd = SMBUS_ENCODE_RW(cmd, SMBUS_READ);
 } else {
  cmd = cyapa_i2c_cmds[cmd_idx].cmd;
 }
 return i2c_smbus_read_byte_data(cyapa->client, cmd);
}
