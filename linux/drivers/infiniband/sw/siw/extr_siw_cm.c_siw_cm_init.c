
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int create_singlethread_workqueue (char*) ;
 int siw_cm_wq ;

int siw_cm_init(void)
{



 siw_cm_wq = create_singlethread_workqueue("siw_cm_wq");
 if (!siw_cm_wq)
  return -ENOMEM;

 return 0;
}
