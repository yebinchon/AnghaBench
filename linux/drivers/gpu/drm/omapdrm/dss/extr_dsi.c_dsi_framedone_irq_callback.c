
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_data {int framedone_timeout_work; } ;


 int cancel_delayed_work (int *) ;
 int dsi_handle_framedone (struct dsi_data*,int ) ;

__attribute__((used)) static void dsi_framedone_irq_callback(void *data)
{
 struct dsi_data *dsi = data;






 cancel_delayed_work(&dsi->framedone_timeout_work);

 dsi_handle_framedone(dsi, 0);
}
