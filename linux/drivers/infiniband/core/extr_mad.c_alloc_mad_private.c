
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_private {size_t mad_size; } ;
typedef int gfp_t ;


 struct ib_mad_private* kzalloc (size_t,int ) ;

__attribute__((used)) static struct ib_mad_private *alloc_mad_private(size_t mad_size, gfp_t flags)
{
 size_t size = sizeof(struct ib_mad_private) + mad_size;
 struct ib_mad_private *ret = kzalloc(size, flags);

 if (ret)
  ret->mad_size = mad_size;

 return ret;
}
