
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum msg_types { ____Placeholder_msg_types } msg_types ;


 int ARRAY_SIZE (char**) ;
 int MSG_TYPE_BASE_VAL ;
 char** siano_msgs ;

char *smscore_translate_msg(enum msg_types msgtype)
{
 int i = msgtype - MSG_TYPE_BASE_VAL;
 char *msg;

 if (i < 0 || i >= ARRAY_SIZE(siano_msgs))
  return "Unknown msg type";

 msg = siano_msgs[i];

 if (!*msg)
  return "Unknown msg type";

 return msg;
}
