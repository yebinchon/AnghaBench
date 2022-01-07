
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ipu_pre {scalar_t__ buffer_virt; int iram; int clk_axi; int list; } ;


 int IPU_PRE_MAX_WIDTH ;
 int IPU_PRE_NUM_SCANLINES ;
 int available_pres ;
 int clk_disable_unprepare (int ) ;
 int gen_pool_free (int ,unsigned long,int) ;
 int ipu_pre_list_mutex ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipu_pre* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ipu_pre_remove(struct platform_device *pdev)
{
 struct ipu_pre *pre = platform_get_drvdata(pdev);

 mutex_lock(&ipu_pre_list_mutex);
 list_del(&pre->list);
 available_pres--;
 mutex_unlock(&ipu_pre_list_mutex);

 clk_disable_unprepare(pre->clk_axi);

 if (pre->buffer_virt)
  gen_pool_free(pre->iram, (unsigned long)pre->buffer_virt,
         IPU_PRE_MAX_WIDTH * IPU_PRE_NUM_SCANLINES * 4);
 return 0;
}
