
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_agent {int dummy; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;



__attribute__((used)) static inline int ib_mad_agent_security_setup(struct ib_mad_agent *agent,
           enum ib_qp_type qp_type)
{
 return 0;
}
