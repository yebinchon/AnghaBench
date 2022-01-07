; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_intel_timeline_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline = type { i32 }
%struct.intel_gt = type { i32 }
%struct.i915_vma = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_timeline* @intel_timeline_create(%struct.intel_gt* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca %struct.intel_timeline*, align 8
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca %struct.intel_timeline*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.intel_timeline* @kzalloc(i32 4, i32 %8)
  store %struct.intel_timeline* %9, %struct.intel_timeline** %6, align 8
  %10 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %11 = icmp ne %struct.intel_timeline* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.intel_timeline* @ERR_PTR(i32 %14)
  store %struct.intel_timeline* %15, %struct.intel_timeline** %3, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %18 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %19 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %20 = call i32 @intel_timeline_init(%struct.intel_timeline* %17, %struct.intel_gt* %18, %struct.i915_vma* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %25 = call i32 @kfree(%struct.intel_timeline* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.intel_timeline* @ERR_PTR(i32 %26)
  store %struct.intel_timeline* %27, %struct.intel_timeline** %3, align 8
  br label %30

28:                                               ; preds = %16
  %29 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  store %struct.intel_timeline* %29, %struct.intel_timeline** %3, align 8
  br label %30

30:                                               ; preds = %28, %23, %12
  %31 = load %struct.intel_timeline*, %struct.intel_timeline** %3, align 8
  ret %struct.intel_timeline* %31
}

declare dso_local %struct.intel_timeline* @kzalloc(i32, i32) #1

declare dso_local %struct.intel_timeline* @ERR_PTR(i32) #1

declare dso_local i32 @intel_timeline_init(%struct.intel_timeline*, %struct.intel_gt*, %struct.i915_vma*) #1

declare dso_local i32 @kfree(%struct.intel_timeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
