
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_client {unsigned long** evmasks; } ;


 unsigned int EV_CNT ;
 unsigned int EV_SYN ;
 size_t evdev_get_mask_cnt (unsigned int) ;
 int test_bit (unsigned int,unsigned long*) ;

__attribute__((used)) static bool __evdev_is_filtered(struct evdev_client *client,
    unsigned int type,
    unsigned int code)
{
 unsigned long *mask;
 size_t cnt;


 if (type == EV_SYN || type >= EV_CNT)
  return 0;


 mask = client->evmasks[0];
 if (mask && !test_bit(type, mask))
  return 1;


 cnt = evdev_get_mask_cnt(type);
 if (!cnt || code >= cnt)
  return 0;

 mask = client->evmasks[type];
 return mask && !test_bit(code, mask);
}
