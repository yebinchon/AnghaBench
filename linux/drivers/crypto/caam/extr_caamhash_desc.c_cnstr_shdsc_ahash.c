
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alginfo {int algtype; scalar_t__ keylen; int keylen_pad; int key_virt; } ;


 int CAAM_CMD_SZ ;
 int CLASS_2 ;
 int FIFOLD_CLASS_CLASS2 ;
 int FIFOLD_TYPE_LAST2 ;
 int FIFOLD_TYPE_MSG ;
 int HDR_SHARE_SERIAL ;
 int JUMP_COND_SHRD ;
 int JUMP_JSL ;
 int JUMP_TEST_ALL ;
 int KEY_DEST_MDHA_SPLIT ;
 int KEY_ENC ;
 int KEY_VLF ;
 int LDST_CLASS_2_CCB ;
 int LDST_SRCDST_BYTE_CONTEXT ;
 int OP_ALG_AAI_HMAC_PRECOMP ;
 int OP_ALG_AS_UPDATE ;
 int OP_ALG_ENCRYPT ;
 int REG0 ;
 int SEQINLEN ;
 int VARSEQINLEN ;
 int* append_jump (int* const,int) ;
 int append_key_as_imm (int* const,int ,int ,scalar_t__,int) ;
 int append_math_add (int* const,int ,int ,int ,int ) ;
 int append_operation (int* const,int) ;
 int append_proto_dkp (int* const,struct alginfo*) ;
 int append_seq_fifo_load (int* const,int ,int) ;
 int append_seq_load (int* const,int,int) ;
 int append_seq_store (int* const,int,int) ;
 int init_sh_desc (int* const,int ) ;
 int set_jump_tgt_here (int* const,int*) ;

void cnstr_shdsc_ahash(u32 * const desc, struct alginfo *adata, u32 state,
         int digestsize, int ctx_len, bool import_ctx, int era)
{
 u32 op = adata->algtype;

 init_sh_desc(desc, HDR_SHARE_SERIAL);


 if (state != OP_ALG_AS_UPDATE && adata->keylen) {
  u32 *skip_key_load;


  skip_key_load = append_jump(desc, JUMP_JSL | JUMP_TEST_ALL |
         JUMP_COND_SHRD);

  if (era < 6)
   append_key_as_imm(desc, adata->key_virt,
       adata->keylen_pad,
       adata->keylen, CLASS_2 |
       KEY_DEST_MDHA_SPLIT | KEY_ENC);
  else
   append_proto_dkp(desc, adata);

  set_jump_tgt_here(desc, skip_key_load);

  op |= OP_ALG_AAI_HMAC_PRECOMP;
 }


 if (import_ctx)
  append_seq_load(desc, ctx_len, LDST_CLASS_2_CCB |
    LDST_SRCDST_BYTE_CONTEXT);


 append_operation(desc, op | state | OP_ALG_ENCRYPT);





 append_math_add(desc, VARSEQINLEN, SEQINLEN, REG0, CAAM_CMD_SZ);

 append_seq_fifo_load(desc, 0, FIFOLD_CLASS_CLASS2 | FIFOLD_TYPE_LAST2 |
        FIFOLD_TYPE_MSG | KEY_VLF);

 append_seq_store(desc, digestsize, LDST_CLASS_2_CCB |
    LDST_SRCDST_BYTE_CONTEXT);
}
