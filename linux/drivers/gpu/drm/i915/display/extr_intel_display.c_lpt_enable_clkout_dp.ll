; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_enable_clkout_dp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_enable_clkout_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"FDI requires downspread\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"LP PCH doesn't have FDI\0A\00", align 1
@SBI_SSCCTL = common dso_local global i32 0, align 4
@SBI_ICLK = common dso_local global i32 0, align 4
@SBI_SSCCTL_DISABLE = common dso_local global i32 0, align 4
@SBI_SSCCTL_PATHALT = common dso_local global i32 0, align 4
@SBI_GEN0 = common dso_local global i32 0, align 4
@SBI_DBUFF0 = common dso_local global i32 0, align 4
@SBI_GEN0_CFG_BUFFENABLE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32)* @lpt_enable_clkout_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpt_enable_clkout_dp(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ false, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = call i64 @HAS_PCH_LPT_LP(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i1 [ false, %21 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = load i32, i32* @SBI_SSCCTL, align 4
  %40 = load i32, i32* @SBI_ICLK, align 4
  %41 = call i32 @intel_sbi_read(%struct.drm_i915_private* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @SBI_SSCCTL_DISABLE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @SBI_SSCCTL_PATHALT, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %50 = load i32, i32* @SBI_SSCCTL, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SBI_ICLK, align 4
  %53 = call i32 @intel_sbi_write(%struct.drm_i915_private* %49, i32 %50, i32 %51, i32 %52)
  %54 = call i32 @udelay(i32 24)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %34
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %59 = load i32, i32* @SBI_SSCCTL, align 4
  %60 = load i32, i32* @SBI_ICLK, align 4
  %61 = call i32 @intel_sbi_read(%struct.drm_i915_private* %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @SBI_SSCCTL_PATHALT, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %67 = load i32, i32* @SBI_SSCCTL, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @SBI_ICLK, align 4
  %70 = call i32 @intel_sbi_write(%struct.drm_i915_private* %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %57
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %75 = call i32 @lpt_reset_fdi_mphy(%struct.drm_i915_private* %74)
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %77 = call i32 @lpt_program_fdi_mphy(%struct.drm_i915_private* %76)
  br label %78

78:                                               ; preds = %73, %57
  br label %79

79:                                               ; preds = %78, %34
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %81 = call i64 @HAS_PCH_LPT_LP(%struct.drm_i915_private* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @SBI_GEN0, align 4
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @SBI_DBUFF0, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %7, align 4
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @SBI_ICLK, align 4
  %92 = call i32 @intel_sbi_read(%struct.drm_i915_private* %89, i32 %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* @SBI_GEN0_CFG_BUFFENABLE_DISABLE, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @SBI_ICLK, align 4
  %100 = call i32 @intel_sbi_write(%struct.drm_i915_private* %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %102 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  ret void
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i64 @HAS_PCH_LPT_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_sbi_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_sbi_write(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @lpt_reset_fdi_mphy(%struct.drm_i915_private*) #1

declare dso_local i32 @lpt_program_fdi_mphy(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
