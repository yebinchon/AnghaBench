
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edac_dbg (int,char*) ;
 int get_registers () ;
 int pnd2_mci ;
 int pnd2_register_mci (int *) ;

__attribute__((used)) static int pnd2_probe(void)
{
 int rc;

 edac_dbg(2, "\n");
 rc = get_registers();
 if (rc)
  return rc;

 return pnd2_register_mci(&pnd2_mci);
}
