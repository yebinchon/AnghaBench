
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct elo_priv {int work; } ;


 int cancel_delayed_work_sync (int *) ;
 struct elo_priv* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int kfree (struct elo_priv*) ;

__attribute__((used)) static void elo_remove(struct hid_device *hdev)
{
 struct elo_priv *priv = hid_get_drvdata(hdev);

 hid_hw_stop(hdev);
 cancel_delayed_work_sync(&priv->work);
 kfree(priv);
}
