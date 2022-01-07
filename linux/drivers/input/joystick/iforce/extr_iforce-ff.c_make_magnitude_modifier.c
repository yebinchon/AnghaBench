
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_2__ {int end; int start; } ;
struct iforce {int mem_mutex; TYPE_1__ device_memory; } ;
typedef int __s16 ;


 int ENOSPC ;
 int FF_CMD_MAGNITUDE ;
 unsigned char HI (int ) ;
 unsigned char HIFIX80 (int ) ;
 unsigned char LO (int ) ;
 scalar_t__ allocate_resource (TYPE_1__*,struct resource*,int,int ,int ,long,int *,int *) ;
 int iforce_dump_packet (struct iforce*,char*,int ,unsigned char*) ;
 int iforce_send_packet (struct iforce*,int ,unsigned char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int make_magnitude_modifier(struct iforce* iforce,
 struct resource* mod_chunk, int no_alloc, __s16 level)
{
 unsigned char data[3];

 if (!no_alloc) {
  mutex_lock(&iforce->mem_mutex);
  if (allocate_resource(&(iforce->device_memory), mod_chunk, 2,
   iforce->device_memory.start, iforce->device_memory.end, 2L,
   ((void*)0), ((void*)0))) {
   mutex_unlock(&iforce->mem_mutex);
   return -ENOSPC;
  }
  mutex_unlock(&iforce->mem_mutex);
 }

 data[0] = LO(mod_chunk->start);
 data[1] = HI(mod_chunk->start);
 data[2] = HIFIX80(level);

 iforce_send_packet(iforce, FF_CMD_MAGNITUDE, data);

 iforce_dump_packet(iforce, "magnitude", FF_CMD_MAGNITUDE, data);
 return 0;
}
