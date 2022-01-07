
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int active; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline struct mddev *mddev_get(struct mddev *mddev)
{
 atomic_inc(&mddev->active);
 return mddev;
}
