
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;

__attribute__((used)) static inline bool is_eotf_supported(u8 output_eotf, u8 sink_eotf)
{
 return sink_eotf & BIT(output_eotf);
}
