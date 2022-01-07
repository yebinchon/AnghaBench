
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_scm_response {int buf_offset; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline void *qcom_scm_get_response_buffer(const struct qcom_scm_response *rsp)
{
 return (void *)rsp + le32_to_cpu(rsp->buf_offset);
}
