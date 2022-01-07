
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int pktsize; int model; struct cytp_data* private; scalar_t__ resync_time; int (* cleanup ) (struct psmouse*) ;int reconnect; int disconnect; int set_rate; int protocol_handler; int dev; } ;
struct cytp_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cypress_disconnect ;
 int cypress_protocol_handler ;
 scalar_t__ cypress_query_hardware (struct psmouse*) ;
 int cypress_reconnect ;
 int cypress_reset (struct psmouse*) ;
 scalar_t__ cypress_set_absolute_mode (struct psmouse*) ;
 scalar_t__ cypress_set_input_params (int ,struct cytp_data*) ;
 int cypress_set_rate ;
 int kfree (struct cytp_data*) ;
 struct cytp_data* kzalloc (int,int ) ;
 int psmouse_err (struct psmouse*,char*) ;

int cypress_init(struct psmouse *psmouse)
{
 struct cytp_data *cytp;

 cytp = kzalloc(sizeof(struct cytp_data), GFP_KERNEL);
 if (!cytp)
  return -ENOMEM;

 psmouse->private = cytp;
 psmouse->pktsize = 8;

 cypress_reset(psmouse);

 if (cypress_query_hardware(psmouse)) {
  psmouse_err(psmouse, "Unable to query Trackpad hardware.\n");
  goto err_exit;
 }

 if (cypress_set_absolute_mode(psmouse)) {
  psmouse_err(psmouse, "init: Unable to initialize Cypress absolute mode.\n");
  goto err_exit;
 }

 if (cypress_set_input_params(psmouse->dev, cytp) < 0) {
  psmouse_err(psmouse, "init: Unable to set input params.\n");
  goto err_exit;
 }

 psmouse->model = 1;
 psmouse->protocol_handler = cypress_protocol_handler;
 psmouse->set_rate = cypress_set_rate;
 psmouse->disconnect = cypress_disconnect;
 psmouse->reconnect = cypress_reconnect;
 psmouse->cleanup = cypress_reset;
 psmouse->resync_time = 0;

 return 0;

err_exit:




 cypress_reset(psmouse);

 psmouse->private = ((void*)0);
 kfree(cytp);

 return -1;
}
