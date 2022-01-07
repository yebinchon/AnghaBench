
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cik_mqd {int dummy; } ;



__attribute__((used)) static inline struct cik_mqd *get_mqd(void *mqd)
{
 return (struct cik_mqd *)mqd;
}
