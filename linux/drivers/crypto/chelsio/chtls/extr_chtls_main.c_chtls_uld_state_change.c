
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int release; int kref; } ;
struct chtls_dev {TYPE_1__ tlsdev; int list; } ;
typedef enum cxgb4_state { ____Placeholder_cxgb4_state } cxgb4_state ;






 int cdev_mutex ;
 int chtls_register_dev (struct chtls_dev*) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int chtls_uld_state_change(void *handle, enum cxgb4_state new_state)
{
 struct chtls_dev *cdev = handle;

 switch (new_state) {
 case 128:
  chtls_register_dev(cdev);
  break;
 case 130:
  break;
 case 129:
  break;
 case 131:
  mutex_lock(&cdev_mutex);
  list_del(&cdev->list);
  mutex_unlock(&cdev_mutex);
  kref_put(&cdev->tlsdev.kref, cdev->tlsdev.release);
  break;
 default:
  break;
 }
 return 0;
}
