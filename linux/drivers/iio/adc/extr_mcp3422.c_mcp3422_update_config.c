
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mcp3422 {int lock; int config; int i2c; } ;


 int i2c_master_send (int ,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mcp3422_update_config(struct mcp3422 *adc, u8 newconfig)
{
 int ret;

 mutex_lock(&adc->lock);

 ret = i2c_master_send(adc->i2c, &newconfig, 1);
 if (ret > 0) {
  adc->config = newconfig;
  ret = 0;
 }

 mutex_unlock(&adc->lock);

 return ret;
}
