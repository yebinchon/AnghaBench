
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_id {scalar_t__ data; } ;
struct amba_cs_uci_id {void* data; } ;



__attribute__((used)) static inline void *coresight_get_uci_data(const struct amba_id *id)
{
 if (id->data)
  return ((struct amba_cs_uci_id *)(id->data))->data;
 return 0;
}
