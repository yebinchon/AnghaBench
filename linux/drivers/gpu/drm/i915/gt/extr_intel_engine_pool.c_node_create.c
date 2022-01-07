
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_pool_node {struct drm_i915_gem_object* obj; int active; struct intel_engine_pool* pool; } ;
struct intel_engine_pool {int dummy; } ;
struct intel_engine_cs {int i915; } ;
struct drm_i915_gem_object {int dummy; } ;


 int ENOMEM ;
 struct intel_engine_pool_node* ERR_CAST (struct drm_i915_gem_object*) ;
 struct intel_engine_pool_node* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct drm_i915_gem_object*) ;
 int __GFP_NOWARN ;
 int __GFP_RETRY_MAYFAIL ;
 int i915_active_fini (int *) ;
 int i915_active_init (int ,int *,int ,int ) ;
 struct drm_i915_gem_object* i915_gem_object_create_internal (int ,size_t) ;
 int kfree (struct intel_engine_pool_node*) ;
 struct intel_engine_pool_node* kmalloc (int,int) ;
 int pool_active ;
 int pool_retire ;
 struct intel_engine_cs* to_engine (struct intel_engine_pool*) ;

__attribute__((used)) static struct intel_engine_pool_node *
node_create(struct intel_engine_pool *pool, size_t sz)
{
 struct intel_engine_cs *engine = to_engine(pool);
 struct intel_engine_pool_node *node;
 struct drm_i915_gem_object *obj;

 node = kmalloc(sizeof(*node),
         GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
 if (!node)
  return ERR_PTR(-ENOMEM);

 node->pool = pool;
 i915_active_init(engine->i915, &node->active, pool_active, pool_retire);

 obj = i915_gem_object_create_internal(engine->i915, sz);
 if (IS_ERR(obj)) {
  i915_active_fini(&node->active);
  kfree(node);
  return ERR_CAST(obj);
 }

 node->obj = obj;
 return node;
}
