
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {scalar_t__ prg_priv; } ;



bool ipu_prg_present(struct ipu_soc *ipu)
{
 if (ipu->prg_priv)
  return 1;

 return 0;
}
