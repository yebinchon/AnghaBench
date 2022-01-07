
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_fcu_priv {int fan_list; struct i2c_client* i2c; int lock; int ref; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_set_drvdata (int *,struct wf_fcu_priv*) ;
 int kfree (struct wf_fcu_priv*) ;
 int kref_init (int *) ;
 struct wf_fcu_priv* kzalloc (int,int ) ;
 scalar_t__ list_empty (int *) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int wf_fcu_default_fans (struct wf_fcu_priv*) ;
 scalar_t__ wf_fcu_init_chip (struct wf_fcu_priv*) ;
 int wf_fcu_lookup_fans (struct wf_fcu_priv*) ;

__attribute__((used)) static int wf_fcu_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct wf_fcu_priv *pv;

 pv = kzalloc(sizeof(*pv), GFP_KERNEL);
 if (!pv)
  return -ENOMEM;

 kref_init(&pv->ref);
 mutex_init(&pv->lock);
 INIT_LIST_HEAD(&pv->fan_list);
 pv->i2c = client;





 if (wf_fcu_init_chip(pv)) {
  pr_err("wf_fcu: Initialization failed !\n");
  kfree(pv);
  return -ENXIO;
 }


 wf_fcu_lookup_fans(pv);





 if (list_empty(&pv->fan_list))
  wf_fcu_default_fans(pv);


 if (list_empty(&pv->fan_list)) {
  pr_err("wf_fcu: Failed to find fans for your machine\n");
  kfree(pv);
  return -ENODEV;
 }

 dev_set_drvdata(&client->dev, pv);

 return 0;
}
