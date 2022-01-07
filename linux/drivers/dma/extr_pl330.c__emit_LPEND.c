
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct _arg_LPEND {int cond; int forever; unsigned int loop; int bjump; } ;
typedef enum pl330_cond { ____Placeholder_pl330_cond } pl330_cond ;


 int BURST ;
 int CMD_DMALPEND ;
 int PL330_DBGCMD_DUMP (int ,char*,char*,char,char,int) ;
 int SINGLE ;
 int SZ_DMALPEND ;

__attribute__((used)) static inline u32 _emit_LPEND(unsigned dry_run, u8 buf[],
  const struct _arg_LPEND *arg)
{
 enum pl330_cond cond = arg->cond;
 bool forever = arg->forever;
 unsigned loop = arg->loop;
 u8 bjump = arg->bjump;

 if (dry_run)
  return SZ_DMALPEND;

 buf[0] = CMD_DMALPEND;

 if (loop)
  buf[0] |= (1 << 2);

 if (!forever)
  buf[0] |= (1 << 4);

 if (cond == SINGLE)
  buf[0] |= (0 << 1) | (1 << 0);
 else if (cond == BURST)
  buf[0] |= (1 << 1) | (1 << 0);

 buf[1] = bjump;

 PL330_DBGCMD_DUMP(SZ_DMALPEND, "\tDMALP%s%c_%c bjmpto_%x\n",
   forever ? "FE" : "END",
   cond == SINGLE ? 'S' : (cond == BURST ? 'B' : 'A'),
   loop ? '1' : '0',
   bjump);

 return SZ_DMALPEND;
}
