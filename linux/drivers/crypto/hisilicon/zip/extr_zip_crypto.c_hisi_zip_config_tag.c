
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_zip_sqe {int tag; } ;



__attribute__((used)) static void hisi_zip_config_tag(struct hisi_zip_sqe *sqe, u32 tag)
{
 sqe->tag = tag;
}
