; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_hsw_psr_setup_aux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_psr.c_hsw_psr_setup_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 (%struct.intel_dp*, i32)*, i32 (%struct.intel_dp*, i32, i32)* }
%struct.drm_i915_private = type { i32 }

@hsw_psr_setup_aux.aux_msg = internal constant [5 x i32] [i32 2080, i32 0, i32 129, i32 0, i32 128], align 16
@EDP_PSR_AUX_CTL_TIME_OUT_MASK = common dso_local global i32 0, align 4
@EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK = common dso_local global i32 0, align 4
@EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK = common dso_local global i32 0, align 4
@EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK = common dso_local global i32 0, align 4
@EDP_PSR_AUX_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @hsw_psr_setup_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_psr_setup_aux(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load i32, i32* @EDP_PSR_AUX_CTL_TIME_OUT_MASK, align 4
  %11 = load i32, i32* @EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = call i32 @BUILD_BUG_ON(i32 0)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %35, %1
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 2
  %25 = call i32 @EDP_PSR_AUX_DATA(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* @hsw_psr_setup_aux.aux_msg, i64 0, i64 %27
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 20, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @intel_dp_pack_aux(i32* %28, i32 %32)
  %34 = call i32 @I915_WRITE(i32 %25, i32 %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 4
  store i32 %37, i32* %6, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %40 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %39, i32 0, i32 0
  %41 = load i32 (%struct.intel_dp*, i32)*, i32 (%struct.intel_dp*, i32)** %40, align 8
  %42 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %43 = call i32 %41(%struct.intel_dp* %42, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %45 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %44, i32 0, i32 1
  %46 = load i32 (%struct.intel_dp*, i32, i32)*, i32 (%struct.intel_dp*, i32, i32)** %45, align 8
  %47 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 %46(%struct.intel_dp* %47, i32 20, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @EDP_PSR_AUX_CTL, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @I915_WRITE(i32 %53, i32 %54)
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @EDP_PSR_AUX_DATA(i32) #1

declare dso_local i32 @intel_dp_pack_aux(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
