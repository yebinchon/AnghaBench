
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_q_vector {struct nitrox_device* ndev; } ;
struct nitrox_device {scalar_t__ mode; } ;


 scalar_t__ __NDEV_MODE_PF ;

__attribute__((used)) static void nps_core_int_tasklet(unsigned long data)
{
 struct nitrox_q_vector *qvec = (void *)(uintptr_t)(data);
 struct nitrox_device *ndev = qvec->ndev;


 if (ndev->mode == __NDEV_MODE_PF) {
 } else {




 }
}
