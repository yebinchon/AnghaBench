
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int hifn_alg_alloc (struct hifn_device*,int *) ;
 int * hifn_alg_templates ;
 int hifn_unregister_alg (struct hifn_device*) ;

__attribute__((used)) static int hifn_register_alg(struct hifn_device *dev)
{
 int i, err;

 for (i = 0; i < ARRAY_SIZE(hifn_alg_templates); ++i) {
  err = hifn_alg_alloc(dev, &hifn_alg_templates[i]);
  if (err)
   goto err_out_exit;
 }

 return 0;

err_out_exit:
 hifn_unregister_alg(dev);
 return err;
}
