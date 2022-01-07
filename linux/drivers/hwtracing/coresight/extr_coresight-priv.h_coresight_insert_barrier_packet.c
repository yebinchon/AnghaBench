
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORESIGHT_BARRIER_PKT_SIZE ;
 int barrier_pkt ;
 int memcpy (void*,int ,int ) ;

__attribute__((used)) static inline void coresight_insert_barrier_packet(void *buf)
{
 if (buf)
  memcpy(buf, barrier_pkt, CORESIGHT_BARRIER_PKT_SIZE);
}
