
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int KERN_DEBUG ;
 int _apl_rd_reg (int,int,int,int *) ;
 int edac_dbg (int,char*,char*,int,int,int) ;
 int pnd2_printk (int ,char*,char*,int ,int ,int) ;

__attribute__((used)) static int apl_rd_reg(int port, int off, int op, void *data, size_t sz, char *name)
{
 int ret = 0;

 edac_dbg(2, "Read %s port=%x off=%x op=%x\n", name, port, off, op);
 switch (sz) {
 case 8:
  ret = _apl_rd_reg(port, off + 4, op, (u32 *)(data + 4));

 case 4:
  ret |= _apl_rd_reg(port, off, op, (u32 *)data);
  pnd2_printk(KERN_DEBUG, "%s=%x%08x ret=%d\n", name,
     sz == 8 ? *((u32 *)(data + 4)) : 0, *((u32 *)data), ret);
  break;
 }

 return ret;
}
