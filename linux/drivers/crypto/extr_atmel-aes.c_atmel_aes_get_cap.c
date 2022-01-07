
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_dualbuff; int has_cfb64; int has_ctr32; int has_gcm; int has_xts; int has_authenc; int max_burst_size; } ;
struct atmel_aes_dev {int hw_version; int dev; TYPE_1__ caps; } ;


 int dev_warn (int ,char*) ;

__attribute__((used)) static void atmel_aes_get_cap(struct atmel_aes_dev *dd)
{
 dd->caps.has_dualbuff = 0;
 dd->caps.has_cfb64 = 0;
 dd->caps.has_ctr32 = 0;
 dd->caps.has_gcm = 0;
 dd->caps.has_xts = 0;
 dd->caps.has_authenc = 0;
 dd->caps.max_burst_size = 1;


 switch (dd->hw_version & 0xff0) {
 case 0x500:
  dd->caps.has_dualbuff = 1;
  dd->caps.has_cfb64 = 1;
  dd->caps.has_ctr32 = 1;
  dd->caps.has_gcm = 1;
  dd->caps.has_xts = 1;
  dd->caps.has_authenc = 1;
  dd->caps.max_burst_size = 4;
  break;
 case 0x200:
  dd->caps.has_dualbuff = 1;
  dd->caps.has_cfb64 = 1;
  dd->caps.has_ctr32 = 1;
  dd->caps.has_gcm = 1;
  dd->caps.max_burst_size = 4;
  break;
 case 0x130:
  dd->caps.has_dualbuff = 1;
  dd->caps.has_cfb64 = 1;
  dd->caps.max_burst_size = 4;
  break;
 case 0x120:
  break;
 default:
  dev_warn(dd->dev,
    "Unmanaged aes version, set minimum capabilities\n");
  break;
 }
}
