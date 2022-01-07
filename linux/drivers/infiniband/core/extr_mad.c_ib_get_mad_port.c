
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_port_private {int dummy; } ;
struct ib_device {int dummy; } ;


 struct ib_mad_port_private* __ib_get_mad_port (struct ib_device*,int) ;
 int ib_mad_port_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline struct ib_mad_port_private *
ib_get_mad_port(struct ib_device *device, int port_num)
{
 struct ib_mad_port_private *entry;
 unsigned long flags;

 spin_lock_irqsave(&ib_mad_port_list_lock, flags);
 entry = __ib_get_mad_port(device, port_num);
 spin_unlock_irqrestore(&ib_mad_port_list_lock, flags);

 return entry;
}
