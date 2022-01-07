
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long S3C2410_ADCDAT0_UPDOWN ;

__attribute__((used)) static inline bool get_down(unsigned long data0, unsigned long data1)
{

 return (!(data0 & S3C2410_ADCDAT0_UPDOWN) &&
  !(data1 & S3C2410_ADCDAT0_UPDOWN));
}
