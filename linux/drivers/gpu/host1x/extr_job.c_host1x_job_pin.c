
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_job_gather {int handled; scalar_t__ bo; int base; } ;
struct host1x_job {unsigned int num_gathers; struct host1x_job_gather* gathers; int * gather_addr_phys; } ;
struct host1x {int dummy; } ;
struct device {int parent; } ;


 int CONFIG_TEGRA_HOST1X_FIREWALL ;
 scalar_t__ IS_ENABLED (int ) ;
 int copy_gathers (struct host1x_job*,struct device*) ;
 struct host1x* dev_get_drvdata (int ) ;
 int do_relocs (struct host1x_job*,struct host1x_job_gather*) ;
 int host1x_job_unpin (struct host1x_job*) ;
 int pin_job (struct host1x*,struct host1x_job*) ;
 int wmb () ;

int host1x_job_pin(struct host1x_job *job, struct device *dev)
{
 int err;
 unsigned int i, j;
 struct host1x *host = dev_get_drvdata(dev->parent);


 err = pin_job(host, job);
 if (err)
  goto out;

 if (IS_ENABLED(CONFIG_TEGRA_HOST1X_FIREWALL)) {
  err = copy_gathers(job, dev);
  if (err)
   goto out;
 }


 for (i = 0; i < job->num_gathers; i++) {
  struct host1x_job_gather *g = &job->gathers[i];


  if (g->handled)
   continue;


  if (!IS_ENABLED(CONFIG_TEGRA_HOST1X_FIREWALL))
   g->base = job->gather_addr_phys[i];

  for (j = i + 1; j < job->num_gathers; j++) {
   if (job->gathers[j].bo == g->bo) {
    job->gathers[j].handled = 1;
    job->gathers[j].base = g->base;
   }
  }

  err = do_relocs(job, g);
  if (err)
   break;
 }

out:
 if (err)
  host1x_job_unpin(job);
 wmb();

 return err;
}
