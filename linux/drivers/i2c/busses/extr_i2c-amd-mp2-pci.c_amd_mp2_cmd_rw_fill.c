
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int i2c_cmd; int length; int slave_addr; int i2c_speed; int bus_id; } ;
union i2c_cmd_base {TYPE_2__ s; } ;
struct amd_i2c_common {TYPE_1__* msg; int i2c_speed; int bus_id; } ;
typedef enum i2c_cmd { ____Placeholder_i2c_cmd } i2c_cmd ;
struct TYPE_3__ {int len; int addr; } ;



__attribute__((used)) static void amd_mp2_cmd_rw_fill(struct amd_i2c_common *i2c_common,
    union i2c_cmd_base *i2c_cmd_base,
    enum i2c_cmd reqcmd)
{
 i2c_cmd_base->s.i2c_cmd = reqcmd;
 i2c_cmd_base->s.bus_id = i2c_common->bus_id;
 i2c_cmd_base->s.i2c_speed = i2c_common->i2c_speed;
 i2c_cmd_base->s.slave_addr = i2c_common->msg->addr;
 i2c_cmd_base->s.length = i2c_common->msg->len;
}
