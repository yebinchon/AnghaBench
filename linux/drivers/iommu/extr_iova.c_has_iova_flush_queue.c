
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova_domain {int fq; } ;



bool has_iova_flush_queue(struct iova_domain *iovad)
{
 return !!iovad->fq;
}
