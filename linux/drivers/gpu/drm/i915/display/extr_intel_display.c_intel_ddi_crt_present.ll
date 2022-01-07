; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_ddi_crt_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_ddi_crt_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SFUSE_STRAP = common dso_local global i32 0, align 4
@SFUSE_STRAP_CRT_DISABLED = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@DDI_A_4_LANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @intel_ddi_crt_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ddi_crt_present(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %5 = call i32 @INTEL_GEN(%struct.drm_i915_private* %4)
  %6 = icmp sge i32 %5, 9
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

8:                                                ; preds = %1
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = call i64 @IS_HSW_ULT(%struct.drm_i915_private* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call i64 @IS_BDW_ULT(%struct.drm_i915_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8
  store i32 0, i32* %2, align 4
  br label %44

17:                                               ; preds = %12
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = call i64 @HAS_PCH_LPT_H(%struct.drm_i915_private* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* @SFUSE_STRAP, align 4
  %23 = call i32 @I915_READ(i32 %22)
  %24 = load i32, i32* @SFUSE_STRAP_CRT_DISABLED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %44

28:                                               ; preds = %21, %17
  %29 = load i32, i32* @PORT_A, align 4
  %30 = call i32 @DDI_BUF_CTL(i32 %29)
  %31 = call i32 @I915_READ(i32 %30)
  %32 = load i32, i32* @DDI_A_4_LANES, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %44

36:                                               ; preds = %28
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %35, %27, %16, %7
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HSW_ULT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BDW_ULT(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_LPT_H(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DDI_BUF_CTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
