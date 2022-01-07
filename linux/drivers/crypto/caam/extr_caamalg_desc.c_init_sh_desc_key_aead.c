
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alginfo {unsigned int keylen; unsigned int keylen_pad; int key_dma; int key_virt; scalar_t__ key_inline; } ;


 int CLASS_1 ;
 int CLASS_2 ;
 unsigned int CTR_RFC3686_NONCE_SIZE ;
 int HDR_SAVECTX ;
 int HDR_SHARE_SERIAL ;
 int JUMP_COND_SHRD ;
 int JUMP_JSL ;
 int JUMP_TEST_ALL ;
 int KEY_DEST_CLASS_REG ;
 int KEY_DEST_MDHA_SPLIT ;
 int KEY_ENC ;
 int LDST_CLASS_IND_CCB ;
 int LDST_IMM ;
 int LDST_SRCDST_BYTE_OUTFIFO ;
 int MOVE_DEST_CLASS1CTX ;
 unsigned int MOVE_LEN_SHIFT ;
 int MOVE_OFFSET_SHIFT ;
 int MOVE_SRC_OUTFIFO ;
 int * append_jump (int * const,int) ;
 int append_key (int * const,int ,unsigned int,int) ;
 int append_key_as_imm (int * const,int ,unsigned int,unsigned int,int) ;
 int append_load_as_imm (int * const,int *,unsigned int,int) ;
 int append_move (int * const,int) ;
 int append_proto_dkp (int * const,struct alginfo* const) ;
 int init_sh_desc (int * const,int) ;
 int set_jump_tgt_here (int * const,int *) ;

__attribute__((used)) static void init_sh_desc_key_aead(u32 * const desc,
      struct alginfo * const cdata,
      struct alginfo * const adata,
      const bool is_rfc3686, u32 *nonce, int era)
{
 u32 *key_jump_cmd;
 unsigned int enckeylen = cdata->keylen;


 init_sh_desc(desc, HDR_SHARE_SERIAL | HDR_SAVECTX);


 key_jump_cmd = append_jump(desc, JUMP_JSL | JUMP_TEST_ALL |
       JUMP_COND_SHRD);






 if (is_rfc3686)
  enckeylen -= CTR_RFC3686_NONCE_SIZE;

 if (era < 6) {
  if (adata->key_inline)
   append_key_as_imm(desc, adata->key_virt,
       adata->keylen_pad, adata->keylen,
       CLASS_2 | KEY_DEST_MDHA_SPLIT |
       KEY_ENC);
  else
   append_key(desc, adata->key_dma, adata->keylen,
       CLASS_2 | KEY_DEST_MDHA_SPLIT | KEY_ENC);
 } else {
  append_proto_dkp(desc, adata);
 }

 if (cdata->key_inline)
  append_key_as_imm(desc, cdata->key_virt, enckeylen,
      enckeylen, CLASS_1 | KEY_DEST_CLASS_REG);
 else
  append_key(desc, cdata->key_dma, enckeylen, CLASS_1 |
      KEY_DEST_CLASS_REG);


 if (is_rfc3686) {
  append_load_as_imm(desc, nonce, CTR_RFC3686_NONCE_SIZE,
       LDST_CLASS_IND_CCB |
       LDST_SRCDST_BYTE_OUTFIFO | LDST_IMM);
  append_move(desc,
       MOVE_SRC_OUTFIFO |
       MOVE_DEST_CLASS1CTX |
       (16 << MOVE_OFFSET_SHIFT) |
       (CTR_RFC3686_NONCE_SIZE << MOVE_LEN_SHIFT));
 }

 set_jump_tgt_here(desc, key_jump_cmd);
}
