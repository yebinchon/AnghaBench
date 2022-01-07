
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct samsung_aes_variant {int dummy; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ driver_data; } ;


 int CONFIG_OF ;
 scalar_t__ IS_ENABLED (int ) ;
 struct of_device_id* of_match_node (int ,scalar_t__) ;
 TYPE_2__* platform_get_device_id (struct platform_device const*) ;
 int s5p_sss_dt_match ;

__attribute__((used)) static inline const struct samsung_aes_variant *find_s5p_sss_version
       (const struct platform_device *pdev)
{
 if (IS_ENABLED(CONFIG_OF) && (pdev->dev.of_node)) {
  const struct of_device_id *match;

  match = of_match_node(s5p_sss_dt_match,
     pdev->dev.of_node);
  return (const struct samsung_aes_variant *)match->data;
 }
 return (const struct samsung_aes_variant *)
   platform_get_device_id(pdev)->driver_data;
}
