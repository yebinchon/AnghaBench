
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ls_scfg_msi {int msir_num; int parent; int msi_domain; int * msir; } ;


 int irq_domain_remove (int ) ;
 int ls_scfg_msi_teardown_hwirq (int *) ;
 struct ls_scfg_msi* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int ls_scfg_msi_remove(struct platform_device *pdev)
{
 struct ls_scfg_msi *msi_data = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < msi_data->msir_num; i++)
  ls_scfg_msi_teardown_hwirq(&msi_data->msir[i]);

 irq_domain_remove(msi_data->msi_domain);
 irq_domain_remove(msi_data->parent);

 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
