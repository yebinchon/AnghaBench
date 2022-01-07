
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
struct ccp_device {TYPE_1__ hwrng; } ;


 int hwrng_unregister (TYPE_1__*) ;

void ccp_unregister_rng(struct ccp_device *ccp)
{
 if (ccp->hwrng.name)
  hwrng_unregister(&ccp->hwrng);
}
