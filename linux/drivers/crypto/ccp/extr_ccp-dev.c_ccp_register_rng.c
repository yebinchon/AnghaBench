
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read; int name; } ;
struct ccp_device {int dev; TYPE_1__ hwrng; int rngname; } ;


 int ccp_trng_read ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int hwrng_register (TYPE_1__*) ;

int ccp_register_rng(struct ccp_device *ccp)
{
 int ret = 0;

 dev_dbg(ccp->dev, "Registering RNG...\n");

 ccp->hwrng.name = ccp->rngname;
 ccp->hwrng.read = ccp_trng_read;
 ret = hwrng_register(&ccp->hwrng);
 if (ret)
  dev_err(ccp->dev, "error registering hwrng (%d)\n", ret);

 return ret;
}
