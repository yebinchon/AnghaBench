
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl {int dummy; } ;


 int ishtp_cl_flush_queues (struct ishtp_cl*) ;
 int ishtp_cl_free (struct ishtp_cl*) ;
 int ishtp_cl_unlink (struct ishtp_cl*) ;

__attribute__((used)) static void hid_ishtp_cl_deinit(struct ishtp_cl *hid_ishtp_cl)
{
 ishtp_cl_unlink(hid_ishtp_cl);
 ishtp_cl_flush_queues(hid_ishtp_cl);


 ishtp_cl_free(hid_ishtp_cl);
}
