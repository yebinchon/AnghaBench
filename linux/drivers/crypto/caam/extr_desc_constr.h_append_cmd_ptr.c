
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int append_cmd (int* const,int) ;
 int append_ptr (int* const,int ) ;

__attribute__((used)) static inline void append_cmd_ptr(u32 * const desc, dma_addr_t ptr, int len,
      u32 command)
{
 append_cmd(desc, command | len);
 append_ptr(desc, ptr);
}
