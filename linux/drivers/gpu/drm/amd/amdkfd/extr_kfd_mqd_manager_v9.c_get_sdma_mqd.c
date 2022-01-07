
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9_sdma_mqd {int dummy; } ;



__attribute__((used)) static inline struct v9_sdma_mqd *get_sdma_mqd(void *mqd)
{
 return (struct v9_sdma_mqd *)mqd;
}
