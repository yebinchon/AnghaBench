
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IB_FW_VERSION_NAME_MAX ;
 int ib_get_device_fw_str (struct ib_device*,char*) ;
 struct ib_device* rdma_device_to_ibdev (struct device*) ;
 int strlcat (char*,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t fw_ver_show(struct device *device, struct device_attribute *attr,
      char *buf)
{
 struct ib_device *dev = rdma_device_to_ibdev(device);

 ib_get_device_fw_str(dev, buf);
 strlcat(buf, "\n", IB_FW_VERSION_NAME_MAX);
 return strlen(buf);
}
