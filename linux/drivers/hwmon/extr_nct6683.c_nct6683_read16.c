
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nct6683_data {int dummy; } ;


 int nct6683_read (struct nct6683_data*,int) ;

__attribute__((used)) static u16 nct6683_read16(struct nct6683_data *data, u16 reg)
{
 return (nct6683_read(data, reg) << 8) | nct6683_read(data, reg + 1);
}
