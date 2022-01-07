
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t DIV_ROUND_UP (size_t,size_t) ;

__attribute__((used)) static inline size_t bcm2835_dma_frames_for_length(size_t len,
         size_t max_len)
{
 return DIV_ROUND_UP(len, max_len);
}
