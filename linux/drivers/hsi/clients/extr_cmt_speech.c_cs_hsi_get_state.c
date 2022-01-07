
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_hsi_iface {unsigned int iface_state; } ;



__attribute__((used)) static unsigned int cs_hsi_get_state(struct cs_hsi_iface *hi)
{
 return hi->iface_state;
}
