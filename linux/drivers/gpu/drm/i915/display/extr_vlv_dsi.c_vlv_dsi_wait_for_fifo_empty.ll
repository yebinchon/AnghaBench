; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_vlv_dsi_wait_for_fifo_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_vlv_dsi.c_vlv_dsi_wait_for_fifo_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dsi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_encoder }
%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }

@LP_CTRL_FIFO_EMPTY = common dso_local global i32 0, align 4
@HS_CTRL_FIFO_EMPTY = common dso_local global i32 0, align 4
@LP_DATA_FIFO_EMPTY = common dso_local global i32 0, align 4
@HS_DATA_FIFO_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DPI FIFOs are not empty\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlv_dsi_wait_for_fifo_empty(%struct.intel_dsi* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_dsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_dsi* %0, %struct.intel_dsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.intel_dsi*, %struct.intel_dsi** %3, align 8
  %10 = getelementptr inbounds %struct.intel_dsi, %struct.intel_dsi* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.drm_encoder* %11, %struct.drm_encoder** %5, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %7, align 8
  %17 = load i32, i32* @LP_CTRL_FIFO_EMPTY, align 4
  %18 = load i32, i32* @HS_CTRL_FIFO_EMPTY, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @LP_DATA_FIFO_EMPTY, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HS_DATA_FIFO_EMPTY, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @MIPI_GEN_FIFO_STAT(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @intel_de_wait_for_set(%struct.drm_i915_private* %24, i32 %26, i32 %27, i32 100)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %2
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i64 @intel_de_wait_for_set(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @MIPI_GEN_FIFO_STAT(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
