
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct bcache_device {int stripe_size; } ;


 int do_div (unsigned int,int ) ;

__attribute__((used)) static inline unsigned int offset_to_stripe(struct bcache_device *d,
     uint64_t offset)
{
 do_div(offset, d->stripe_size);
 return offset;
}
