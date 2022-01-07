
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scpi_drvinfo {TYPE_1__** dvfs; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {struct TYPE_2__* opps; } ;


 int MAX_DVFS_DOMAINS ;
 int kfree (TYPE_1__*) ;
 struct scpi_drvinfo* platform_get_drvdata (struct platform_device*) ;
 int * scpi_info ;

__attribute__((used)) static int scpi_remove(struct platform_device *pdev)
{
 int i;
 struct scpi_drvinfo *info = platform_get_drvdata(pdev);

 scpi_info = ((void*)0);

 for (i = 0; i < MAX_DVFS_DOMAINS && info->dvfs[i]; i++) {
  kfree(info->dvfs[i]->opps);
  kfree(info->dvfs[i]);
 }

 return 0;
}
