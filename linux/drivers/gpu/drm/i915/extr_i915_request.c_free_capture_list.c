
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {struct i915_capture_list* capture_list; } ;
struct i915_capture_list {struct i915_capture_list* next; } ;


 int kfree (struct i915_capture_list*) ;

__attribute__((used)) static void free_capture_list(struct i915_request *request)
{
 struct i915_capture_list *capture;

 capture = request->capture_list;
 while (capture) {
  struct i915_capture_list *next = capture->next;

  kfree(capture);
  capture = next;
 }
}
