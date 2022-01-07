
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {char* compatible; } ;
struct device_node {int dummy; } ;


 struct device_node* of_find_matching_node (int *,struct of_device_id const*) ;
 int of_node_put (struct device_node*) ;
 int tegra_ahb_enable_smmu (struct device_node*) ;

__attribute__((used)) static void tegra_smmu_ahb_enable(void)
{
 static const struct of_device_id ahb_match[] = {
  { .compatible = "nvidia,tegra30-ahb", },
  { }
 };
 struct device_node *ahb;

 ahb = of_find_matching_node(((void*)0), ahb_match);
 if (ahb) {
  tegra_ahb_enable_smmu(ahb);
  of_node_put(ahb);
 }
}
