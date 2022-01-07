
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int dma_addr_t ;


 unsigned int SQIN_PRE ;
 unsigned int SQIN_RTO ;
 int append_cmd (unsigned int* const,unsigned int) ;
 int append_ptr (unsigned int* const,int ) ;

__attribute__((used)) static inline void append_cmd_ptr_extlen(u32 * const desc, dma_addr_t ptr,
      unsigned int len, u32 command)
{
 append_cmd(desc, command);
 if (!(command & (SQIN_RTO | SQIN_PRE)))
  append_ptr(desc, ptr);
 append_cmd(desc, len);
}
