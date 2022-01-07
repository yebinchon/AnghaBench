; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_vm_alias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_vm_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { i32 }
%struct.intel_context = type { %struct.i915_address_space* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i915_address_space }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_address_space* (%struct.intel_context*)* @vm_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_address_space* @vm_alias(%struct.intel_context* %0) #0 {
  %2 = alloca %struct.intel_context*, align 8
  %3 = alloca %struct.i915_address_space*, align 8
  store %struct.intel_context* %0, %struct.intel_context** %2, align 8
  %4 = load %struct.intel_context*, %struct.intel_context** %2, align 8
  %5 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %4, i32 0, i32 0
  %6 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  store %struct.i915_address_space* %6, %struct.i915_address_space** %3, align 8
  %7 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %8 = call i64 @i915_is_ggtt(%struct.i915_address_space* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %12 = call %struct.TYPE_4__* @i915_vm_to_ggtt(%struct.i915_address_space* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.i915_address_space* %15, %struct.i915_address_space** %3, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  ret %struct.i915_address_space* %17
}

declare dso_local i64 @i915_is_ggtt(%struct.i915_address_space*) #1

declare dso_local %struct.TYPE_4__* @i915_vm_to_ggtt(%struct.i915_address_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
