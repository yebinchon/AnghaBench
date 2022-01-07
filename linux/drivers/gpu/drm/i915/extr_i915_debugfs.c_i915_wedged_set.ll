; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_wedged_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_wedged_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@I915_RESET_BACKOFF = common dso_local global i32 0, align 4
@I915_ERROR_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Manually set wedged engine mask = %llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @i915_wedged_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_wedged_set(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %5, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I915_RESET_BACKOFF, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %13, i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @wait_event(i32 %12, i32 %21)
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @I915_ERROR_CAPTURE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @intel_gt_handle_error(%struct.TYPE_4__* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27)
  ret i32 0
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @intel_gt_handle_error(%struct.TYPE_4__*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
