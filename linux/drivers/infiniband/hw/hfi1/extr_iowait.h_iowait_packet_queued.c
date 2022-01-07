
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait_work {int tx_head; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool iowait_packet_queued(struct iowait_work *wait)
{
 return !list_empty(&wait->tx_head);
}
