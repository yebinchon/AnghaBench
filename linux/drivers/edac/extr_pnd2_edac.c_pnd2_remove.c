
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edac_dbg (int ,char*) ;
 int pnd2_mci ;
 int pnd2_unregister_mci (int ) ;

__attribute__((used)) static void pnd2_remove(void)
{
 edac_dbg(0, "\n");
 pnd2_unregister_mci(pnd2_mci);
}
