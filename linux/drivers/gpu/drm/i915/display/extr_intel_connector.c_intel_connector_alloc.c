
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_connector {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ intel_connector_init (struct intel_connector*) ;
 int kfree (struct intel_connector*) ;
 struct intel_connector* kzalloc (int,int ) ;

struct intel_connector *intel_connector_alloc(void)
{
 struct intel_connector *connector;

 connector = kzalloc(sizeof(*connector), GFP_KERNEL);
 if (!connector)
  return ((void*)0);

 if (intel_connector_init(connector) < 0) {
  kfree(connector);
  return ((void*)0);
 }

 return connector;
}
