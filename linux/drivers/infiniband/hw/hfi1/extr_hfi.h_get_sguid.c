
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int * guids; } ;
struct hfi1_ibport {int dummy; } ;
typedef int __be64 ;


 unsigned int HFI1_GUIDS_PER_PORT ;
 int WARN_ON (int) ;
 int cpu_to_be64 (int ) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;

__attribute__((used)) static inline __be64 get_sguid(struct hfi1_ibport *ibp, unsigned int index)
{
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);

 WARN_ON(index >= HFI1_GUIDS_PER_PORT);
 return cpu_to_be64(ppd->guids[index]);
}
