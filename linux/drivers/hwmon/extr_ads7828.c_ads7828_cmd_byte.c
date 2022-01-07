
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 ads7828_cmd_byte(u8 cmd, int ch)
{
 return cmd | (((ch >> 1) | (ch & 0x01) << 2) << 4);
}
