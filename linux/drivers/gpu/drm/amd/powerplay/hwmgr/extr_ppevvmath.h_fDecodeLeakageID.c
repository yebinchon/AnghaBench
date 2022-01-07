
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int fInt ;


 int Convert_ULONG_ToFraction (scalar_t__) ;
 int fDivide (int ,int ) ;
 int fExponential (int ) ;
 int fMultiply (int ,int ) ;
 scalar_t__ uPow (int,scalar_t__) ;

__attribute__((used)) static fInt fDecodeLeakageID (uint32_t leakageID_fuse, fInt ln_max_div_min, fInt f_min, uint32_t bitlength)
{
 fInt fLeakage;
 fInt f_bit_max_value = Convert_ULONG_ToFraction((uPow(2, bitlength)) - 1);

 fLeakage = fMultiply(ln_max_div_min, Convert_ULONG_ToFraction(leakageID_fuse));
 fLeakage = fDivide(fLeakage, f_bit_max_value);
 fLeakage = fExponential(fLeakage);
 fLeakage = fMultiply(fLeakage, f_min);

 return fLeakage;
}
