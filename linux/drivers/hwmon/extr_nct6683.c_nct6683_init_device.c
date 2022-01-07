
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nct6683_data {int dummy; } ;


 int NCT6683_HWM_CFG ;
 int nct6683_read (struct nct6683_data*,int ) ;
 int nct6683_write (struct nct6683_data*,int ,int) ;

__attribute__((used)) static inline void nct6683_init_device(struct nct6683_data *data)
{
 u8 tmp;


 tmp = nct6683_read(data, NCT6683_HWM_CFG);
 if (!(tmp & 0x80))
  nct6683_write(data, NCT6683_HWM_CFG, tmp | 0x80);
}
