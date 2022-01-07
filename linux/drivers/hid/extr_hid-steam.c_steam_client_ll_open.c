
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct steam_device {int client_opened; int mutex; } ;
struct hid_device {struct steam_device* driver_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int steam_input_unregister (struct steam_device*) ;

__attribute__((used)) static int steam_client_ll_open(struct hid_device *hdev)
{
 struct steam_device *steam = hdev->driver_data;

 mutex_lock(&steam->mutex);
 steam->client_opened = 1;
 mutex_unlock(&steam->mutex);

 steam_input_unregister(steam);

 return 0;
}
