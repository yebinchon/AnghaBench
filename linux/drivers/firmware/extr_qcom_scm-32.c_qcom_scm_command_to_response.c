
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void qcom_scm_response ;
struct qcom_scm_command {int resp_hdr_offset; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline struct qcom_scm_response *qcom_scm_command_to_response(
  const struct qcom_scm_command *cmd)
{
 return (void *)cmd + le32_to_cpu(cmd->resp_hdr_offset);
}
