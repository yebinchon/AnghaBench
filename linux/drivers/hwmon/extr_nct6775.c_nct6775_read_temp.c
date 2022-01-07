
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nct6775_data {int dummy; } ;


 int is_word_sized (struct nct6775_data*,int) ;
 int nct6775_read_value (struct nct6775_data*,int) ;

__attribute__((used)) static u16 nct6775_read_temp(struct nct6775_data *data, u16 reg)
{
 u16 res;

 res = nct6775_read_value(data, reg);
 if (!is_word_sized(data, reg))
  res <<= 8;

 return res;
}
