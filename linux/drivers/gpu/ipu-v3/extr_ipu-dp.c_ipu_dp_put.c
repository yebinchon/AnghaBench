
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_dp {int in_use; } ;



void ipu_dp_put(struct ipu_dp *dp)
{
 dp->in_use = 0;
}
