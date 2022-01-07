
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 unsigned char DMARD10_MODE_OFF ;
 unsigned char DMARD10_MODE_STANDBY ;
 unsigned char DMARD10_REG_ACTR ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;

__attribute__((used)) static int dmard10_shutdown(struct i2c_client *client)
{
 unsigned char buffer[3];

 buffer[0] = DMARD10_REG_ACTR;
 buffer[1] = DMARD10_MODE_STANDBY;
 buffer[2] = DMARD10_MODE_OFF;

 return i2c_master_send(client, buffer, 3);
}
