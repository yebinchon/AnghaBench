
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev_bar {int dummy; } ;
struct usnic_vnic {struct vnic_dev_bar* bar; } ;


 int ARRAY_SIZE (struct vnic_dev_bar*) ;

struct vnic_dev_bar *usnic_vnic_get_bar(struct usnic_vnic *vnic,
    int bar_num)
{
 return (bar_num < ARRAY_SIZE(vnic->bar)) ? &vnic->bar[bar_num] : ((void*)0);
}
