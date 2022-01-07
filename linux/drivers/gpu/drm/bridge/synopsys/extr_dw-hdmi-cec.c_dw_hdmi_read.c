
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dw_hdmi_cec {int hdmi; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static u8 dw_hdmi_read(struct dw_hdmi_cec *cec, int offset)
{
 return cec->ops->read(cec->hdmi, offset);
}
