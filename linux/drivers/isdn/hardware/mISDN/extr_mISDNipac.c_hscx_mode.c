
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {char nr; int state; int Flags; } ;
struct hscx_hw {int slot; TYPE_1__ bch; TYPE_2__* ip; } ;
struct TYPE_4__ {int type; int name; } ;


 int EINVAL ;
 int ENOPROTOOPT ;
 int FLG_HDLC ;
 int FLG_TRANSPARENT ;
 int IPACX_B_ON ;
 int IPACX_EXMB ;
 int IPACX_MASKB ;
 int IPACX_MODEB ;
 int IPAC_CCR1 ;
 int IPAC_CCR2 ;
 int IPAC_MASKB ;
 int IPAC_MODEB ;
 int IPAC_RCCR ;
 int IPAC_TSAR ;
 int IPAC_TSAX ;
 int IPAC_TYPE_HSCX ;
 int IPAC_TYPE_IPAC ;
 int IPAC_TYPE_IPACX ;
 int IPAC_XCCR ;
 int ISACX_BCHA_CR ;
 int ISACX_BCHA_TSDP_BC1 ;
 int ISACX_BCHB_CR ;
 int ISACX_BCHB_TSDP_BC1 ;



 int WriteHSCX (struct hscx_hw*,int ,int) ;
 int WriteIPAC (TYPE_2__*,int ,int) ;
 int hscx_cmdr (struct hscx_hw*,int) ;
 int pr_debug (char*,int ,char,int,int,char) ;
 int pr_info (char*,int ,int) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int
