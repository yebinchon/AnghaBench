
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int comm; } ;


 TYPE_1__* current ;
 int pr_debug (char*,int ,unsigned int,char const*,unsigned int,unsigned int,unsigned int,unsigned long) ;

__attribute__((used)) static void dbg_result(const char *err, unsigned int n, unsigned int src_off,
         unsigned int dst_off, unsigned int len,
         unsigned long data)
{
 pr_debug("%s: result #%u: '%s' with src_off=0x%x dst_off=0x%x len=0x%x (%lu)\n",
   current->comm, n, err, src_off, dst_off, len, data);
}
