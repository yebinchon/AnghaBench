
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwch_ep {int dummy; } ;
struct iw_cm_id {struct iwch_ep* provider_data; } ;



__attribute__((used)) static inline struct iwch_ep *to_ep(struct iw_cm_id *cm_id)
{
 return cm_id->provider_data;
}
