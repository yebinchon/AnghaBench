
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {struct cppi_glue_infos const* data; } ;
struct device {int of_node; } ;
struct cppi_glue_infos {int dummy; } ;


 int cppi41_dma_ids ;
 struct of_device_id* of_match_node (int ,int ) ;

__attribute__((used)) static const struct cppi_glue_infos *get_glue_info(struct device *dev)
{
 const struct of_device_id *of_id;

 of_id = of_match_node(cppi41_dma_ids, dev->of_node);
 if (!of_id)
  return ((void*)0);
 return of_id->data;
}
