; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_dpi_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_dpi_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dsi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_encoder }
%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }

@DPI_LP_MODE = common dso_local global i32 0, align 4
@SPL_PKT_SENT_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Same special packet %02x twice in a row.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Video mode command 0x%08x send failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dsi*, i32, i32, i32)* @dpi_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_send_cmd(%struct.intel_dsi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_dsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_dsi* %0, %struct.intel_dsi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.intel_dsi*, %struct.intel_dsi** %5, align 8
  %14 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.drm_encoder* %15, %struct.drm_encoder** %9, align 8
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %17 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %10, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %20 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* @DPI_LP_MODE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %4
  %29 = load i32, i32* @DPI_LP_MODE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @MIPI_INTR_STAT(i32 %33)
  %35 = load i32, i32* @SPL_PKT_SENT_INTERRUPT, align 4
  %36 = call i32 @I915_WRITE(i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @MIPI_DPI_CONTROL(i32 %38)
  %40 = call i32 @I915_READ(i32 %39)
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %32
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @MIPI_DPI_CONTROL(i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  %50 = load i32, i32* @SPL_PKT_SENT_INTERRUPT, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @MIPI_INTR_STAT(i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %51, i32 %53, i32 %54, i32 100)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %45
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @MIPI_INTR_STAT(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @MIPI_DPI_CONTROL(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
