
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_device {int dev; } ;


 unsigned int ARRAY_SIZE (int *) ;
 unsigned int CCP_MAX_ERROR_CODE ;
 scalar_t__ WARN_ON (int) ;
 int * ccp_error_codes ;
 int dev_err (int ,char*,unsigned int,...) ;

void ccp_log_error(struct ccp_device *d, unsigned int e)
{
 if (WARN_ON(e >= CCP_MAX_ERROR_CODE))
  return;

 if (e < ARRAY_SIZE(ccp_error_codes))
  dev_err(d->dev, "CCP error %d: %s\n", e, ccp_error_codes[e]);
 else
  dev_err(d->dev, "CCP error %d: Unknown Error\n", e);
}
