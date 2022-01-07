
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct zip_device {TYPE_1__* iq; } ;
struct TYPE_2__ {int sw_head; int sw_tail; } ;



__attribute__((used)) static inline u32 zip_cmd_queue_consumed(struct zip_device *zip_dev, int queue)
{
 return ((zip_dev->iq[queue].sw_head - zip_dev->iq[queue].sw_tail) *
  sizeof(u64 *));
}
