
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct mtk_hdmi {int dummy; } ;


 int GRL_NCTS ;
 int NCTS_BYTES ;
 int memset (unsigned char*,int ,int) ;
 int mtk_hdmi_write (struct mtk_hdmi*,int ,unsigned char) ;

__attribute__((used)) static void do_hdmi_hw_aud_set_ncts(struct mtk_hdmi *hdmi, unsigned int n,
        unsigned int cts)
{
 unsigned char val[NCTS_BYTES];
 int i;

 mtk_hdmi_write(hdmi, GRL_NCTS, 0);
 mtk_hdmi_write(hdmi, GRL_NCTS, 0);
 mtk_hdmi_write(hdmi, GRL_NCTS, 0);
 memset(val, 0, sizeof(val));

 val[0] = (cts >> 24) & 0xff;
 val[1] = (cts >> 16) & 0xff;
 val[2] = (cts >> 8) & 0xff;
 val[3] = cts & 0xff;

 val[4] = (n >> 16) & 0xff;
 val[5] = (n >> 8) & 0xff;
 val[6] = n & 0xff;

 for (i = 0; i < NCTS_BYTES; i++)
  mtk_hdmi_write(hdmi, GRL_NCTS, val[i]);
}
