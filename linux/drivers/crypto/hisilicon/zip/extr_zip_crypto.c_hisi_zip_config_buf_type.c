
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hisi_zip_sqe {int dw9; } ;


 int FIELD_PREP (int,int ) ;
 int HZIP_BUF_TYPE_M ;

__attribute__((used)) static void hisi_zip_config_buf_type(struct hisi_zip_sqe *sqe, u8 buf_type)
{
 u32 val;

 val = (sqe->dw9) & ~HZIP_BUF_TYPE_M;
 val |= FIELD_PREP(HZIP_BUF_TYPE_M, buf_type);
 sqe->dw9 = val;
}
