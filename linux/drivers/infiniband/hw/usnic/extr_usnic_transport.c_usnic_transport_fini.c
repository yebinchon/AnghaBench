
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (int ) ;
 int roce_bitmap ;

void usnic_transport_fini(void)
{
 kfree(roce_bitmap);
}
