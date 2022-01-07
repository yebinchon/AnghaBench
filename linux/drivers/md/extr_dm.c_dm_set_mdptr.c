
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {void* interface_ptr; } ;



void dm_set_mdptr(struct mapped_device *md, void *ptr)
{
 md->interface_ptr = ptr;
}
