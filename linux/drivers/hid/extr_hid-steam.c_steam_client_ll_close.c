
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct steam_device {int connected; int client_opened; int mutex; int lock; } ;
struct hid_device {struct steam_device* driver_data; } ;


 int lizard_mode ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int steam_input_register (struct steam_device*) ;
 int steam_set_lizard_mode (struct steam_device*,int ) ;

__attribute__((used)) static void steam_client_ll_close(struct hid_device *hdev)
{
 struct steam_device *steam = hdev->driver_data;

 unsigned long flags;
 bool connected;

 spin_lock_irqsave(&steam->lock, flags);
 connected = steam->connected;
 spin_unlock_irqrestore(&steam->lock, flags);

 mutex_lock(&steam->mutex);
 steam->client_opened = 0;
 if (connected)
  steam_set_lizard_mode(steam, lizard_mode);
 mutex_unlock(&steam->mutex);

 if (connected)
  steam_input_register(steam);
}
