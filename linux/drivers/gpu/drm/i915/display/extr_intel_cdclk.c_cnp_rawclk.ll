; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_cnp_rawclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_cnp_rawclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@SFUSE_STRAP = common dso_local global i32 0, align 4
@SFUSE_STRAP_RAW_FREQUENCY = common dso_local global i32 0, align 4
@PCH_ICP = common dso_local global i64 0, align 8
@PCH_RAWCLK_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @cnp_rawclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnp_rawclk(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %7 = load i32, i32* @SFUSE_STRAP, align 4
  %8 = call i32 @I915_READ(i32 %7)
  %9 = load i32, i32* @SFUSE_STRAP_RAW_FREQUENCY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 24000, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %14

13:                                               ; preds = %1
  store i32 19000, i32* %4, align 4
  store i32 200, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %15, 1000
  %17 = call i32 @CNP_RAWCLK_DIV(i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 1000
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @DIV_ROUND_CLOSEST(i32 %22, i32 %23)
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @CNP_RAWCLK_DEN(i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = call i64 @INTEL_PCH_TYPE(%struct.drm_i915_private* %29)
  %31 = load i64, i64* @PCH_ICP, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ICP_RAWCLK_NUM(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %20
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32, i32* @PCH_RAWCLK_FREQ, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @I915_WRITE(i32 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %43, %44
  ret i32 %45
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @CNP_RAWCLK_DIV(i32) #1

declare dso_local i32 @CNP_RAWCLK_DEN(i64) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i64 @INTEL_PCH_TYPE(%struct.drm_i915_private*) #1

declare dso_local i32 @ICP_RAWCLK_NUM(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
