
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mhl_burst_emsc_support {int num_entries; int * burst_id; int hdr; } ;
typedef enum mhl_burst_id { ____Placeholder_mhl_burst_id } mhl_burst_id ;


 int MHL_BURST_ID_EMSC_SUPPORT ;
 int cpu_to_be16 (int) ;
 int sii8620_mhl_burst_hdr_set (int *,int ) ;

__attribute__((used)) static void sii8620_mhl_burst_emsc_support_set(struct mhl_burst_emsc_support *d,
 enum mhl_burst_id id)
{
 sii8620_mhl_burst_hdr_set(&d->hdr, MHL_BURST_ID_EMSC_SUPPORT);
 d->num_entries = 1;
 d->burst_id[0] = cpu_to_be16(id);
}
