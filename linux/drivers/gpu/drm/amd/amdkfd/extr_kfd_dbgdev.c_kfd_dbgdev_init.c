
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int dummy; } ;
struct kfd_dbgdev {int type; int dbgdev_address_watch; int dbgdev_wave_control; int dbgdev_unregister; int dbgdev_register; int * pqm; int * kq; struct kfd_dev* dev; } ;
typedef enum DBGDEV_TYPE { ____Placeholder_DBGDEV_TYPE } DBGDEV_TYPE ;




 int dbgdev_address_watch_diq ;
 int dbgdev_address_watch_nodiq ;
 int dbgdev_register_diq ;
 int dbgdev_register_nodiq ;
 int dbgdev_unregister_diq ;
 int dbgdev_unregister_nodiq ;
 int dbgdev_wave_control_diq ;
 int dbgdev_wave_control_nodiq ;

void kfd_dbgdev_init(struct kfd_dbgdev *pdbgdev, struct kfd_dev *pdev,
   enum DBGDEV_TYPE type)
{
 pdbgdev->dev = pdev;
 pdbgdev->kq = ((void*)0);
 pdbgdev->type = type;
 pdbgdev->pqm = ((void*)0);

 switch (type) {
 case 128:
  pdbgdev->dbgdev_register = dbgdev_register_nodiq;
  pdbgdev->dbgdev_unregister = dbgdev_unregister_nodiq;
  pdbgdev->dbgdev_wave_control = dbgdev_wave_control_nodiq;
  pdbgdev->dbgdev_address_watch = dbgdev_address_watch_nodiq;
  break;
 case 129:
 default:
  pdbgdev->dbgdev_register = dbgdev_register_diq;
  pdbgdev->dbgdev_unregister = dbgdev_unregister_diq;
  pdbgdev->dbgdev_wave_control = dbgdev_wave_control_diq;
  pdbgdev->dbgdev_address_watch = dbgdev_address_watch_diq;
  break;
 }

}
