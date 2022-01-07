
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ irq_hw_number_t ;


 int ITYPE_mskVECTOR ;
 int ITYPE_offVECTOR ;
 int NDS32_SR_ITYPE ;
 scalar_t__ NDS32_VECTOR_offINTERRUPT ;
 int __nds32__mfsr (int ) ;

__attribute__((used)) static irq_hw_number_t get_intr_src(void)
{
 return ((__nds32__mfsr(NDS32_SR_ITYPE) & ITYPE_mskVECTOR) >> ITYPE_offVECTOR)
  - NDS32_VECTOR_offINTERRUPT;
}
