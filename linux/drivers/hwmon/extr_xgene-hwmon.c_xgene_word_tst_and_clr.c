
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int READ_ONCE (int) ;
 int WRITE_ONCE (int,int ) ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static u16 xgene_word_tst_and_clr(u16 *addr, u16 mask)
{
 u16 ret, val;

 val = le16_to_cpu(READ_ONCE(*addr));
 ret = val & mask;
 val &= ~mask;
 WRITE_ONCE(*addr, cpu_to_le16(val));

 return ret;
}
