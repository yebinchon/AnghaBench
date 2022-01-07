
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* b; } ;
struct hv_device {TYPE_1__ dev_type; } ;


 int VMBUS_ALIAS_LEN ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void print_alias_name(struct hv_device *hv_dev, char *alias_name)
{
 int i;
 for (i = 0; i < VMBUS_ALIAS_LEN; i += 2)
  sprintf(&alias_name[i], "%02x", hv_dev->dev_type.b[i/2]);
}
