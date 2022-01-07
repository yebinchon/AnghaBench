
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_connector {int dummy; } ;


 int hdcp2_close_mei_session (struct intel_connector*) ;

__attribute__((used)) static int hdcp2_deauthenticate_port(struct intel_connector *connector)
{
 return hdcp2_close_mei_session(connector);
}
