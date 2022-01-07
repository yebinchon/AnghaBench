
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_pd {int usecount; } ;


 int atomic_inc (int *) ;

void i40iw_add_pdusecount(struct i40iw_pd *iwpd)
{
 atomic_inc(&iwpd->usecount);
}
