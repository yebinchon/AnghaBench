
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iadc_chip {scalar_t__ base; int regmap; } ;


 scalar_t__ IADC_DATA ;
 int regmap_bulk_read (int ,scalar_t__,int *,int) ;

__attribute__((used)) static int iadc_read_result(struct iadc_chip *iadc, u16 *data)
{
 return regmap_bulk_read(iadc->regmap, iadc->base + IADC_DATA, data, 2);
}
