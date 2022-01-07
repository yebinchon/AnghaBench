
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_cm_id {int dummy; } ;


 int destroy_cm_id (struct iw_cm_id*) ;

void iw_destroy_cm_id(struct iw_cm_id *cm_id)
{
 destroy_cm_id(cm_id);
}
