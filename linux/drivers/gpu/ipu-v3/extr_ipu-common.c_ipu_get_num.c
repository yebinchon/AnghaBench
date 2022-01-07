
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {int id; } ;



int ipu_get_num(struct ipu_soc *ipu)
{
 return ipu->id;
}
