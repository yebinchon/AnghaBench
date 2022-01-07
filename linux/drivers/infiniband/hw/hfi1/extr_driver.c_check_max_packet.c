
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_packet {int numpkt; } ;


 int MAX_PKT_RECV ;
 int RCV_PKT_OK ;
 int max_packet_exceeded (struct hfi1_packet*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int check_max_packet(struct hfi1_packet *packet, int thread)
{
 int ret = RCV_PKT_OK;

 if (unlikely((packet->numpkt & (MAX_PKT_RECV - 1)) == 0))
  ret = max_packet_exceeded(packet, thread);
 return ret;
}
