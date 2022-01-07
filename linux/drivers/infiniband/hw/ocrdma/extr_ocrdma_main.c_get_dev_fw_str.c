
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* fw_ver; } ;
struct ocrdma_dev {TYPE_1__ attr; } ;
struct ib_device {int dummy; } ;


 int IB_FW_VERSION_NAME_MAX ;
 struct ocrdma_dev* get_ocrdma_dev (struct ib_device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static void get_dev_fw_str(struct ib_device *device, char *str)
{
 struct ocrdma_dev *dev = get_ocrdma_dev(device);

 snprintf(str, IB_FW_VERSION_NAME_MAX, "%s", &dev->attr.fw_ver[0]);
}
