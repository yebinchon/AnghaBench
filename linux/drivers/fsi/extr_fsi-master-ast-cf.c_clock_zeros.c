
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {int dummy; } ;


 int CMD_IDLE_CLOCKS ;
 int CMD_REG_CLEN_SHIFT ;
 int do_copro_command (struct fsi_master_acf*,int) ;
 int min (int,int) ;

__attribute__((used)) static int clock_zeros(struct fsi_master_acf *master, int count)
{
 while (count) {
  int rc, lcnt = min(count, 255);

  rc = do_copro_command(master,
          CMD_IDLE_CLOCKS | (lcnt << CMD_REG_CLEN_SHIFT));
  if (rc)
   return rc;
  count -= lcnt;
 }
 return 0;
}
