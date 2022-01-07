
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adp5589_kpad {unsigned short* keycode; TYPE_2__* client; TYPE_1__* var; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int keymapsize; } ;


 int EINVAL ;
 int KEY_EV_PRESSED ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int adp5589_get_evcode(struct adp5589_kpad *kpad, unsigned short key)
{
 int i;

 for (i = 0; i < kpad->var->keymapsize; i++)
  if (key == kpad->keycode[i])
   return (i + 1) | KEY_EV_PRESSED;

 dev_err(&kpad->client->dev, "RESET/UNLOCK key not in keycode map\n");

 return -EINVAL;
}
