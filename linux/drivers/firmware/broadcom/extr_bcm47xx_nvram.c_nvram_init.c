
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct nvram_header {scalar_t__ magic; int len; } ;
struct mtd_info {int dummy; } ;
typedef int header ;


 int ENODEV ;
 int ENXIO ;
 scalar_t__ IS_ERR (struct mtd_info*) ;
 scalar_t__ NVRAM_MAGIC ;
 int NVRAM_SPACE ;
 struct mtd_info* get_mtd_device_nm (char*) ;
 int mtd_read (struct mtd_info*,int ,int,...) ;
 scalar_t__ nvram_buf ;
 int nvram_len ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static int nvram_init(void)
{
 return -ENXIO;
}
