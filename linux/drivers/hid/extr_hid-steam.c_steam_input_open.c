
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct steam_device {int mutex; int client_opened; } ;
struct input_dev {int dummy; } ;


 struct steam_device* input_get_drvdata (struct input_dev*) ;
 scalar_t__ lizard_mode ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int steam_set_lizard_mode (struct steam_device*,int) ;

__attribute__((used)) static int steam_input_open(struct input_dev *dev)
{
 struct steam_device *steam = input_get_drvdata(dev);

 mutex_lock(&steam->mutex);
 if (!steam->client_opened && lizard_mode)
  steam_set_lizard_mode(steam, 0);
 mutex_unlock(&steam->mutex);
 return 0;
}
