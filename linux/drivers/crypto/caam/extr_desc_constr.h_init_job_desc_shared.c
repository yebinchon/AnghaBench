
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int HDR_SHARED ;
 int HDR_START_IDX_SHIFT ;
 int PRINT_POS ;
 int append_ptr (int* const,int ) ;
 int init_job_desc (int* const,int) ;

__attribute__((used)) static inline void init_job_desc_shared(u32 * const desc, dma_addr_t ptr,
     int len, u32 options)
{
 PRINT_POS;
 init_job_desc(desc, HDR_SHARED | options |
        (len << HDR_START_IDX_SHIFT));
 append_ptr(desc, ptr);
}
