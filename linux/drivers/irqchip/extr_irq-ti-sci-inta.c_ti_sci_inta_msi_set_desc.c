
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int id; } ;
struct TYPE_4__ {int dev_index; } ;
struct msi_desc {TYPE_1__ inta; int dev; } ;
struct TYPE_5__ {int hwirq; struct msi_desc* desc; } ;
typedef TYPE_2__ msi_alloc_info_t ;


 int TO_HWIRQ (int ,int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void ti_sci_inta_msi_set_desc(msi_alloc_info_t *arg,
         struct msi_desc *desc)
{
 struct platform_device *pdev = to_platform_device(desc->dev);

 arg->desc = desc;
 arg->hwirq = TO_HWIRQ(pdev->id, desc->inta.dev_index);
}
