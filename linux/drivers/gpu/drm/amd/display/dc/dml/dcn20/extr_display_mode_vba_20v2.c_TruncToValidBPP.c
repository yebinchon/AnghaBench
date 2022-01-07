
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum output_format_class { ____Placeholder_output_format_class } output_format_class ;
typedef enum output_encoder_class { ____Placeholder_output_encoder_class } output_encoder_class ;


 unsigned int BPP_INVALID ;
 int dm_420 ;
 int dm_444 ;
 int dm_hdmi ;
 int dm_n422 ;
 int dm_s422 ;
 int dml_floor (int,int) ;

__attribute__((used)) static unsigned int TruncToValidBPP(
  double DecimalBPP,
  bool DSCEnabled,
  enum output_encoder_class Output,
  enum output_format_class Format,
  unsigned int DSCInputBitPerComponent)
{
 if (Output == dm_hdmi) {
  if (Format == dm_420) {
   if (DecimalBPP >= 18)
    return 18;
   else if (DecimalBPP >= 15)
    return 15;
   else if (DecimalBPP >= 12)
    return 12;
   else
    return BPP_INVALID;
  } else if (Format == dm_444) {
   if (DecimalBPP >= 36)
    return 36;
   else if (DecimalBPP >= 30)
    return 30;
   else if (DecimalBPP >= 24)
    return 24;
   else if (DecimalBPP >= 18)
    return 18;
   else
    return BPP_INVALID;
  } else {
   if (DecimalBPP / 1.5 >= 24)
    return 24;
   else if (DecimalBPP / 1.5 >= 20)
    return 20;
   else if (DecimalBPP / 1.5 >= 16)
    return 16;
   else
    return BPP_INVALID;
  }
 } else {
  if (DSCEnabled) {
   if (Format == dm_420) {
    if (DecimalBPP < 6)
     return BPP_INVALID;
    else if (DecimalBPP >= 1.5 * DSCInputBitPerComponent - 1 / 16)
     return 1.5 * DSCInputBitPerComponent - 1 / 16;
    else
     return dml_floor(16 * DecimalBPP, 1) / 16;
   } else if (Format == dm_n422) {
    if (DecimalBPP < 7)
     return BPP_INVALID;
    else if (DecimalBPP >= 2 * DSCInputBitPerComponent - 1 / 16)
     return 2 * DSCInputBitPerComponent - 1 / 16;
    else
     return dml_floor(16 * DecimalBPP, 1) / 16;
   } else {
    if (DecimalBPP < 8)
     return BPP_INVALID;
    else if (DecimalBPP >= 3 * DSCInputBitPerComponent - 1 / 16)
     return 3 * DSCInputBitPerComponent - 1 / 16;
    else
     return dml_floor(16 * DecimalBPP, 1) / 16;
   }
  } else if (Format == dm_420) {
   if (DecimalBPP >= 18)
    return 18;
   else if (DecimalBPP >= 15)
    return 15;
   else if (DecimalBPP >= 12)
    return 12;
   else
    return BPP_INVALID;
  } else if (Format == dm_s422 || Format == dm_n422) {
   if (DecimalBPP >= 24)
    return 24;
   else if (DecimalBPP >= 20)
    return 20;
   else if (DecimalBPP >= 16)
    return 16;
   else
    return BPP_INVALID;
  } else {
   if (DecimalBPP >= 36)
    return 36;
   else if (DecimalBPP >= 30)
    return 30;
   else if (DecimalBPP >= 24)
    return 24;
   else if (DecimalBPP >= 18)
    return 18;
   else
    return BPP_INVALID;
  }
 }
}
