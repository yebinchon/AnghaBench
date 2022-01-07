
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CAAM_CMD_SZ ;
 int FIFOLD_CLASS_CLASS1 ;
 int FIFOLD_TYPE_LAST1 ;
 int FIFOLD_TYPE_MSG ;
 int FIFOST_TYPE_MESSAGE_DATA ;
 int KEY_VLF ;
 int REG0 ;
 int SEQINLEN ;
 int VARSEQINLEN ;
 int VARSEQOUTLEN ;
 int append_math_add (int *,int ,int ,int ,int ) ;
 int append_seq_fifo_load (int *,int ,int) ;
 int append_seq_fifo_store (int *,int ,int) ;

__attribute__((used)) static inline void skcipher_append_src_dst(u32 *desc)
{
 append_math_add(desc, VARSEQOUTLEN, SEQINLEN, REG0, CAAM_CMD_SZ);
 append_math_add(desc, VARSEQINLEN, SEQINLEN, REG0, CAAM_CMD_SZ);
 append_seq_fifo_load(desc, 0, FIFOLD_CLASS_CLASS1 |
        KEY_VLF | FIFOLD_TYPE_MSG | FIFOLD_TYPE_LAST1);
 append_seq_fifo_store(desc, 0, FIFOST_TYPE_MESSAGE_DATA | KEY_VLF);
}
