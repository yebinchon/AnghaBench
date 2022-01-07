
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int strlen (char*) ;

__attribute__((used)) static inline bool dm_message_test_buffer_overflow(char *result, unsigned maxlen)
{
 return !maxlen || strlen(result) + 1 >= maxlen;
}
