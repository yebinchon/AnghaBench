
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdmi_context {int dummy; } ;


 int HDMI_ACR_CON ;
 int HDMI_ACR_CTS0 ;
 int HDMI_ACR_MCTS0 ;
 int HDMI_ACR_N0 ;
 int hdmi_reg_writeb (struct hdmi_context*,int ,int) ;
 int hdmi_reg_writev (struct hdmi_context*,int ,int,int) ;

__attribute__((used)) static void hdmi_reg_acr(struct hdmi_context *hdata, u32 freq)
{
 u32 n, cts;

 cts = (freq % 9) ? 27000 : 30000;
 n = 128 * freq / (27000000 / cts);

 hdmi_reg_writev(hdata, HDMI_ACR_N0, 3, n);
 hdmi_reg_writev(hdata, HDMI_ACR_MCTS0, 3, cts);
 hdmi_reg_writev(hdata, HDMI_ACR_CTS0, 3, cts);
 hdmi_reg_writeb(hdata, HDMI_ACR_CON, 4);
}
