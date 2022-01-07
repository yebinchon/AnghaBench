
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,unsigned long) ;

__attribute__((used)) static int input_bits_to_string(char *buf, int buf_size,
    unsigned long bits, bool skip_empty)
{
 return bits || !skip_empty ?
  snprintf(buf, buf_size, "%lx", bits) : 0;
}
