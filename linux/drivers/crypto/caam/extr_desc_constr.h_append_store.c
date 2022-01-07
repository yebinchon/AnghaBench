
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int dma_addr_t ;


 unsigned int CMD_STORE ;
 unsigned int LDST_SRCDST_MASK ;
 unsigned int LDST_SRCDST_WORD_DESCBUF_JOB ;
 unsigned int LDST_SRCDST_WORD_DESCBUF_JOB_WE ;
 unsigned int LDST_SRCDST_WORD_DESCBUF_SHARED ;
 unsigned int LDST_SRCDST_WORD_DESCBUF_SHARED_WE ;
 int append_cmd (unsigned int* const,unsigned int) ;
 int append_ptr (unsigned int* const,int ) ;

__attribute__((used)) static inline void append_store(u32 * const desc, dma_addr_t ptr,
    unsigned int len, u32 options)
{
 u32 cmd_src;

 cmd_src = options & LDST_SRCDST_MASK;

 append_cmd(desc, CMD_STORE | options | len);


 if (!(cmd_src == LDST_SRCDST_WORD_DESCBUF_SHARED ||
       cmd_src == LDST_SRCDST_WORD_DESCBUF_JOB ||
       cmd_src == LDST_SRCDST_WORD_DESCBUF_JOB_WE ||
       cmd_src == LDST_SRCDST_WORD_DESCBUF_SHARED_WE))
  append_ptr(desc, ptr);
}
