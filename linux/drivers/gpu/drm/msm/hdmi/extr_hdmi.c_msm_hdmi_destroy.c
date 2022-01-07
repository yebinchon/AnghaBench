
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi {int pdev; scalar_t__ i2c; int * phy_dev; int * phy; scalar_t__ workq; } ;


 int destroy_workqueue (scalar_t__) ;
 int flush_workqueue (scalar_t__) ;
 int msm_hdmi_hdcp_destroy (struct hdmi*) ;
 int msm_hdmi_i2c_destroy (scalar_t__) ;
 int platform_set_drvdata (int ,int *) ;
 int put_device (int *) ;

__attribute__((used)) static void msm_hdmi_destroy(struct hdmi *hdmi)
{




 if (hdmi->workq) {
  flush_workqueue(hdmi->workq);
  destroy_workqueue(hdmi->workq);
 }
 msm_hdmi_hdcp_destroy(hdmi);

 if (hdmi->phy_dev) {
  put_device(hdmi->phy_dev);
  hdmi->phy = ((void*)0);
  hdmi->phy_dev = ((void*)0);
 }

 if (hdmi->i2c)
  msm_hdmi_i2c_destroy(hdmi->i2c);

 platform_set_drvdata(hdmi->pdev, ((void*)0));
}
