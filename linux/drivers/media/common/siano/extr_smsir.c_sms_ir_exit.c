
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct smscore_device_t {TYPE_1__ ir; } ;


 int pr_debug (char*) ;
 int rc_unregister_device (int ) ;

void sms_ir_exit(struct smscore_device_t *coredev)
{
 rc_unregister_device(coredev->ir.dev);

 pr_debug("\n");
}
