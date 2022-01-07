; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_map_ddc_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_map_ddc_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PCH_ICP = common dso_local global i64 0, align 8
@icp_ddc_pin_map = common dso_local global i32* null, align 8
@cnp_ddc_pin_map = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [85 x i8] c"Ignoring alternate pin: VBT claims DDC pin %d, which is not valid for this platform\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @map_ddc_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_ddc_pin(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = call i64 @INTEL_PCH_TYPE(%struct.drm_i915_private* %8)
  %10 = load i64, i64* @PCH_ICP, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** @icp_ddc_pin_map, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** @icp_ddc_pin_map, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  store i32 %15, i32* %7, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = call i64 @HAS_PCH_CNP(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** @cnp_ddc_pin_map, align 8
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** @cnp_ddc_pin_map, align 8
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  store i32 %23, i32* %7, align 4
  br label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %47

44:                                               ; preds = %31, %27
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %38, %24
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @INTEL_PCH_TYPE(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @HAS_PCH_CNP(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
