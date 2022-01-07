
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct msu_sink_private {int dev; } ;


 int intel_th_msc_window_unlock (int ,struct sg_table*) ;

__attribute__((used)) static int msu_sink_ready(void *data, struct sg_table *sgt, size_t bytes)
{
 struct msu_sink_private *priv = data;

 intel_th_msc_window_unlock(priv->dev, sgt);

 return 0;
}
