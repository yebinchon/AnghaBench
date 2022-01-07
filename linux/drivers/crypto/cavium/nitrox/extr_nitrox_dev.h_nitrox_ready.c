
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int state; } ;


 scalar_t__ __NDEV_READY ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool nitrox_ready(struct nitrox_device *ndev)
{
 return atomic_read(&ndev->state) == __NDEV_READY;
}
