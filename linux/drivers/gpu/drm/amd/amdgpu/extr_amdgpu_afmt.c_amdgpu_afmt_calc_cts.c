
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DRM_DEBUG (char*,int,int,int) ;
 unsigned long gcd (int,int) ;
 int pr_warn (char*) ;

__attribute__((used)) static void amdgpu_afmt_calc_cts(uint32_t clock, int *CTS, int *N, int freq)
{
 int n, cts;
 unsigned long div, mul;


 n = 128 * freq;
 cts = clock * 1000;


 div = gcd(n, cts);

 n /= div;
 cts /= div;





 mul = ((128*freq/1000) + (n-1))/n;

 n *= mul;
 cts *= mul;


 if (n < (128*freq/1500))
  pr_warn("Calculated ACR N value is too small. You may experience audio problems.\n");
 if (n > (128*freq/300))
  pr_warn("Calculated ACR N value is too large. You may experience audio problems.\n");

 *N = n;
 *CTS = cts;

 DRM_DEBUG("Calculated ACR timing N=%d CTS=%d for frequency %d\n",
    *N, *CTS, freq);
}
