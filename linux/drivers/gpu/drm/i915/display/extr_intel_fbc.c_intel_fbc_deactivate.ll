; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { i8*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i8*)* @intel_fbc_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_fbc_deactivate(%struct.drm_i915_private* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.intel_fbc*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  store %struct.intel_fbc* %7, %struct.intel_fbc** %5, align 8
  %8 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %9 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %8, i32 0, i32 2
  %10 = call i32 @mutex_is_locked(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %16 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i32 @intel_fbc_hw_deactivate(%struct.drm_i915_private* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.intel_fbc*, %struct.intel_fbc** %5, align 8
  %25 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @intel_fbc_hw_deactivate(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
