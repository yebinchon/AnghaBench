
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mxt_data {int T5_msg_size; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ,int *) ;

__attribute__((used)) static void mxt_dump_message(struct mxt_data *data, u8 *message)
{
 dev_dbg(&data->client->dev, "message: %*ph\n",
  data->T5_msg_size, message);
}
