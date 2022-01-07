
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opa_aggregate {int err_reqlength; } ;


 int cpu_to_be16 (int) ;

__attribute__((used)) static inline void set_aggr_error(struct opa_aggregate *ag)
{
 ag->err_reqlength |= cpu_to_be16(0x8000);
}
