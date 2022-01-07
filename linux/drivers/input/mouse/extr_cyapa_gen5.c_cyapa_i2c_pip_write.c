
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int client; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EIO ;
 int i2c_master_send (int ,int *,size_t) ;

ssize_t cyapa_i2c_pip_write(struct cyapa *cyapa, u8 *buf, size_t size)
{
 int ret;

 if (!buf || !size)
  return -EINVAL;

 ret = i2c_master_send(cyapa->client, buf, size);

 if (ret != size)
  return (ret < 0) ? ret : -EIO;

 return 0;
}
