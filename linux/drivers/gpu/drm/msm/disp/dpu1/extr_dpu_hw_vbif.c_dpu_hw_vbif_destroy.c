
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_vbif {int dummy; } ;


 int kfree (struct dpu_hw_vbif*) ;

void dpu_hw_vbif_destroy(struct dpu_hw_vbif *vbif)
{
 kfree(vbif);
}
