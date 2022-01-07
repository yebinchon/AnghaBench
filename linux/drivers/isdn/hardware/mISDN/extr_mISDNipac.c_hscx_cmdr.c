
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hscx_hw {TYPE_1__* ip; } ;
struct TYPE_2__ {int type; } ;


 int IPACX_CMDRB ;
 int IPAC_CMDRB ;
 int IPAC_TYPE_IPACX ;
 int WriteHSCX (struct hscx_hw*,int ,int ) ;
 int waitforCEC (struct hscx_hw*) ;

__attribute__((used)) static void
hscx_cmdr(struct hscx_hw *hx, u8 cmd)
{
 if (hx->ip->type & IPAC_TYPE_IPACX)
  WriteHSCX(hx, IPACX_CMDRB, cmd);
 else {
  waitforCEC(hx);
  WriteHSCX(hx, IPAC_CMDRB, cmd);
 }
}
