
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdc_hw_list_desc {int gen_conf; } ;


 int MDC_GENERAL_CONFIG_WIDTH_W_SHIFT ;
 int to_mdc_width (unsigned int) ;

__attribute__((used)) static inline void mdc_set_write_width(struct mdc_hw_list_desc *ldesc,
           unsigned int bytes)
{
 ldesc->gen_conf |= to_mdc_width(bytes) <<
  MDC_GENERAL_CONFIG_WIDTH_W_SHIFT;
}
