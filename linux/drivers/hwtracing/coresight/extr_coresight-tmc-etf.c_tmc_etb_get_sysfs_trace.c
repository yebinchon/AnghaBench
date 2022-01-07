
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {scalar_t__ len; char* buf; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ loff_t ;



ssize_t tmc_etb_get_sysfs_trace(struct tmc_drvdata *drvdata,
    loff_t pos, size_t len, char **bufpp)
{
 ssize_t actual = len;


 if (pos + actual > drvdata->len)
  actual = drvdata->len - pos;
 if (actual > 0)
  *bufpp = drvdata->buf + pos;
 return actual;
}
