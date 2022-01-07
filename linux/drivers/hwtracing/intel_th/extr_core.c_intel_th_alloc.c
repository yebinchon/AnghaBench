
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int start; } ;
struct intel_th_drvdata {int dummy; } ;
struct intel_th {int id; int major; int irq; int num_resources; struct resource* resource; struct intel_th_drvdata* drvdata; struct device* dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct intel_th* ERR_PTR (int) ;
 int GFP_KERNEL ;


 int IORESOURCE_TYPE_BITS ;
 int IRQF_SHARED ;
 int TH_POSSIBLE_OUTPUTS ;
 int __register_chrdev (int ,int ,int ,char*,int *) ;
 int __unregister_chrdev (int,int ,int ,char*) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct intel_th*) ;
 int dev_warn (struct device*,char*,int) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct intel_th*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int intel_th_free (struct intel_th*) ;
 int intel_th_ida ;
 int intel_th_irq ;
 int intel_th_output_fops ;
 int intel_th_populate (struct intel_th*) ;
 int kfree (struct intel_th*) ;
 struct intel_th* kzalloc (int,int ) ;
 int pm_runtime_allow (struct device*) ;
 int pm_runtime_no_callbacks (struct device*) ;
 int pm_runtime_put (struct device*) ;

struct intel_th *
intel_th_alloc(struct device *dev, struct intel_th_drvdata *drvdata,
        struct resource *devres, unsigned int ndevres)
{
 int err, r, nr_mmios = 0;
 struct intel_th *th;

 th = kzalloc(sizeof(*th), GFP_KERNEL);
 if (!th)
  return ERR_PTR(-ENOMEM);

 th->id = ida_simple_get(&intel_th_ida, 0, 0, GFP_KERNEL);
 if (th->id < 0) {
  err = th->id;
  goto err_alloc;
 }

 th->major = __register_chrdev(0, 0, TH_POSSIBLE_OUTPUTS,
          "intel_th/output", &intel_th_output_fops);
 if (th->major < 0) {
  err = th->major;
  goto err_ida;
 }
 th->irq = -1;
 th->dev = dev;
 th->drvdata = drvdata;

 for (r = 0; r < ndevres; r++)
  switch (devres[r].flags & IORESOURCE_TYPE_BITS) {
  case 128:
   th->resource[nr_mmios++] = devres[r];
   break;
  case 129:
   err = devm_request_irq(dev, devres[r].start,
            intel_th_irq, IRQF_SHARED,
            dev_name(dev), th);
   if (err)
    goto err_chrdev;

   if (th->irq == -1)
    th->irq = devres[r].start;
   break;
  default:
   dev_warn(dev, "Unknown resource type %lx\n",
     devres[r].flags);
   break;
  }

 th->num_resources = nr_mmios;

 dev_set_drvdata(dev, th);

 pm_runtime_no_callbacks(dev);
 pm_runtime_put(dev);
 pm_runtime_allow(dev);

 err = intel_th_populate(th);
 if (err) {

  intel_th_free(th);
  return ERR_PTR(err);
 }

 return th;

err_chrdev:
 __unregister_chrdev(th->major, 0, TH_POSSIBLE_OUTPUTS,
       "intel_th/output");

err_ida:
 ida_simple_remove(&intel_th_ida, th->id);

err_alloc:
 kfree(th);

 return ERR_PTR(err);
}
