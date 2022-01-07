
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_release {int dummy; } ;
struct qxl_drawable {int dummy; } ;
struct qxl_device {int dummy; } ;


 int QXL_RELEASE_DRAWABLE ;
 int qxl_alloc_release_reserved (struct qxl_device*,int,int ,struct qxl_release**,int *) ;

__attribute__((used)) static int
alloc_drawable(struct qxl_device *qdev, struct qxl_release **release)
{
 return qxl_alloc_release_reserved(qdev, sizeof(struct qxl_drawable),
       QXL_RELEASE_DRAWABLE, release, ((void*)0));
}
