
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili210x {int dwork; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void ili210x_cancel_work(void *data)
{
 struct ili210x *priv = data;

 cancel_delayed_work_sync(&priv->dwork);
}
