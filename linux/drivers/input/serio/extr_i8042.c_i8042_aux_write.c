
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct i8042_port* port_data; } ;
struct i8042_port {int mux; } ;


 scalar_t__ I8042_CMD_AUX_SEND ;
 scalar_t__ I8042_CMD_MUX_SEND ;
 int i8042_command (unsigned char*,scalar_t__) ;

__attribute__((used)) static int i8042_aux_write(struct serio *serio, unsigned char c)
{
 struct i8042_port *port = serio->port_data;

 return i8042_command(&c, port->mux == -1 ?
     I8042_CMD_AUX_SEND :
     I8042_CMD_MUX_SEND + port->mux);
}
