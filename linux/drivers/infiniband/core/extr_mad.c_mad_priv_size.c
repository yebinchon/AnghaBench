
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_private {size_t mad_size; } ;



__attribute__((used)) static size_t mad_priv_size(const struct ib_mad_private *mp)
{
 return sizeof(struct ib_mad_private) + mp->mad_size;
}
