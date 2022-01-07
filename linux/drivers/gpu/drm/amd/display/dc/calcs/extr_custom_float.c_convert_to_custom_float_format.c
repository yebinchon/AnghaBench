
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fixed31_32 {int dummy; } ;
struct custom_float_format {int dummy; } ;


 scalar_t__ build_custom_float (struct fixed31_32,struct custom_float_format const*,int*,int *,int *) ;
 scalar_t__ setup_custom_float (struct custom_float_format const*,int,int ,int ,int *) ;

bool convert_to_custom_float_format(
 struct fixed31_32 value,
 const struct custom_float_format *format,
 uint32_t *result)
{
 uint32_t mantissa;
 uint32_t exponenta;
 bool negative;

 return build_custom_float(
  value, format, &negative, &mantissa, &exponenta) &&
 setup_custom_float(
  format, negative, mantissa, exponenta, result);
}
