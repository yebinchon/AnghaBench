
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {unsigned long flags; } ;



__attribute__((used)) static inline void mddev_clear_unsupported_flags(struct mddev *mddev,
 unsigned long unsupported_flags)
{
 mddev->flags &= ~unsupported_flags;
}
