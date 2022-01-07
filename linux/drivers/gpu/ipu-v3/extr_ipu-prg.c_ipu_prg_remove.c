
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ipu_prg {int list; } ;


 int ipu_prg_list_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipu_prg* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ipu_prg_remove(struct platform_device *pdev)
{
 struct ipu_prg *prg = platform_get_drvdata(pdev);

 mutex_lock(&ipu_prg_list_mutex);
 list_del(&prg->list);
 mutex_unlock(&ipu_prg_list_mutex);

 return 0;
}
