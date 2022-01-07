
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mhl3_burst_header {int total_entries; int sequence_index; int id; } ;
typedef enum mhl_burst_id { ____Placeholder_mhl_burst_id } mhl_burst_id ;


 int cpu_to_be16 (int) ;

__attribute__((used)) static void sii8620_mhl_burst_hdr_set(struct mhl3_burst_header *h,
 enum mhl_burst_id id)
{
 h->id = cpu_to_be16(id);
 h->total_entries = 1;
 h->sequence_index = 1;
}
