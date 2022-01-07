
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rvt_dev_info {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_ibdev {int dummy; } ;
struct TYPE_2__ {int dc8051_ver; } ;


 int IB_FW_VERSION_NAME_MAX ;
 int dc8051_ver_maj (int ) ;
 int dc8051_ver_min (int ) ;
 int dc8051_ver_patch (int ) ;
 TYPE_1__* dd_from_dev (struct hfi1_ibdev*) ;
 struct hfi1_ibdev* dev_from_rdi (struct rvt_dev_info*) ;
 struct rvt_dev_info* ib_to_rvt (struct ib_device*) ;
 int snprintf (char*,int ,char*,int,int,int) ;

__attribute__((used)) static void hfi1_get_dev_fw_str(struct ib_device *ibdev, char *str)
{
 struct rvt_dev_info *rdi = ib_to_rvt(ibdev);
 struct hfi1_ibdev *dev = dev_from_rdi(rdi);
 u32 ver = dd_from_dev(dev)->dc8051_ver;

 snprintf(str, IB_FW_VERSION_NAME_MAX, "%u.%u.%u", dc8051_ver_maj(ver),
   dc8051_ver_min(ver), dc8051_ver_patch(ver));
}
