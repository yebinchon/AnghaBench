
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {size_t hfi1_id; struct hfi1_asic_data* asic_data; } ;
struct hfi1_asic_data {int ** dds; } ;



__attribute__((used)) static struct hfi1_asic_data *release_asic_data(struct hfi1_devdata *dd)
{
 struct hfi1_asic_data *ad;
 int other;

 if (!dd->asic_data)
  return ((void*)0);
 dd->asic_data->dds[dd->hfi1_id] = ((void*)0);
 other = dd->hfi1_id ? 0 : 1;
 ad = dd->asic_data;
 dd->asic_data = ((void*)0);

 return ad->dds[other] ? ((void*)0) : ad;
}
