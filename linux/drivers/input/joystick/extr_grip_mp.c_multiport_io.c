
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gameport {int dummy; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mp_io (struct gameport*,int,int,int *) ;

__attribute__((used)) static int multiport_io(struct gameport* gameport, int sendflags, int sendcode, u32 *packet)
{
 int status;
 unsigned long flags;

 local_irq_save(flags);
 status = mp_io(gameport, sendflags, sendcode, packet);
 local_irq_restore(flags);

 return status;
}
