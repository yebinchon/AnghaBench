
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * rx_skb; int err_crc; int err_rx; } ;
struct isac_hw {TYPE_1__ dch; int name; } ;


 int ISAC_CMDR ;
 int ISAC_RBCL ;
 int ISAC_RSTA ;
 int ReadISAC (struct isac_hw*,int ) ;
 int WriteISAC (struct isac_hw*,int ,int) ;
 int dev_kfree_skb (int *) ;
 int isac_empty_fifo (struct isac_hw*,int) ;
 int pr_debug (char*,int ) ;
 int recv_Dchannel (TYPE_1__*) ;

__attribute__((used)) static void
isac_rme_irq(struct isac_hw *isac)
{
 u8 val, count;

 val = ReadISAC(isac, ISAC_RSTA);
 if ((val & 0x70) != 0x20) {
  if (val & 0x40) {
   pr_debug("%s: ISAC RDO\n", isac->name);



  }
  if (!(val & 0x20)) {
   pr_debug("%s: ISAC CRC error\n", isac->name);



  }
  WriteISAC(isac, ISAC_CMDR, 0x80);
  dev_kfree_skb(isac->dch.rx_skb);
  isac->dch.rx_skb = ((void*)0);
 } else {
  count = ReadISAC(isac, ISAC_RBCL) & 0x1f;
  if (count == 0)
   count = 32;
  isac_empty_fifo(isac, count);
  recv_Dchannel(&isac->dch);
 }
}
