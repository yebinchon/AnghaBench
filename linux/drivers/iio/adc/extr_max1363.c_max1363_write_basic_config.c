
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max1363_state {int (* send ) (int ,int *,int) ;int client; int configbyte; int setupbyte; } ;


 int stub1 (int ,int *,int) ;

__attribute__((used)) static int max1363_write_basic_config(struct max1363_state *st)
{
 u8 tx_buf[2] = { st->setupbyte, st->configbyte };

 return st->send(st->client, tx_buf, 2);
}
