
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvrdma_wc_status { ____Placeholder_pvrdma_wc_status } pvrdma_wc_status ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;



__attribute__((used)) static inline enum ib_wc_status pvrdma_wc_status_to_ib(
     enum pvrdma_wc_status status)
{
 return (enum ib_wc_status)status;
}
