
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_rng {unsigned long skip_init; int clk; int base; int lock; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int crypto_register_rng (int *) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ device_get_match_data (int *) ;
 int devm_clk_get (int *,char*) ;
 struct qcom_rng* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int has_acpi_companion (int *) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct qcom_rng*) ;
 int qcom_rng_alg ;
 struct qcom_rng* qcom_rng_dev ;

__attribute__((used)) static int qcom_rng_probe(struct platform_device *pdev)
{
 struct qcom_rng *rng;
 int ret;

 rng = devm_kzalloc(&pdev->dev, sizeof(*rng), GFP_KERNEL);
 if (!rng)
  return -ENOMEM;

 platform_set_drvdata(pdev, rng);
 mutex_init(&rng->lock);

 rng->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(rng->base))
  return PTR_ERR(rng->base);


 if (!has_acpi_companion(&pdev->dev)) {
  rng->clk = devm_clk_get(&pdev->dev, "core");
  if (IS_ERR(rng->clk))
   return PTR_ERR(rng->clk);
 }


 rng->skip_init = (unsigned long)device_get_match_data(&pdev->dev);

 qcom_rng_dev = rng;
 ret = crypto_register_rng(&qcom_rng_alg);
 if (ret) {
  dev_err(&pdev->dev, "Register crypto rng failed: %d\n", ret);
  qcom_rng_dev = ((void*)0);
 }

 return ret;
}
