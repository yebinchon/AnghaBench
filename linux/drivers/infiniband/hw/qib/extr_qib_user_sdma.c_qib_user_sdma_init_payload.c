
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_user_sdma_queue {int dummy; } ;
struct qib_user_sdma_pkt {scalar_t__ frag_size; scalar_t__ bytes_togo; int addr; } ;
struct qib_devdata {int dummy; } ;
struct iovec {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int qib_user_sdma_coalesce (struct qib_devdata const*,struct qib_user_sdma_queue*,struct qib_user_sdma_pkt*,struct iovec const*,unsigned long) ;
 int qib_user_sdma_pin_pkt (struct qib_devdata const*,struct qib_user_sdma_queue*,struct qib_user_sdma_pkt*,struct iovec const*,unsigned long) ;

__attribute__((used)) static int qib_user_sdma_init_payload(const struct qib_devdata *dd,
          struct qib_user_sdma_queue *pq,
          struct qib_user_sdma_pkt *pkt,
          const struct iovec *iov,
          unsigned long niov, int npages)
{
 int ret = 0;

 if (pkt->frag_size == pkt->bytes_togo &&
   npages >= ARRAY_SIZE(pkt->addr))
  ret = qib_user_sdma_coalesce(dd, pq, pkt, iov, niov);
 else
  ret = qib_user_sdma_pin_pkt(dd, pq, pkt, iov, niov);

 return ret;
}
