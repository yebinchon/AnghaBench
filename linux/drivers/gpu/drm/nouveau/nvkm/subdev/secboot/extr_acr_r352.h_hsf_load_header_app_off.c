
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hsf_load_header {size_t* apps; } ;



__attribute__((used)) static inline u32
hsf_load_header_app_off(const struct hsf_load_header *hdr, u32 app)
{
 return hdr->apps[app];
}
