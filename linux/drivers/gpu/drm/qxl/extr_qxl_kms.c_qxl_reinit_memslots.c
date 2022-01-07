
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int surfaces_slot; int main_slot; } ;


 int setup_hw_slot (struct qxl_device*,int *) ;

void qxl_reinit_memslots(struct qxl_device *qdev)
{
 setup_hw_slot(qdev, &qdev->main_slot);
 setup_hw_slot(qdev, &qdev->surfaces_slot);
}
