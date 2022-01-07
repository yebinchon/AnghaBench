
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct resource {int start; } ;
struct TYPE_2__ {int end; int start; } ;
struct iforce {int mem_mutex; TYPE_1__ device_memory; } ;
typedef int __s16 ;


 int ENOSPC ;
 int FF_CMD_PERIOD ;
 unsigned char HI (int ) ;
 unsigned char HIFIX80 (int ) ;
 unsigned char LO (int ) ;
 int TIME_SCALE (int ) ;
 scalar_t__ allocate_resource (TYPE_1__*,struct resource*,int,int ,int ,long,int *,int *) ;
 int iforce_send_packet (struct iforce*,int ,unsigned char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int make_period_modifier(struct iforce* iforce,
 struct resource* mod_chunk, int no_alloc,
 __s16 magnitude, __s16 offset, u16 period, u16 phase)
{
 unsigned char data[7];

 period = TIME_SCALE(period);

 if (!no_alloc) {
  mutex_lock(&iforce->mem_mutex);
  if (allocate_resource(&(iforce->device_memory), mod_chunk, 0x0c,
   iforce->device_memory.start, iforce->device_memory.end, 2L,
   ((void*)0), ((void*)0))) {
   mutex_unlock(&iforce->mem_mutex);
   return -ENOSPC;
  }
  mutex_unlock(&iforce->mem_mutex);
 }

 data[0] = LO(mod_chunk->start);
 data[1] = HI(mod_chunk->start);

 data[2] = HIFIX80(magnitude);
 data[3] = HIFIX80(offset);
 data[4] = HI(phase);

 data[5] = LO(period);
 data[6] = HI(period);

 iforce_send_packet(iforce, FF_CMD_PERIOD, data);

 return 0;
}
