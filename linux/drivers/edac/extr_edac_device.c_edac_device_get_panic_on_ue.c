
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int panic_on_ue; } ;



__attribute__((used)) static inline int edac_device_get_panic_on_ue(struct edac_device_ctl_info
     *edac_dev)
{
 return edac_dev->panic_on_ue;
}
