; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_disable_clkout_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_disable_clkout_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SBI_GEN0 = common dso_local global i32 0, align 4
@SBI_DBUFF0 = common dso_local global i32 0, align 4
@SBI_ICLK = common dso_local global i32 0, align 4
@SBI_GEN0_CFG_BUFFENABLE_DISABLE = common dso_local global i32 0, align 4
@SBI_SSCCTL = common dso_local global i32 0, align 4
@SBI_SSCCTL_DISABLE = common dso_local global i32 0, align 4
@SBI_SSCCTL_PATHALT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpt_disable_clkout_dp(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = call i64 @HAS_PCH_LPT_LP(%struct.drm_i915_private* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @SBI_GEN0, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @SBI_DBUFF0, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %3, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SBI_ICLK, align 4
  %20 = call i32 @intel_sbi_read(%struct.drm_i915_private* %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @SBI_GEN0_CFG_BUFFENABLE_DISABLE, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SBI_ICLK, align 4
  %29 = call i32 @intel_sbi_write(%struct.drm_i915_private* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = load i32, i32* @SBI_SSCCTL, align 4
  %32 = load i32, i32* @SBI_ICLK, align 4
  %33 = call i32 @intel_sbi_read(%struct.drm_i915_private* %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SBI_SSCCTL_DISABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %15
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SBI_SSCCTL_PATHALT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @SBI_SSCCTL_PATHALT, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = load i32, i32* @SBI_SSCCTL, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SBI_ICLK, align 4
  %51 = call i32 @intel_sbi_write(%struct.drm_i915_private* %47, i32 %48, i32 %49, i32 %50)
  %52 = call i32 @udelay(i32 32)
  br label %53

53:                                               ; preds = %43, %38
  %54 = load i32, i32* @SBI_SSCCTL_DISABLE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %58 = load i32, i32* @SBI_SSCCTL, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @SBI_ICLK, align 4
  %61 = call i32 @intel_sbi_write(%struct.drm_i915_private* %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %15
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %64 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @HAS_PCH_LPT_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_sbi_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_sbi_write(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
