
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_msg {int flags; } ;


 int CEC_MSG_FL_RAW ;

__attribute__((used)) static inline bool msg_is_raw(const struct cec_msg *msg)
{
 return msg->flags & CEC_MSG_FL_RAW;
}
