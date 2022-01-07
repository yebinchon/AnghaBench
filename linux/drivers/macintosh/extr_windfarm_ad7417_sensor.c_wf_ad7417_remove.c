
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_ad7417_priv {int ref; int * sensors; int * i2c; } ;
struct i2c_client {int dev; } ;


 struct wf_ad7417_priv* dev_get_drvdata (int *) ;
 int kref_put (int *,int ) ;
 int wf_ad7417_release ;
 int wf_unregister_sensor (int *) ;

__attribute__((used)) static int wf_ad7417_remove(struct i2c_client *client)
{
 struct wf_ad7417_priv *pv = dev_get_drvdata(&client->dev);
 int i;


 pv->i2c = ((void*)0);


 for (i = 0; i < 5; i++)
  wf_unregister_sensor(&pv->sensors[i]);

 kref_put(&pv->ref, wf_ad7417_release);

 return 0;
}
