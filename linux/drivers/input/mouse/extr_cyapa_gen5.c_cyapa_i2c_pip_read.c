
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int client; } ;
typedef int ssize_t ;


 size_t CYAPA_REG_MAP_SIZE ;
 int EINVAL ;
 int EIO ;
 int i2c_master_recv (int ,int *,size_t) ;

ssize_t cyapa_i2c_pip_read(struct cyapa *cyapa, u8 *buf, size_t size)
{
 int ret;

 if (size == 0)
  return 0;

 if (!buf || size > CYAPA_REG_MAP_SIZE)
  return -EINVAL;

 ret = i2c_master_recv(cyapa->client, buf, size);

 if (ret != size)
  return (ret < 0) ? ret : -EIO;
 return size;
}
