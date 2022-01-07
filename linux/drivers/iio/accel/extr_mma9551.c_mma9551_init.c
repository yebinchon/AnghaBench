
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma9551_data {int client; } ;


 int mma9551_read_version (int ) ;
 int mma9551_set_device_state (int ,int) ;

__attribute__((used)) static int mma9551_init(struct mma9551_data *data)
{
 int ret;

 ret = mma9551_read_version(data->client);
 if (ret)
  return ret;

 return mma9551_set_device_state(data->client, 1);
}
