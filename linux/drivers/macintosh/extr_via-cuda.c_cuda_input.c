
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_NONE ;
 int KERN_INFO ;

 int adb_input (unsigned char*,int,unsigned char) ;
 int print_hex_dump (int ,char*,int ,int,int,unsigned char*,int,int) ;

__attribute__((used)) static void
cuda_input(unsigned char *buf, int nb)
{
    switch (buf[0]) {
    case 129:
 break;

    case 128:



 break;

    default:
 print_hex_dump(KERN_INFO, "cuda_input: ", DUMP_PREFIX_NONE, 32, 1,
                buf, nb, 0);
    }
}
