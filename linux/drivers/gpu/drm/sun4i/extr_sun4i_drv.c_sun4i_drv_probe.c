
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct endpoint_list {int fifo; } ;
struct device_node {int dummy; } ;
struct component_match {int dummy; } ;


 int INIT_KFIFO (int ) ;
 int component_master_add_with_match (TYPE_1__*,int *,struct component_match*) ;
 scalar_t__ kfifo_get (int *,struct device_node**) ;
 int kfifo_put (int *,struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;
 int sun4i_drv_add_endpoints (TYPE_1__*,struct endpoint_list*,struct component_match**,struct device_node*) ;
 int sun4i_drv_master_ops ;

__attribute__((used)) static int sun4i_drv_probe(struct platform_device *pdev)
{
 struct component_match *match = ((void*)0);
 struct device_node *np = pdev->dev.of_node, *endpoint;
 struct endpoint_list list;
 int i, ret, count = 0;

 INIT_KFIFO(list.fifo);

 for (i = 0;; i++) {
  struct device_node *pipeline = of_parse_phandle(np,
        "allwinner,pipelines",
        i);
  if (!pipeline)
   break;

  kfifo_put(&list.fifo, pipeline);
 }

 while (kfifo_get(&list.fifo, &endpoint)) {

  ret = sun4i_drv_add_endpoints(&pdev->dev, &list, &match,
           endpoint);


  if (ret < 0)
   return ret;

  count += ret;
 }

 if (count)
  return component_master_add_with_match(&pdev->dev,
             &sun4i_drv_master_ops,
             match);
 else
  return 0;
}
