
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int firmware; } ;
struct falcon {int dev; TYPE_1__ firmware; } ;


 int request_firmware (int *,char const*,int ) ;

int falcon_read_firmware(struct falcon *falcon, const char *name)
{
 int err;


 err = request_firmware(&falcon->firmware.firmware, name, falcon->dev);
 if (err < 0)
  return err;

 return 0;
}
