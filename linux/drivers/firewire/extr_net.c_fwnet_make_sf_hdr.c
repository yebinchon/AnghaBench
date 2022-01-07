
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfc2734_header {int w0; int w1; } ;


 int fwnet_set_hdr_dg_size (unsigned int) ;
 int fwnet_set_hdr_dgl (unsigned int) ;
 int fwnet_set_hdr_fg_off (unsigned int) ;
 int fwnet_set_hdr_lf (unsigned int) ;

__attribute__((used)) static inline void fwnet_make_sf_hdr(struct rfc2734_header *hdr,
  unsigned lf, unsigned dg_size, unsigned fg_off, unsigned dgl)
{
 hdr->w0 = fwnet_set_hdr_lf(lf)
    | fwnet_set_hdr_dg_size(dg_size)
    | fwnet_set_hdr_fg_off(fg_off);
 hdr->w1 = fwnet_set_hdr_dgl(dgl);
}
