
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbefifo {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef int __be32 ;


 int sbefifo_read_response (struct sbefifo*,struct iov_iter*) ;
 int sbefifo_send_command (struct sbefifo*,int const*,size_t) ;

__attribute__((used)) static int sbefifo_do_command(struct sbefifo *sbefifo,
         const __be32 *command, size_t cmd_len,
         struct iov_iter *response)
{

 int rc = sbefifo_send_command(sbefifo, command, cmd_len);
 if (rc)
  return rc;


 return sbefifo_read_response(sbefifo, response);
}
