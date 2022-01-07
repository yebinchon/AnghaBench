
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct io_mapping {int dummy; } ;


 scalar_t__ fbmem_peek (struct io_mapping*,scalar_t__) ;
 int fbmem_poke (struct io_mapping*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline bool
fbmem_readback(struct io_mapping *fb, u32 off, u32 val)
{
 fbmem_poke(fb, off, val);
 return val == fbmem_peek(fb, off);
}
