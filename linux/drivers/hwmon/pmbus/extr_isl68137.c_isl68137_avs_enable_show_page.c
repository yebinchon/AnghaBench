
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
typedef int ssize_t ;


 int ISL68137_VOUT_AVS ;
 int PMBUS_OPERATION ;
 int pmbus_read_byte_data (struct i2c_client*,int,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t isl68137_avs_enable_show_page(struct i2c_client *client,
          int page,
          char *buf)
{
 int val = pmbus_read_byte_data(client, page, PMBUS_OPERATION);

 return sprintf(buf, "%d\n",
         (val & ISL68137_VOUT_AVS) == ISL68137_VOUT_AVS ? 1 : 0);
}
