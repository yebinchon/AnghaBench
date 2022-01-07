
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icp_qat_uof_filehdr {int num_chunks; } ;
struct icp_qat_uof_filechunkhdr {int offset; scalar_t__ checksum; int size; int chunk_id; } ;
struct icp_qat_uclo_objhdr {char* file_buff; scalar_t__ checksum; int size; } ;


 int GFP_KERNEL ;
 int ICP_QAT_UOF_OBJID_LEN ;
 struct icp_qat_uclo_objhdr* kzalloc (int,int ) ;
 scalar_t__ qat_uclo_calc_str_checksum (char*,int ) ;
 int strncmp (int ,char*,int ) ;

__attribute__((used)) static struct icp_qat_uclo_objhdr *
qat_uclo_map_chunk(char *buf, struct icp_qat_uof_filehdr *file_hdr,
     char *chunk_id)
{
 struct icp_qat_uof_filechunkhdr *file_chunk;
 struct icp_qat_uclo_objhdr *obj_hdr;
 char *chunk;
 int i;

 file_chunk = (struct icp_qat_uof_filechunkhdr *)
  (buf + sizeof(struct icp_qat_uof_filehdr));
 for (i = 0; i < file_hdr->num_chunks; i++) {
  if (!strncmp(file_chunk->chunk_id, chunk_id,
        ICP_QAT_UOF_OBJID_LEN)) {
   chunk = buf + file_chunk->offset;
   if (file_chunk->checksum != qat_uclo_calc_str_checksum(
    chunk, file_chunk->size))
    break;
   obj_hdr = kzalloc(sizeof(*obj_hdr), GFP_KERNEL);
   if (!obj_hdr)
    break;
   obj_hdr->file_buff = chunk;
   obj_hdr->checksum = file_chunk->checksum;
   obj_hdr->size = file_chunk->size;
   return obj_hdr;
  }
  file_chunk++;
 }
 return ((void*)0);
}
