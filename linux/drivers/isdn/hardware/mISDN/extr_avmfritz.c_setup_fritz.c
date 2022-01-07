
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct fritzcard {int type; scalar_t__ addr; int irq; int name; TYPE_1__ isac; } ;


 int ASSIGN_FUNC (int ,int ,TYPE_1__) ;


 int AVM_HDLC_1 ;
 scalar_t__ AVM_HDLC_STATUS_1 ;
 scalar_t__ CHIP_INDEX ;
 scalar_t__ CHIP_WINDOW ;
 int DEBUG_HW ;
 int EIO ;
 int ENODEV ;
 scalar_t__ HDLC_STATUS ;
 int IPAC_TYPE_ISAC ;
 int IPAC_TYPE_ISACX ;
 int ISAC ;
 int V1 ;
 int V2 ;
 int debug ;
 int inl (scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int pr_info (char*,int ,int,...) ;
 int pr_notice (char*,int ,...) ;
 int release_region (scalar_t__,int) ;
 int request_region (scalar_t__,int,int ) ;

__attribute__((used)) static int
setup_fritz(struct fritzcard *fc)
{
 u32 val, ver;

 if (!request_region(fc->addr, 32, fc->name)) {
  pr_info("%s: AVM config port %x-%x already in use\n",
   fc->name, fc->addr, fc->addr + 31);
  return -EIO;
 }
 switch (fc->type) {
 case 129:
  val = inl(fc->addr);
  outl(AVM_HDLC_1, fc->addr + CHIP_INDEX);
  ver = inl(fc->addr + CHIP_WINDOW + HDLC_STATUS) >> 24;
  if (debug & DEBUG_HW) {
   pr_notice("%s: PCI stat %#x\n", fc->name, val);
   pr_notice("%s: PCI Class %X Rev %d\n", fc->name,
      val & 0xff, (val >> 8) & 0xff);
   pr_notice("%s: HDLC version %x\n", fc->name, ver & 0xf);
  }
  ASSIGN_FUNC(V1, ISAC, fc->isac);
  fc->isac.type = IPAC_TYPE_ISAC;
  break;
 case 128:
  val = inl(fc->addr);
  ver = inl(fc->addr + AVM_HDLC_STATUS_1) >> 24;
  if (debug & DEBUG_HW) {
   pr_notice("%s: PCI V2 stat %#x\n", fc->name, val);
   pr_notice("%s: PCI V2 Class %X Rev %d\n", fc->name,
      val & 0xff, (val >> 8) & 0xff);
   pr_notice("%s: HDLC version %x\n", fc->name, ver & 0xf);
  }
  ASSIGN_FUNC(V2, ISAC, fc->isac);
  fc->isac.type = IPAC_TYPE_ISACX;
  break;
 default:
  release_region(fc->addr, 32);
  pr_info("%s: AVM unknown type %d\n", fc->name, fc->type);
  return -ENODEV;
 }
 pr_notice("%s: %s config irq:%d base:0x%X\n", fc->name,
    (fc->type == 129) ? "AVM Fritz!CARD PCI" :
    "AVM Fritz!CARD PCIv2", fc->irq, fc->addr);
 return 0;
}
