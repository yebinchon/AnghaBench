
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int offset; struct host1x_bo* bo; } ;
struct host1x_reloc {scalar_t__ shift; TYPE_1__ cmdbuf; } ;
struct host1x_bo {int dummy; } ;



__attribute__((used)) static bool check_reloc(struct host1x_reloc *reloc, struct host1x_bo *cmdbuf,
   unsigned int offset)
{
 offset *= sizeof(u32);

 if (reloc->cmdbuf.bo != cmdbuf || reloc->cmdbuf.offset != offset)
  return 0;


 if (reloc->shift)
  return 0;

 return 1;
}
