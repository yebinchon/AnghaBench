
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_vfdev {int state; } ;


 scalar_t__ __NDEV_READY ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool nitrox_vfdev_ready(struct nitrox_vfdev *vfdev)
{
 return atomic_read(&vfdev->state) == __NDEV_READY;
}
