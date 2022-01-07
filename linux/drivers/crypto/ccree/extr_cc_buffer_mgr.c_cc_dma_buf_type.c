
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cc_req_dma_buf_type { ____Placeholder_cc_req_dma_buf_type } cc_req_dma_buf_type ;






__attribute__((used)) static inline char *cc_dma_buf_type(enum cc_req_dma_buf_type type)
{
 switch (type) {
 case 128:
  return "BUF_NULL";
 case 130:
  return "BUF_DLLI";
 case 129:
  return "BUF_MLLI";
 default:
  return "BUF_INVALID";
 }
}
