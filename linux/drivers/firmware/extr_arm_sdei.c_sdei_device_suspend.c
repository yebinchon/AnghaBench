
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int _ipi_mask_cpu ;
 int on_each_cpu (int ,int *,int) ;

__attribute__((used)) static int sdei_device_suspend(struct device *dev)
{
 on_each_cpu(_ipi_mask_cpu, ((void*)0), 1);

 return 0;
}
