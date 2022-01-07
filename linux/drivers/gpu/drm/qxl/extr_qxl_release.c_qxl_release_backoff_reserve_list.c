
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_release {int bos; int ticket; } ;


 scalar_t__ list_is_singular (int *) ;
 int ttm_eu_backoff_reservation (int *,int *) ;

void qxl_release_backoff_reserve_list(struct qxl_release *release)
{


 if (list_is_singular(&release->bos))
  return;

 ttm_eu_backoff_reservation(&release->ticket, &release->bos);
}
