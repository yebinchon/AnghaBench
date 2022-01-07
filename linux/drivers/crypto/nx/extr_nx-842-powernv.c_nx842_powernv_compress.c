
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCW_FC_842_COMP_CRC ;
 int nx842_powernv_exec (unsigned char const*,unsigned int,unsigned char*,unsigned int*,void*,int ) ;

__attribute__((used)) static int nx842_powernv_compress(const unsigned char *in, unsigned int inlen,
      unsigned char *out, unsigned int *outlenp,
      void *wmem)
{
 return nx842_powernv_exec(in, inlen, out, outlenp,
          wmem, CCW_FC_842_COMP_CRC);
}
