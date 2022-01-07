
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_msg {int * buffer; } ;


 unsigned int SSP_HEADER_SIZE_ALIGNED ;
 int memcpy (int *,void const*,unsigned int) ;

__attribute__((used)) static inline void ssp_fill_buffer(struct ssp_msg *m, unsigned int offset,
       const void *src, unsigned int len)
{
 memcpy(&m->buffer[SSP_HEADER_SIZE_ALIGNED + offset], src, len);
}
