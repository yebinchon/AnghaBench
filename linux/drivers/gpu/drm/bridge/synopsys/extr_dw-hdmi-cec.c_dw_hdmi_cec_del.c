
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi_cec {int adap; } ;


 int cec_delete_adapter (int ) ;

__attribute__((used)) static void dw_hdmi_cec_del(void *data)
{
 struct dw_hdmi_cec *cec = data;

 cec_delete_adapter(cec->adap);
}
