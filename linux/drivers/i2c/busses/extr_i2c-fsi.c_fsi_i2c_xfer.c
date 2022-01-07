
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_adapter {unsigned long timeout; struct fsi_i2c_port* algo_data; } ;
struct fsi_i2c_port {struct fsi_i2c_master* master; } ;
struct fsi_i2c_master {int lock; } ;


 int fsi_i2c_set_port (struct fsi_i2c_port*) ;
 int fsi_i2c_start (struct fsi_i2c_port*,struct i2c_msg*,int) ;
 int fsi_i2c_wait (struct fsi_i2c_port*,struct i2c_msg*,unsigned long) ;
 unsigned long jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int fsi_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
   int num)
{
 int i, rc;
 unsigned long start_time;
 struct fsi_i2c_port *port = adap->algo_data;
 struct fsi_i2c_master *master = port->master;
 struct i2c_msg *msg;

 mutex_lock(&master->lock);

 rc = fsi_i2c_set_port(port);
 if (rc)
  goto unlock;

 for (i = 0; i < num; i++) {
  msg = msgs + i;
  start_time = jiffies;

  rc = fsi_i2c_start(port, msg, i == num - 1);
  if (rc)
   goto unlock;

  rc = fsi_i2c_wait(port, msg,
      adap->timeout - (jiffies - start_time));
  if (rc)
   goto unlock;
 }

unlock:
 mutex_unlock(&master->lock);
 return rc ? : num;
}
