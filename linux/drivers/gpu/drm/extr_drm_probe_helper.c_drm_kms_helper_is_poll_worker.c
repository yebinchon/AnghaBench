
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {scalar_t__ func; } ;


 struct work_struct* current_work () ;
 scalar_t__ output_poll_execute ;

bool drm_kms_helper_is_poll_worker(void)
{
 struct work_struct *work = current_work();

 return work && work->func == output_poll_execute;
}
