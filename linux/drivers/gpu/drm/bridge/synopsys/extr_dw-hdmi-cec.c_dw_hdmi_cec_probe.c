
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dw_hdmi_cec_data {int hdmi; int ops; int irq; } ;
struct dw_hdmi_cec {int notify; TYPE_2__* adap; int irq; int hdmi; int ops; } ;
struct TYPE_14__ {int owner; } ;


 int CEC_CAP_CONNECTOR_INFO ;
 int CEC_CAP_DEFAULTS ;
 int CEC_MAX_LOG_ADDRS ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int HDMI_CEC_MASK ;
 int HDMI_CEC_POLARITY ;
 int HDMI_CEC_TX_CNT ;
 int HDMI_IH_MUTE_CEC_STAT0 ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int THIS_MODULE ;
 TYPE_2__* cec_allocate_adapter (int *,struct dw_hdmi_cec*,char*,int,int ) ;
 int cec_delete_adapter (TYPE_2__*) ;
 int cec_notifier_cec_adap_register (int ,int *,TYPE_2__*) ;
 int cec_notifier_cec_adap_unregister (int ) ;
 int cec_register_adapter (TYPE_2__*,int ) ;
 struct dw_hdmi_cec_data* dev_get_platdata (TYPE_1__*) ;
 int devm_add_action (TYPE_1__*,int ,struct dw_hdmi_cec*) ;
 struct dw_hdmi_cec* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_remove_action (TYPE_1__*,int ,struct dw_hdmi_cec*) ;
 int devm_request_threaded_irq (TYPE_1__*,int ,int ,int ,int ,char*,TYPE_2__*) ;
 int dw_hdmi_cec_del ;
 int dw_hdmi_cec_hardirq ;
 int dw_hdmi_cec_ops ;
 int dw_hdmi_cec_thread ;
 int dw_hdmi_write (struct dw_hdmi_cec*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct dw_hdmi_cec*) ;

__attribute__((used)) static int dw_hdmi_cec_probe(struct platform_device *pdev)
{
 struct dw_hdmi_cec_data *data = dev_get_platdata(&pdev->dev);
 struct dw_hdmi_cec *cec;
 int ret;

 if (!data)
  return -ENXIO;






 cec = devm_kzalloc(&pdev->dev, sizeof(*cec), GFP_KERNEL);
 if (!cec)
  return -ENOMEM;

 cec->irq = data->irq;
 cec->ops = data->ops;
 cec->hdmi = data->hdmi;

 platform_set_drvdata(pdev, cec);

 dw_hdmi_write(cec, 0, HDMI_CEC_TX_CNT);
 dw_hdmi_write(cec, ~0, HDMI_CEC_MASK);
 dw_hdmi_write(cec, ~0, HDMI_IH_MUTE_CEC_STAT0);
 dw_hdmi_write(cec, 0, HDMI_CEC_POLARITY);

 cec->adap = cec_allocate_adapter(&dw_hdmi_cec_ops, cec, "dw_hdmi",
      CEC_CAP_DEFAULTS |
      CEC_CAP_CONNECTOR_INFO,
      CEC_MAX_LOG_ADDRS);
 if (IS_ERR(cec->adap))
  return PTR_ERR(cec->adap);


 cec->adap->owner = THIS_MODULE;

 ret = devm_add_action(&pdev->dev, dw_hdmi_cec_del, cec);
 if (ret) {
  cec_delete_adapter(cec->adap);
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, cec->irq,
     dw_hdmi_cec_hardirq,
     dw_hdmi_cec_thread, IRQF_SHARED,
     "dw-hdmi-cec", cec->adap);
 if (ret < 0)
  return ret;

 cec->notify = cec_notifier_cec_adap_register(pdev->dev.parent,
           ((void*)0), cec->adap);
 if (!cec->notify)
  return -ENOMEM;

 ret = cec_register_adapter(cec->adap, pdev->dev.parent);
 if (ret < 0) {
  cec_notifier_cec_adap_unregister(cec->notify);
  return ret;
 }





 devm_remove_action(&pdev->dev, dw_hdmi_cec_del, cec);

 return 0;
}
