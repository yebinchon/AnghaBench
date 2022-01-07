
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IMMEDIATE ;
 int append_cmd (int* const,int) ;
 int append_data (int* const,void const*,int) ;

__attribute__((used)) static inline void append_cmd_data(u32 * const desc, const void *data, int len,
       u32 command)
{
 append_cmd(desc, command | IMMEDIATE | len);
 append_data(desc, data, len);
}
