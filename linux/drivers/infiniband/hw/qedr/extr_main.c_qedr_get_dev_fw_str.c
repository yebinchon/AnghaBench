
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int fw_ver; } ;
struct qedr_dev {TYPE_1__ attr; } ;
struct ib_device {int dummy; } ;


 int IB_FW_VERSION_NAME_MAX ;
 struct qedr_dev* get_qedr_dev (struct ib_device*) ;
 int snprintf (char*,int ,char*,int,int,int,int) ;

__attribute__((used)) static void qedr_get_dev_fw_str(struct ib_device *ibdev, char *str)
{
 struct qedr_dev *qedr = get_qedr_dev(ibdev);
 u32 fw_ver = (u32)qedr->attr.fw_ver;

 snprintf(str, IB_FW_VERSION_NAME_MAX, "%d.%d.%d.%d",
   (fw_ver >> 24) & 0xFF, (fw_ver >> 16) & 0xFF,
   (fw_ver >> 8) & 0xFF, fw_ver & 0xFF);
}
