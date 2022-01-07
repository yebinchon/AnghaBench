
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct hgsmi_buffer_tail {int dummy; } ;
struct hgsmi_buffer_header {int dummy; } ;
typedef int offset ;


 scalar_t__ hgsmi_hash_end (scalar_t__) ;
 scalar_t__ hgsmi_hash_process (scalar_t__,int *,int) ;

__attribute__((used)) static u32 hgsmi_checksum(u32 offset,
     const struct hgsmi_buffer_header *header,
     const struct hgsmi_buffer_tail *tail)
{
 u32 checksum;

 checksum = hgsmi_hash_process(0, (u8 *)&offset, sizeof(offset));
 checksum = hgsmi_hash_process(checksum, (u8 *)header, sizeof(*header));

 checksum = hgsmi_hash_process(checksum, (u8 *)tail, 4);

 return hgsmi_hash_end(checksum);
}
