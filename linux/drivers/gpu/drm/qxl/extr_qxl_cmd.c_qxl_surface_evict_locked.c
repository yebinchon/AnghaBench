
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int dummy; } ;
struct qxl_bo {int dummy; } ;


 int qxl_hw_surface_dealloc (struct qxl_device*,struct qxl_bo*) ;
 int qxl_update_surface (struct qxl_device*,struct qxl_bo*) ;

__attribute__((used)) static void qxl_surface_evict_locked(struct qxl_device *qdev, struct qxl_bo *surf, bool do_update_area)
{

 if (do_update_area)
  qxl_update_surface(qdev, surf);


 qxl_hw_surface_dealloc(qdev, surf);
}
