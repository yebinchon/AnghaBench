
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sps30_state {int client; } ;


 int EIO ;
 int i2c_master_recv (int ,int *,int) ;
 int i2c_master_send (int ,int *,int) ;

__attribute__((used)) static int sps30_write_then_read(struct sps30_state *state, u8 *txbuf,
     int txsize, u8 *rxbuf, int rxsize)
{
 int ret;





 ret = i2c_master_send(state->client, txbuf, txsize);
 if (ret != txsize)
  return ret < 0 ? ret : -EIO;

 if (!rxbuf)
  return 0;

 ret = i2c_master_recv(state->client, rxbuf, rxsize);
 if (ret != rxsize)
  return ret < 0 ? ret : -EIO;

 return 0;
}
