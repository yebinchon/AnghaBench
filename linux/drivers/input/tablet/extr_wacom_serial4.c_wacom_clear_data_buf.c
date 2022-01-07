
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom {scalar_t__ idx; int data; } ;


 int DATA_SIZE ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void wacom_clear_data_buf(struct wacom *wacom)
{
 memset(wacom->data, 0, DATA_SIZE);
 wacom->idx = 0;
}
