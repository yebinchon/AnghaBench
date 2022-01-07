
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_csi {int module; int ipu; } ;


 int ipu_module_disable (int ,int ) ;

int ipu_csi_disable(struct ipu_csi *csi)
{
 ipu_module_disable(csi->ipu, csi->module);

 return 0;
}
