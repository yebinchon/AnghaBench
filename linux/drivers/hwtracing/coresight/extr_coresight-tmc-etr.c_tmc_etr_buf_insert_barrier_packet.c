
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct etr_buf {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ s64 ;


 scalar_t__ CORESIGHT_BARRIER_PKT_SIZE ;
 scalar_t__ EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int coresight_insert_barrier_packet (char*) ;
 scalar_t__ tmc_etr_buf_get_data (struct etr_buf*,scalar_t__,scalar_t__,char**) ;

__attribute__((used)) static inline s64
tmc_etr_buf_insert_barrier_packet(struct etr_buf *etr_buf, u64 offset)
{
 ssize_t len;
 char *bufp;

 len = tmc_etr_buf_get_data(etr_buf, offset,
       CORESIGHT_BARRIER_PKT_SIZE, &bufp);
 if (WARN_ON(len < CORESIGHT_BARRIER_PKT_SIZE))
  return -EINVAL;
 coresight_insert_barrier_packet(bufp);
 return offset + CORESIGHT_BARRIER_PKT_SIZE;
}
