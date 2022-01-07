
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct inno_hdmi {int dummy; } ;


 int hdmi_readb (struct inno_hdmi*,int ) ;
 int hdmi_writeb (struct inno_hdmi*,int ,int) ;

__attribute__((used)) static inline void hdmi_modb(struct inno_hdmi *hdmi, u16 offset,
        u32 msk, u32 val)
{
 u8 temp = hdmi_readb(hdmi, offset) & ~msk;

 temp |= val & msk;
 hdmi_writeb(hdmi, offset, temp);
}
