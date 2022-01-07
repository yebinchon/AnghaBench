
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nct6775_data {int dummy; } ;


 int is_word_sized (struct nct6775_data*,int) ;
 int nct6775_write_value (struct nct6775_data*,int,int) ;

__attribute__((used)) static int nct6775_write_temp(struct nct6775_data *data, u16 reg, u16 value)
{
 if (!is_word_sized(data, reg))
  value >>= 8;
 return nct6775_write_value(data, reg, value);
}
