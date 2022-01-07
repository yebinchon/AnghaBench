
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum pl330_cond { ____Placeholder_pl330_cond } pl330_cond ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 int ALWAYS ;
 int BURST ;



 int SINGLE ;
 int WARN_ON (int) ;
 int _emit_LD (unsigned int,int *,int) ;
 int _emit_LDP (unsigned int,int *,int,int ) ;

__attribute__((used)) static u32 _emit_load(unsigned int dry_run, u8 buf[],
 enum pl330_cond cond, enum dma_transfer_direction direction,
 u8 peri)
{
 int off = 0;

 switch (direction) {
 case 128:

 case 129:
  off += _emit_LD(dry_run, &buf[off], cond);
  break;

 case 130:
  if (cond == ALWAYS) {
   off += _emit_LDP(dry_run, &buf[off], SINGLE,
    peri);
   off += _emit_LDP(dry_run, &buf[off], BURST,
    peri);
  } else {
   off += _emit_LDP(dry_run, &buf[off], cond,
    peri);
  }
  break;

 default:

  WARN_ON(1);
  break;
 }

 return off;
}
