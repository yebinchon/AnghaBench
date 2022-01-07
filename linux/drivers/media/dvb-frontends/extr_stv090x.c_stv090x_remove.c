
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv090x_state {int frontend; } ;
struct i2c_client {int dummy; } ;


 struct stv090x_state* i2c_get_clientdata (struct i2c_client*) ;
 int stv090x_release (int *) ;

__attribute__((used)) static int stv090x_remove(struct i2c_client *client)
{
 struct stv090x_state *state = i2c_get_clientdata(client);

 stv090x_release(&state->frontend);
 return 0;
}
