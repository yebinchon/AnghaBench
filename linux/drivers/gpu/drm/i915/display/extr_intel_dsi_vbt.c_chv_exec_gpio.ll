; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_vbt.c_chv_exec_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_vbt.c_chv_exec_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CHV_GPIO_IDX_START_SE = common dso_local global i64 0, align 8
@CHV_IOSF_PORT_GPIO_SE = common dso_local global i64 0, align 8
@CHV_GPIO_IDX_START_SW = common dso_local global i64 0, align 8
@CHV_IOSF_PORT_GPIO_SW = common dso_local global i64 0, align 8
@CHV_GPIO_IDX_START_E = common dso_local global i64 0, align 8
@CHV_IOSF_PORT_GPIO_E = common dso_local global i64 0, align 8
@CHV_IOSF_PORT_GPIO_N = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"unknown gpio source %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid gpio index %u for GPIO N\0A\00", align 1
@CHV_VBT_MAX_PINS_PER_FMLY = common dso_local global i64 0, align 8
@VLV_IOSF_SB_GPIO = common dso_local global i32 0, align 4
@CHV_GPIO_GPIOEN = common dso_local global i32 0, align 4
@CHV_GPIO_GPIOCFG_GPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i64, i64, i32)* @chv_exec_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_exec_gpio(%struct.drm_i915_private* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 3
  br i1 %18, label %19, label %51

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @CHV_GPIO_IDX_START_SE, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* @CHV_GPIO_IDX_START_SE, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub nsw i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @CHV_IOSF_PORT_GPIO_SE, align 8
  store i64 %27, i64* %12, align 8
  br label %50

28:                                               ; preds = %19
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @CHV_GPIO_IDX_START_SW, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* @CHV_GPIO_IDX_START_SW, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* @CHV_IOSF_PORT_GPIO_SW, align 8
  store i64 %36, i64* %12, align 8
  br label %49

37:                                               ; preds = %28
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @CHV_GPIO_IDX_START_E, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i64, i64* @CHV_GPIO_IDX_START_E, align 8
  %43 = load i64, i64* %7, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* @CHV_IOSF_PORT_GPIO_E, align 8
  store i64 %45, i64* %12, align 8
  br label %48

46:                                               ; preds = %37
  %47 = load i64, i64* @CHV_IOSF_PORT_GPIO_N, align 8
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %46, %41
  br label %49

49:                                               ; preds = %48, %32
  br label %50

50:                                               ; preds = %49, %23
  br label %66

51:                                               ; preds = %4
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %55)
  br label %101

57:                                               ; preds = %51
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @CHV_GPIO_IDX_START_E, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  br label %101

64:                                               ; preds = %57
  %65 = load i64, i64* @CHV_IOSF_PORT_GPIO_N, align 8
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %64, %50
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @CHV_VBT_MAX_PINS_PER_FMLY, align 8
  %69 = sdiv i64 %67, %68
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @CHV_VBT_MAX_PINS_PER_FMLY, align 8
  %72 = srem i64 %70, %71
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @CHV_GPIO_PAD_CFG0(i64 %73, i64 %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @CHV_GPIO_PAD_CFG1(i64 %76, i64 %77)
  store i64 %78, i64* %10, align 8
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %80 = load i32, i32* @VLV_IOSF_SB_GPIO, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = call i32 @vlv_iosf_sb_get(%struct.drm_i915_private* %79, i32 %81)
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @vlv_iosf_sb_write(%struct.drm_i915_private* %83, i64 %84, i64 %85, i32 0)
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* @CHV_GPIO_GPIOEN, align 4
  %91 = load i32, i32* @CHV_GPIO_GPIOCFG_GPO, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @CHV_GPIO_GPIOTXSTATE(i32 %93)
  %95 = or i32 %92, %94
  %96 = call i32 @vlv_iosf_sb_write(%struct.drm_i915_private* %87, i64 %88, i64 %89, i32 %95)
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %98 = load i32, i32* @VLV_IOSF_SB_GPIO, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = call i32 @vlv_iosf_sb_put(%struct.drm_i915_private* %97, i32 %99)
  br label %101

101:                                              ; preds = %66, %61, %54
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64) #1

declare dso_local i64 @CHV_GPIO_PAD_CFG0(i64, i64) #1

declare dso_local i64 @CHV_GPIO_PAD_CFG1(i64, i64) #1

declare dso_local i32 @vlv_iosf_sb_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vlv_iosf_sb_write(%struct.drm_i915_private*, i64, i64, i32) #1

declare dso_local i32 @CHV_GPIO_GPIOTXSTATE(i32) #1

declare dso_local i32 @vlv_iosf_sb_put(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
