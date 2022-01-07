
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct kempld_device_data {int dummy; } ;


 int KEMPLD_GPIO_EVT_LVL_EDGE ;
 int __ffs (int) ;
 int kempld_get_mutex (struct kempld_device_data*) ;
 int kempld_read16 (struct kempld_device_data*,int ) ;
 int kempld_release_mutex (struct kempld_device_data*) ;
 int kempld_write16 (struct kempld_device_data*,int ,int) ;

__attribute__((used)) static int kempld_gpio_pincount(struct kempld_device_data *pld)
{
 u16 evt, evt_back;

 kempld_get_mutex(pld);


 evt_back = kempld_read16(pld, KEMPLD_GPIO_EVT_LVL_EDGE);

 kempld_write16(pld, KEMPLD_GPIO_EVT_LVL_EDGE, 0x0000);

 evt = kempld_read16(pld, KEMPLD_GPIO_EVT_LVL_EDGE);

 kempld_write16(pld, KEMPLD_GPIO_EVT_LVL_EDGE, evt_back);

 kempld_release_mutex(pld);

 return evt ? __ffs(evt) : 16;
}
