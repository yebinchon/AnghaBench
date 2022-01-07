
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alginfo {int algtype; int keylen; int key_dma; int key_virt; } ;


 int CAAM_CMD_SZ ;
 int CLASS_1 ;
 int FIFOLDST_VLF ;
 int FIFOLD_CLASS_CLASS1 ;
 int FIFOLD_TYPE_LAST1 ;
 int FIFOLD_TYPE_MSG ;
 int FIFOST_TYPE_KEY_KEK ;
 int HDR_SAVECTX ;
 int HDR_SHARE_SERIAL ;
 int JUMP_COND_SHRD ;
 int JUMP_TEST_ALL ;
 int KEY_DEST_CLASS_REG ;
 int KEY_ENC ;
 int LDST_CLASS_1_CCB ;
 int LDST_SRCDST_BYTE_CONTEXT ;
 int OP_ALG_AS_INIT ;
 int OP_ALG_AS_INITFINAL ;
 int OP_ALG_ENCRYPT ;
 int REG0 ;
 int SEQINLEN ;
 int VARSEQINLEN ;
 int append_fifo_store (int* const,int ,int ,int) ;
 int* append_jump (int* const,int) ;
 int append_key (int* const,int ,int ,int) ;
 int append_key_as_imm (int* const,int ,int ,int ,int) ;
 int append_math_add (int* const,int ,int ,int ,int ) ;
 int append_operation (int* const,int) ;
 int append_seq_fifo_load (int* const,int ,int) ;
 int append_seq_load (int* const,int,int) ;
 int append_seq_store (int* const,int,int) ;
 int init_sh_desc (int* const,int) ;
 scalar_t__ is_xcbc_aes (int) ;
 int set_jump_tgt_here (int* const,int*) ;

void cnstr_shdsc_sk_hash(u32 * const desc, struct alginfo *adata, u32 state,
    int digestsize, int ctx_len)
{
 u32 *skip_key_load;

 init_sh_desc(desc, HDR_SHARE_SERIAL | HDR_SAVECTX);


 skip_key_load = append_jump(desc, JUMP_TEST_ALL | JUMP_COND_SHRD);

 if (state == OP_ALG_AS_INIT || state == OP_ALG_AS_INITFINAL) {
  append_key_as_imm(desc, adata->key_virt, adata->keylen,
      adata->keylen, CLASS_1 | KEY_DEST_CLASS_REG);
 } else {
  if (is_xcbc_aes(adata->algtype))

   append_key(desc, adata->key_dma, adata->keylen,
       CLASS_1 | KEY_DEST_CLASS_REG | KEY_ENC);
  else
   append_key_as_imm(desc, adata->key_virt, adata->keylen,
       adata->keylen, CLASS_1 |
       KEY_DEST_CLASS_REG);

  append_seq_load(desc, ctx_len, LDST_CLASS_1_CCB |
    LDST_SRCDST_BYTE_CONTEXT);
 }

 set_jump_tgt_here(desc, skip_key_load);


 append_operation(desc, adata->algtype | state | OP_ALG_ENCRYPT);





 append_math_add(desc, VARSEQINLEN, SEQINLEN, REG0, CAAM_CMD_SZ);


 append_seq_fifo_load(desc, 0, FIFOLD_CLASS_CLASS1 | FIFOLD_TYPE_LAST1 |
        FIFOLD_TYPE_MSG | FIFOLDST_VLF);






 append_seq_store(desc, digestsize, LDST_CLASS_1_CCB |
    LDST_SRCDST_BYTE_CONTEXT);
 if (is_xcbc_aes(adata->algtype) && state == OP_ALG_AS_INIT)

  append_fifo_store(desc, adata->key_dma, adata->keylen,
      LDST_CLASS_1_CCB | FIFOST_TYPE_KEY_KEK);
}
