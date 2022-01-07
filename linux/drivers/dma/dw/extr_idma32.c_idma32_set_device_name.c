
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_dma {int name; } ;


 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static void idma32_set_device_name(struct dw_dma *dw, int id)
{
 snprintf(dw->name, sizeof(dw->name), "idma32:dmac%d", id);
}
