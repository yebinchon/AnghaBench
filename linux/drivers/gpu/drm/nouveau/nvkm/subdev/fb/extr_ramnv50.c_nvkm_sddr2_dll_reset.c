
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_ramseq {int dummy; } ;


 int * mr ;
 int ram_mask (struct nv50_ramseq*,int ,int,int) ;
 int ram_nsec (struct nv50_ramseq*,int) ;

__attribute__((used)) static void
nvkm_sddr2_dll_reset(struct nv50_ramseq *hwsq)
{
 ram_mask(hwsq, mr[0], 0x100, 0x100);
 ram_mask(hwsq, mr[0], 0x100, 0x000);
 ram_nsec(hwsq, 24000);
}
