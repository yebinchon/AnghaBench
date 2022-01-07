
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int of_node; } ;


 int OMI_QMAN ;
 int OMI_QMAN_PRIV ;
 scalar_t__ of_device_is_compatible (int ,char*) ;

void get_ome_index(u32 *omi_index, struct device *dev)
{
 if (of_device_is_compatible(dev->of_node, "fsl,qman-portal"))
  *omi_index = OMI_QMAN;
 if (of_device_is_compatible(dev->of_node, "fsl,qman"))
  *omi_index = OMI_QMAN_PRIV;
}
