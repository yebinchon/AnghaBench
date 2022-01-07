
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_release {int dummy; } ;
struct qxl_device {int dummy; } ;


 int qxl_release_free (struct qxl_device*,struct qxl_release*) ;

__attribute__((used)) static void
free_drawable(struct qxl_device *qdev, struct qxl_release *release)
{
 qxl_release_free(qdev, release);
}
