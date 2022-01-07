
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dcb_output {int extdev; int location; int type; } ;



__attribute__((used)) static inline u16
dcb_outp_hasht(struct dcb_output *outp)
{
 return (outp->extdev << 8) | (outp->location << 4) | outp->type;
}
