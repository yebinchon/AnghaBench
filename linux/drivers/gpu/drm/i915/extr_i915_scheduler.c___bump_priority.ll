; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c___bump_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c___bump_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_sched_node = type { %struct.i915_sched_attr }
%struct.i915_sched_attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_sched_node*, i32)* @__bump_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bump_priority(%struct.i915_sched_node* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_sched_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_sched_attr, align 4
  store %struct.i915_sched_node* %0, %struct.i915_sched_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i915_sched_node*, %struct.i915_sched_node** %3, align 8
  %7 = getelementptr inbounds %struct.i915_sched_node, %struct.i915_sched_node* %6, i32 0, i32 0
  %8 = bitcast %struct.i915_sched_attr* %5 to i8*
  %9 = bitcast %struct.i915_sched_attr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 4, i1 false)
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.i915_sched_attr, %struct.i915_sched_attr* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  %14 = load %struct.i915_sched_node*, %struct.i915_sched_node** %3, align 8
  %15 = call i32 @__i915_schedule(%struct.i915_sched_node* %14, %struct.i915_sched_attr* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__i915_schedule(%struct.i915_sched_node*, %struct.i915_sched_attr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
