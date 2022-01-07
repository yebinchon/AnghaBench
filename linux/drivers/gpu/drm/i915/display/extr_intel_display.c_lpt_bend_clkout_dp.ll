; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_bend_clkout_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_bend_clkout_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@sscdivintphase = common dso_local global i32* null, align 8
@SBI_SSCDITHPHASE = common dso_local global i32 0, align 4
@SBI_ICLK = common dso_local global i32 0, align 4
@SBI_SSCDIVINTPHASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @lpt_bend_clkout_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpt_bend_clkout_dp(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @BEND_IDX(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = srem i32 %9, 5
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %61

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** @sscdivintphase, align 8
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = icmp sge i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %61

25:                                               ; preds = %16
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %4, align 4
  %30 = srem i32 %29, 10
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 -1431655765, i32* %5, align 4
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = load i32, i32* @SBI_SSCDITHPHASE, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SBI_ICLK, align 4
  %39 = call i32 @intel_sbi_write(%struct.drm_i915_private* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = load i32, i32* @SBI_SSCDIVINTPHASE, align 4
  %42 = load i32, i32* @SBI_ICLK, align 4
  %43 = call i32 @intel_sbi_read(%struct.drm_i915_private* %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, -65536
  store i32 %45, i32* %5, align 4
  %46 = load i32*, i32** @sscdivintphase, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %54 = load i32, i32* @SBI_SSCDIVINTPHASE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SBI_ICLK, align 4
  %57 = call i32 @intel_sbi_write(%struct.drm_i915_private* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %61

61:                                               ; preds = %34, %24, %15
  ret void
}

declare dso_local i32 @BEND_IDX(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_sbi_write(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @intel_sbi_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