hscx_mode(struct hscx_hw *hscx, u32 bprotocol)
{
 pr_debug("%s: HSCX %c protocol %x-->%x ch %d\n", hscx->ip->name,
   '@' + hscx->bch.nr, hscx->bch.state, bprotocol, hscx->bch.nr);
 if (hscx->ip->type & IPAC_TYPE_IPACX) {
  if (hscx->bch.nr & 1) {
   WriteIPAC(hscx->ip, ISACX_BCHA_TSDP_BC1, 0x80);
   WriteIPAC(hscx->ip, ISACX_BCHA_CR, 0x88);
  } else {
   WriteIPAC(hscx->ip, ISACX_BCHB_TSDP_BC1, 0x81);
   WriteIPAC(hscx->ip, ISACX_BCHB_CR, 0x88);
  }
  switch (bprotocol) {
  case 128:
   WriteHSCX(hscx, IPACX_MODEB, 0xC0);
   WriteHSCX(hscx, IPACX_EXMB, 0x30);
   WriteHSCX(hscx, IPACX_MASKB, 0xFF);
   hscx_cmdr(hscx, 0x41);
   test_and_clear_bit(FLG_HDLC, &hscx->bch.Flags);
   test_and_clear_bit(FLG_TRANSPARENT, &hscx->bch.Flags);
   break;
  case 129:
   WriteHSCX(hscx, IPACX_MODEB, 0x88);
   WriteHSCX(hscx, IPACX_EXMB, 0x00);
   hscx_cmdr(hscx, 0x41);
   WriteHSCX(hscx, IPACX_MASKB, IPACX_B_ON);
   test_and_set_bit(FLG_TRANSPARENT, &hscx->bch.Flags);
   break;
  case 130:
   WriteHSCX(hscx, IPACX_MODEB, 0xC0);
   WriteHSCX(hscx, IPACX_EXMB, 0x00);
   hscx_cmdr(hscx, 0x41);
   WriteHSCX(hscx, IPACX_MASKB, IPACX_B_ON);
   test_and_set_bit(FLG_HDLC, &hscx->bch.Flags);
   break;
  default:
   pr_info("%s: protocol not known %x\n", hscx->ip->name,
    bprotocol);
   return -ENOPROTOOPT;
  }
 } else if (hscx->ip->type & IPAC_TYPE_IPAC) {
  WriteHSCX(hscx, IPAC_CCR1, 0x82);
  WriteHSCX(hscx, IPAC_CCR2, 0x30);
  WriteHSCX(hscx, IPAC_XCCR, 0x07);
  WriteHSCX(hscx, IPAC_RCCR, 0x07);
  WriteHSCX(hscx, IPAC_TSAX, hscx->slot);
  WriteHSCX(hscx, IPAC_TSAR, hscx->slot);
  switch (bprotocol) {
  case 128:
   WriteHSCX(hscx, IPAC_TSAX, 0x1F);
   WriteHSCX(hscx, IPAC_TSAR, 0x1F);
   WriteHSCX(hscx, IPAC_MODEB, 0x84);
   WriteHSCX(hscx, IPAC_CCR1, 0x82);
   WriteHSCX(hscx, IPAC_MASKB, 0xFF);
   test_and_clear_bit(FLG_HDLC, &hscx->bch.Flags);
   test_and_clear_bit(FLG_TRANSPARENT, &hscx->bch.Flags);
   break;
  case 129:
   WriteHSCX(hscx, IPAC_MODEB, 0xe4);
   WriteHSCX(hscx, IPAC_CCR1, 0x82);
   hscx_cmdr(hscx, 0x41);
   WriteHSCX(hscx, IPAC_MASKB, 0);
   test_and_set_bit(FLG_TRANSPARENT, &hscx->bch.Flags);
   break;
  case 130:
   WriteHSCX(hscx, IPAC_MODEB, 0x8c);
   WriteHSCX(hscx, IPAC_CCR1, 0x8a);
   hscx_cmdr(hscx, 0x41);
   WriteHSCX(hscx, IPAC_MASKB, 0);
   test_and_set_bit(FLG_HDLC, &hscx->bch.Flags);
   break;
  default:
   pr_info("%s: protocol not known %x\n", hscx->ip->name,
    bprotocol);
   return -ENOPROTOOPT;
  }
 } else if (hscx->ip->type & IPAC_TYPE_HSCX) {
  WriteHSCX(hscx, IPAC_CCR1, 0x85);
  WriteHSCX(hscx, IPAC_CCR2, 0x30);
  WriteHSCX(hscx, IPAC_XCCR, 0x07);
  WriteHSCX(hscx, IPAC_RCCR, 0x07);
  WriteHSCX(hscx, IPAC_TSAX, hscx->slot);
  WriteHSCX(hscx, IPAC_TSAR, hscx->slot);
  switch (bprotocol) {
  case 128:
   WriteHSCX(hscx, IPAC_TSAX, 0x1F);
   WriteHSCX(hscx, IPAC_TSAR, 0x1F);
   WriteHSCX(hscx, IPAC_MODEB, 0x84);
   WriteHSCX(hscx, IPAC_CCR1, 0x85);
   WriteHSCX(hscx, IPAC_MASKB, 0xFF);
   test_and_clear_bit(FLG_HDLC, &hscx->bch.Flags);
   test_and_clear_bit(FLG_TRANSPARENT, &hscx->bch.Flags);
   break;
  case 129:
   WriteHSCX(hscx, IPAC_MODEB, 0xe4);
   WriteHSCX(hscx, IPAC_CCR1, 0x85);
   hscx_cmdr(hscx, 0x41);
   WriteHSCX(hscx, IPAC_MASKB, 0);
   test_and_set_bit(FLG_TRANSPARENT, &hscx->bch.Flags);
   break;
  case 130:
   WriteHSCX(hscx, IPAC_MODEB, 0x8c);
   WriteHSCX(hscx, IPAC_CCR1, 0x8d);
   hscx_cmdr(hscx, 0x41);
   WriteHSCX(hscx, IPAC_MASKB, 0);
   test_and_set_bit(FLG_HDLC, &hscx->bch.Flags);
   break;
  default:
   pr_info("%s: protocol not known %x\n", hscx->ip->name,
    bprotocol);
   return -ENOPROTOOPT;
  }
 } else
  return -EINVAL;
 hscx->bch.state = bprotocol;
 return 0;
}
