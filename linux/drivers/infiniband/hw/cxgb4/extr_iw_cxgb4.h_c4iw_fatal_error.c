
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_rdev {int flags; } ;


 int T4_FATAL_ERROR ;

__attribute__((used)) static inline int c4iw_fatal_error(struct c4iw_rdev *rdev)
{
 return rdev->flags & T4_FATAL_ERROR;
}
