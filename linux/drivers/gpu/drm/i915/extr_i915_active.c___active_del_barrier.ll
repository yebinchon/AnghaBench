; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c___active_del_barrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_active.c___active_del_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_active = type { i32 }
%struct.active_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_active*, %struct.active_node*)* @__active_del_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__active_del_barrier(%struct.i915_active* %0, %struct.active_node* %1) #0 {
  %3 = alloca %struct.i915_active*, align 8
  %4 = alloca %struct.active_node*, align 8
  store %struct.i915_active* %0, %struct.i915_active** %3, align 8
  store %struct.active_node* %1, %struct.active_node** %4, align 8
  %5 = load %struct.i915_active*, %struct.i915_active** %3, align 8
  %6 = load %struct.active_node*, %struct.active_node** %4, align 8
  %7 = load %struct.active_node*, %struct.active_node** %4, align 8
  %8 = call i32 @barrier_to_engine(%struct.active_node* %7)
  %9 = call i32 @____active_del_barrier(%struct.i915_active* %5, %struct.active_node* %6, i32 %8)
  ret i32 %9
}

declare dso_local i32 @____active_del_barrier(%struct.i915_active*, %struct.active_node*, i32) #1

declare dso_local i32 @barrier_to_engine(%struct.active_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
