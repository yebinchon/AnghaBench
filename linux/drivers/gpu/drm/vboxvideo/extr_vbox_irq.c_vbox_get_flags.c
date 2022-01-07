
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vbox_private {scalar_t__ guest_heap; } ;


 scalar_t__ HOST_FLAGS_OFFSET ;
 int readl (scalar_t__) ;

__attribute__((used)) static u32 vbox_get_flags(struct vbox_private *vbox)
{
 return readl(vbox->guest_heap + HOST_FLAGS_OFFSET);
}
