
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct send_context {int credits; } ;


 int DIV_ROUND_UP (int,int ) ;
 int PIO_BLOCK_SIZE ;

u32 sc_mtu_to_threshold(struct send_context *sc, u32 mtu, u32 hdrqentsize)
{
 u32 release_credits;
 u32 threshold;


 mtu += hdrqentsize << 2;
 release_credits = DIV_ROUND_UP(mtu, PIO_BLOCK_SIZE);


 if (sc->credits <= release_credits)
  threshold = 1;
 else
  threshold = sc->credits - release_credits;

 return threshold;
}
