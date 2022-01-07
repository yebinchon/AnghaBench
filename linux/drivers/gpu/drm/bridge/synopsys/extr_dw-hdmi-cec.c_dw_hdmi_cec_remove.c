
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_hdmi_cec {int adap; int notify; } ;


 int cec_notifier_cec_adap_unregister (int ) ;
 int cec_unregister_adapter (int ) ;
 struct dw_hdmi_cec* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int dw_hdmi_cec_remove(struct platform_device *pdev)
{
 struct dw_hdmi_cec *cec = platform_get_drvdata(pdev);

 cec_notifier_cec_adap_unregister(cec->notify);
 cec_unregister_adapter(cec->adap);

 return 0;
}
