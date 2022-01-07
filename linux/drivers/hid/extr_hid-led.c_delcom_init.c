
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int family_code; } ;
struct TYPE_3__ {int cmd; } ;
union delcom_packet {TYPE_2__ fw; int data; TYPE_1__ rx; } ;
struct hidled_device {int dummy; } ;


 int ENODEV ;
 int hidled_recv (struct hidled_device*,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int delcom_init(struct hidled_device *ldev)
{
 union delcom_packet dp = { .rx.cmd = 104 };
 int ret;

 ret = hidled_recv(ldev, dp.data);
 if (ret)
  return ret;




 return le16_to_cpu(dp.fw.family_code) == 2 ? 0 : -ENODEV;
}
