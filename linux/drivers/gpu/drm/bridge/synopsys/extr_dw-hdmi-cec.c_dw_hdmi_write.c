
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dw_hdmi_cec {int hdmi; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (int ,int ,int) ;} ;


 int stub1 (int ,int ,int) ;

__attribute__((used)) static void dw_hdmi_write(struct dw_hdmi_cec *cec, u8 val, int offset)
{
 cec->ops->write(cec->hdmi, val, offset);
}
