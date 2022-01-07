
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FIFOLD_CLASS_BOTH ;
 int FIFOLD_TYPE_LASTBOTH ;
 int FIFOST_TYPE_MESSAGE_DATA ;
 int KEY_VLF ;
 int append_seq_fifo_load (int*,int ,int) ;
 int append_seq_fifo_store (int*,int ,int) ;

__attribute__((used)) static inline void aead_append_src_dst(u32 *desc, u32 msg_type)
{
 append_seq_fifo_store(desc, 0, FIFOST_TYPE_MESSAGE_DATA | KEY_VLF);
 append_seq_fifo_load(desc, 0, FIFOLD_CLASS_BOTH |
        KEY_VLF | msg_type | FIFOLD_TYPE_LASTBOTH);
}
