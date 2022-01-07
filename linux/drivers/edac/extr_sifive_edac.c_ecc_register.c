
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int notifier_call; } ;
struct sifive_edac_priv {TYPE_2__* dci; TYPE_1__ notifier; } ;
struct platform_device {int dev; } ;
struct TYPE_8__ {char* mod_name; int * dev; void* dev_name; void* ctl_name; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int dev_err (int *,char*) ;
 void* dev_name (int *) ;
 struct sifive_edac_priv* devm_kzalloc (int *,int,int ) ;
 int ecc_err_event ;
 scalar_t__ edac_device_add_device (TYPE_2__*) ;
 TYPE_2__* edac_device_alloc_ctl_info (int ,char*,int,char*,int,int,int *,int ,int ) ;
 int edac_device_alloc_index () ;
 int edac_device_free_ctl_info (TYPE_2__*) ;
 int platform_set_drvdata (struct platform_device*,struct sifive_edac_priv*) ;
 int register_sifive_l2_error_notifier (TYPE_1__*) ;

__attribute__((used)) static int ecc_register(struct platform_device *pdev)
{
 struct sifive_edac_priv *p;

 p = devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 p->notifier.notifier_call = ecc_err_event;
 platform_set_drvdata(pdev, p);

 p->dci = edac_device_alloc_ctl_info(0, "sifive_ecc", 1, "sifive_ecc",
         1, 1, ((void*)0), 0,
         edac_device_alloc_index());
 if (IS_ERR(p->dci))
  return PTR_ERR(p->dci);

 p->dci->dev = &pdev->dev;
 p->dci->mod_name = "Sifive ECC Manager";
 p->dci->ctl_name = dev_name(&pdev->dev);
 p->dci->dev_name = dev_name(&pdev->dev);

 if (edac_device_add_device(p->dci)) {
  dev_err(p->dci->dev, "failed to register with EDAC core\n");
  goto err;
 }

 register_sifive_l2_error_notifier(&p->notifier);

 return 0;

err:
 edac_device_free_ctl_info(p->dci);

 return -ENXIO;
}
