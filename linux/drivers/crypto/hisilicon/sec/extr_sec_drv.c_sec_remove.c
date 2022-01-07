
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_dev_info {int * queues; } ;
struct platform_device {int dummy; } ;


 int SEC_Q_NUM ;
 struct sec_dev_info* platform_get_drvdata (struct platform_device*) ;
 int sec_algs_unregister () ;
 int sec_base_exit (struct sec_dev_info*) ;
 int sec_id_free (struct sec_dev_info*) ;
 int sec_queue_irq_uninit (int *) ;
 int sec_queue_unconfig (struct sec_dev_info*,int *) ;

__attribute__((used)) static int sec_remove(struct platform_device *pdev)
{
 struct sec_dev_info *info = platform_get_drvdata(pdev);
 int i;


 sec_id_free(info);

 sec_algs_unregister();

 for (i = 0; i < SEC_Q_NUM; i++) {
  sec_queue_irq_uninit(&info->queues[i]);
  sec_queue_unconfig(info, &info->queues[i]);
 }

 sec_base_exit(info);

 return 0;
}
