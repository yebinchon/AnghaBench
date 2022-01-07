
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int fq_flush_finish_cnt; int (* flush_cb ) (struct iova_domain*) ;int fq_flush_start_cnt; } ;


 int atomic64_inc (int *) ;
 int stub1 (struct iova_domain*) ;

__attribute__((used)) static void iova_domain_flush(struct iova_domain *iovad)
{
 atomic64_inc(&iovad->fq_flush_start_cnt);
 iovad->flush_cb(iovad);
 atomic64_inc(&iovad->fq_flush_finish_cnt);
}
