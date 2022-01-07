
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct scx200_acb_iface {unsigned long base; TYPE_1__ adapter; } ;
struct device {int dummy; } ;


 int kfree (struct scx200_acb_iface*) ;
 int pr_err (char*,unsigned long,unsigned long) ;
 int release_region (unsigned long,int) ;
 int request_region (unsigned long,int,int ) ;
 int scx200_acb_create (struct scx200_acb_iface*) ;
 struct scx200_acb_iface* scx200_create_iface (char const*,struct device*,int) ;

__attribute__((used)) static struct scx200_acb_iface *scx200_create_dev(const char *text,
  unsigned long base, int index, struct device *dev)
{
 struct scx200_acb_iface *iface;
 int rc;

 iface = scx200_create_iface(text, dev, index);

 if (iface == ((void*)0))
  return ((void*)0);

 if (!request_region(base, 8, iface->adapter.name)) {
  pr_err("can't allocate io 0x%lx-0x%lx\n", base, base + 8 - 1);
  goto errout_free;
 }

 iface->base = base;
 rc = scx200_acb_create(iface);

 if (rc == 0)
  return iface;

 release_region(base, 8);
 errout_free:
 kfree(iface);
 return ((void*)0);
}
