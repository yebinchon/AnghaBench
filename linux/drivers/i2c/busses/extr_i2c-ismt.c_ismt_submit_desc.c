
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct ismt_priv {int head; scalar_t__ smba; } ;


 int ISMT_DESC_ENTRIES ;
 int ISMT_MCTRL_FMHP ;
 int ISMT_MCTRL_SS ;
 scalar_t__ ISMT_MSTR_MCTRL ;
 int ismt_desc_dump (struct ismt_priv*) ;
 int ismt_gen_reg_dump (struct ismt_priv*) ;
 int ismt_mstr_reg_dump (struct ismt_priv*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ismt_submit_desc(struct ismt_priv *priv)
{
 uint fmhp;
 uint val;

 ismt_desc_dump(priv);
 ismt_gen_reg_dump(priv);
 ismt_mstr_reg_dump(priv);


 fmhp = ((priv->head + 1) % ISMT_DESC_ENTRIES) << 16;
 val = readl(priv->smba + ISMT_MSTR_MCTRL);
 writel((val & ~ISMT_MCTRL_FMHP) | fmhp,
        priv->smba + ISMT_MSTR_MCTRL);


 val = readl(priv->smba + ISMT_MSTR_MCTRL);
 writel(val | ISMT_MCTRL_SS,
        priv->smba + ISMT_MSTR_MCTRL);
}
