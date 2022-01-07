; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_vbt.c_vlv_exec_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi_vbt.c_vlv_exec_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_map = type { i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@vlv_gpio_table = common dso_local global %struct.gpio_map* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"unknown gpio index %u\0A\00", align 1
@IOSF_PORT_GPIO_NC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"SC gpio not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unknown gpio source %u\0A\00", align 1
@VLV_IOSF_SB_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i64, i64, i32)* @vlv_exec_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_exec_gpio(%struct.drm_i915_private* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpio_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.gpio_map*, %struct.gpio_map** @vlv_gpio_table, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.gpio_map* %15)
  %17 = icmp uge i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %83

21:                                               ; preds = %4
  %22 = load %struct.gpio_map*, %struct.gpio_map** @vlv_gpio_table, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.gpio_map, %struct.gpio_map* %22, i64 %23
  store %struct.gpio_map* %24, %struct.gpio_map** %9, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 3
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i64, i64* @IOSF_PORT_GPIO_NC, align 8
  store i64 %32, i64* %13, align 8
  br label %47

33:                                               ; preds = %21
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, i64* @IOSF_PORT_GPIO_NC, align 8
  store i64 %37, i64* %13, align 8
  br label %46

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %83

43:                                               ; preds = %38
  %44 = load i64, i64* %6, align 8
  %45 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  br label %83

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.gpio_map*, %struct.gpio_map** %9, align 8
  %49 = getelementptr inbounds %struct.gpio_map, %struct.gpio_map* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @VLV_GPIO_PCONF0(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.gpio_map*, %struct.gpio_map** %9, align 8
  %53 = getelementptr inbounds %struct.gpio_map, %struct.gpio_map* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @VLV_GPIO_PAD_VAL(i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %57 = load i32, i32* @VLV_IOSF_SB_GPIO, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = call i32 @vlv_iosf_sb_get(%struct.drm_i915_private* %56, i32 %58)
  %60 = load %struct.gpio_map*, %struct.gpio_map** %9, align 8
  %61 = getelementptr inbounds %struct.gpio_map, %struct.gpio_map* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %47
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @vlv_iosf_sb_write(%struct.drm_i915_private* %65, i64 %66, i32 %67, i32 536923136)
  %69 = load %struct.gpio_map*, %struct.gpio_map** %9, align 8
  %70 = getelementptr inbounds %struct.gpio_map, %struct.gpio_map* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %47
  %72 = load i32, i32* %8, align 4
  %73 = or i32 4, %72
  store i32 %73, i32* %12, align 4
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @vlv_iosf_sb_write(%struct.drm_i915_private* %74, i64 %75, i32 %76, i32 %77)
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %80 = load i32, i32* @VLV_IOSF_SB_GPIO, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = call i32 @vlv_iosf_sb_put(%struct.drm_i915_private* %79, i32 %81)
  br label %83

83:                                               ; preds = %71, %43, %41, %18
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.gpio_map*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @VLV_GPIO_PCONF0(i32) #1

declare dso_local i32 @VLV_GPIO_PAD_VAL(i32) #1

declare dso_local i32 @vlv_iosf_sb_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vlv_iosf_sb_write(%struct.drm_i915_private*, i64, i32, i32) #1

declare dso_local i32 @vlv_iosf_sb_put(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
