
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxio_rdev {int flags; } ;


 int CXIO_ERROR_FATAL ;

__attribute__((used)) static inline int cxio_fatal_error(struct cxio_rdev *rdev_p)
{
 return rdev_p->flags & CXIO_ERROR_FATAL;
}
