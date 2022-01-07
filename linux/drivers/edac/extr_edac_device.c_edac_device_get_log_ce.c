
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int log_ce; } ;



__attribute__((used)) static inline int edac_device_get_log_ce(struct edac_device_ctl_info *edac_dev)
{
 return edac_dev->log_ce;
}
