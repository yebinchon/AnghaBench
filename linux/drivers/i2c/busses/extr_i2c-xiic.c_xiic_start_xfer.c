
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xiic_i2c {int lock; } ;


 int __xiic_start_xfer (struct xiic_i2c*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xiic_reinit (struct xiic_i2c*) ;

__attribute__((used)) static void xiic_start_xfer(struct xiic_i2c *i2c)
{
 mutex_lock(&i2c->lock);
 xiic_reinit(i2c);
 __xiic_start_xfer(i2c);
 mutex_unlock(&i2c->lock);
}
