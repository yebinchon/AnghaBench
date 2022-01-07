; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_setup_inst_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_setup_inst_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dsi = type { i32, %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@SUN6I_DSI_INST_LOOP_SEL_REG = common dso_local global i32 0, align 4
@DSI_INST_ID_LP11 = common dso_local global i32 0, align 4
@DSI_INST_ID_DLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun6i_dsi*, %struct.drm_display_mode*)* @sun6i_dsi_setup_inst_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dsi_setup_inst_loop(%struct.sun6i_dsi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.sun6i_dsi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sun6i_dsi* %0, %struct.sun6i_dsi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %8 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %9 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %8, i32 0, i32 1
  %10 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %9, align 8
  store %struct.mipi_dsi_device* %10, %struct.mipi_dsi_device** %5, align 8
  store i32 49, i32* %6, align 4
  %11 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %12 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = mul nsw i32 %24, 150
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 1000
  %31 = mul nsw i32 %30, 8
  %32 = sdiv i32 %26, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 50
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %17, %2
  %36 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %37 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SUN6I_DSI_INST_LOOP_SEL_REG, align 4
  %40 = load i32, i32* @DSI_INST_ID_LP11, align 4
  %41 = mul nsw i32 4, %40
  %42 = shl i32 2, %41
  %43 = load i32, i32* @DSI_INST_ID_DLY, align 4
  %44 = mul nsw i32 4, %43
  %45 = shl i32 3, %44
  %46 = or i32 %42, %45
  %47 = call i32 @regmap_write(i32 %38, i32 %39, i32 %46)
  %48 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %49 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @SUN6I_DSI_INST_LOOP_NUM_REG(i32 0)
  %52 = call i32 @SUN6I_DSI_INST_LOOP_NUM_N0(i32 49)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @SUN6I_DSI_INST_LOOP_NUM_N1(i32 %53)
  %55 = or i32 %52, %54
  %56 = call i32 @regmap_write(i32 %50, i32 %51, i32 %55)
  %57 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %58 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SUN6I_DSI_INST_LOOP_NUM_REG(i32 1)
  %61 = call i32 @SUN6I_DSI_INST_LOOP_NUM_N0(i32 49)
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @SUN6I_DSI_INST_LOOP_NUM_N1(i32 %62)
  %64 = or i32 %61, %63
  %65 = call i32 @regmap_write(i32 %59, i32 %60, i32 %64)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN6I_DSI_INST_LOOP_NUM_REG(i32) #1

declare dso_local i32 @SUN6I_DSI_INST_LOOP_NUM_N0(i32) #1

declare dso_local i32 @SUN6I_DSI_INST_LOOP_NUM_N1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
