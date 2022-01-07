
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int debug; } ;
struct hscx_hw {TYPE_2__* ip; TYPE_1__ bch; } ;
struct TYPE_4__ {int type; int name; } ;


 int DEBUG_HW ;
 int * HSCXVer ;
 int HSCX_VSTR ;
 int IPAC_CCR1 ;
 int IPAC_CCR2 ;
 int IPAC_RAH2 ;
 int IPAC_RCCR ;
 int IPAC_RLCR ;
 int IPAC_TYPE_HSCX ;
 int IPAC_XBCH ;
 int IPAC_XCCR ;
 int ReadHSCX (struct hscx_hw*,int ) ;
 int WriteHSCX (struct hscx_hw*,int ,int) ;
 int pr_debug (char*,int ,int) ;
 int pr_notice (char*,int ,int ) ;

__attribute__((used)) static void
hscx_init(struct hscx_hw *hx)
{
 u8 val;

 WriteHSCX(hx, IPAC_RAH2, 0xFF);
 WriteHSCX(hx, IPAC_XBCH, 0x00);
 WriteHSCX(hx, IPAC_RLCR, 0x00);

 if (hx->ip->type & IPAC_TYPE_HSCX) {
  WriteHSCX(hx, IPAC_CCR1, 0x85);
  val = ReadHSCX(hx, HSCX_VSTR);
  pr_debug("%s: HSCX VSTR %02x\n", hx->ip->name, val);
  if (hx->bch.debug & DEBUG_HW)
   pr_notice("%s: HSCX version %s\n", hx->ip->name,
      HSCXVer[val & 0x0f]);
 } else
  WriteHSCX(hx, IPAC_CCR1, 0x82);
 WriteHSCX(hx, IPAC_CCR2, 0x30);
 WriteHSCX(hx, IPAC_XCCR, 0x07);
 WriteHSCX(hx, IPAC_RCCR, 0x07);
}
