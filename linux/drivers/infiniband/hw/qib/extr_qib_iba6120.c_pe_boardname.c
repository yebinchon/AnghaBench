
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_devdata {char* boardname; int majrev; int minrev; int revision; int boardversion; } ;


 int Arch ;
 int BoardID ;
 int QIB_CHIP_VERS_MAJ ;
 int QIB_CHIP_VERS_MIN ;
 int Revision ;
 int Revision_R ;
 int SW ;
 int SYM_FIELD (int ,int ,int ) ;
 int qib_dev_err (struct qib_devdata*,char*,int,...) ;
 int snprintf (int ,int,char*,int,int,char*,unsigned int,int,int,unsigned int) ;

__attribute__((used)) static void pe_boardname(struct qib_devdata *dd)
{
 u32 boardid;

 boardid = SYM_FIELD(dd->revision, Revision,
       BoardID);

 switch (boardid) {
 case 2:
  dd->boardname = "InfiniPath_QLE7140";
  break;
 default:
  qib_dev_err(dd, "Unknown 6120 board with ID %u\n", boardid);
  dd->boardname = "Unknown_InfiniPath_6120";
  break;
 }

 if (dd->majrev != 4 || !dd->minrev || dd->minrev > 2)
  qib_dev_err(dd,
       "Unsupported InfiniPath hardware revision %u.%u!\n",
       dd->majrev, dd->minrev);

 snprintf(dd->boardversion, sizeof(dd->boardversion),
   "ChipABI %u.%u, %s, InfiniPath%u %u.%u, SW Compat %u\n",
   QIB_CHIP_VERS_MAJ, QIB_CHIP_VERS_MIN, dd->boardname,
   (unsigned int)SYM_FIELD(dd->revision, Revision_R, Arch),
   dd->majrev, dd->minrev,
   (unsigned int)SYM_FIELD(dd->revision, Revision_R, SW));
}
