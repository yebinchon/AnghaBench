; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_setup_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_setup_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dsi = type { i32, %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32, i32 }
%struct.drm_display_mode = type { i32 }

@MIPI_DSI_PACKED_PIXEL_STREAM_24 = common dso_local global i32 0, align 4
@MIPI_DSI_PIXEL_STREAM_3BYTE_18 = common dso_local global i32 0, align 4
@MIPI_DSI_PACKED_PIXEL_STREAM_18 = common dso_local global i32 0, align 4
@MIPI_DSI_PACKED_PIXEL_STREAM_16 = common dso_local global i32 0, align 4
@SUN6I_DSI_PIXEL_PH_REG = common dso_local global i32 0, align 4
@SUN6I_DSI_PIXEL_PF0_REG = common dso_local global i32 0, align 4
@SUN6I_DSI_PIXEL_PF1_REG = common dso_local global i32 0, align 4
@SUN6I_DSI_PIXEL_CTL0_REG = common dso_local global i32 0, align 4
@SUN6I_DSI_PIXEL_CTL0_PD_PLUG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun6i_dsi*, %struct.drm_display_mode*)* @sun6i_dsi_setup_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dsi_setup_format(%struct.sun6i_dsi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.sun6i_dsi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sun6i_dsi* %0, %struct.sun6i_dsi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %10 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %11 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %10, i32 0, i32 1
  %12 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %11, align 8
  store %struct.mipi_dsi_device* %12, %struct.mipi_dsi_device** %5, align 8
  %13 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %14 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SUN6I_DSI_PIXEL_PH_VC(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %18 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %28 [
    i32 128, label %20
    i32 130, label %22
    i32 129, label %24
    i32 131, label %26
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_24, align 4
  store i32 %21, i32* %7, align 4
  store i32 8, i32* %8, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @MIPI_DSI_PIXEL_STREAM_3BYTE_18, align 4
  store i32 %23, i32* %7, align 4
  store i32 9, i32* %8, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_18, align 4
  store i32 %25, i32* %7, align 4
  store i32 10, i32* %8, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_16, align 4
  store i32 %27, i32* %7, align 4
  store i32 11, i32* %8, align 4
  br label %29

28:                                               ; preds = %2
  br label %81

29:                                               ; preds = %26, %24, %22, %20
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @SUN6I_DSI_PIXEL_PH_DT(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %38 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %39)
  %41 = mul nsw i32 %36, %40
  %42 = sdiv i32 %41, 8
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @SUN6I_DSI_PIXEL_PH_WC(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @sun6i_dsi_ecc_compute(i32 %47)
  %49 = call i32 @SUN6I_DSI_PIXEL_PH_ECC(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %53 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SUN6I_DSI_PIXEL_PH_REG, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @regmap_write(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %59 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SUN6I_DSI_PIXEL_PF0_REG, align 4
  %62 = call i32 @SUN6I_DSI_PIXEL_PF0_CRC_FORCE(i32 65535)
  %63 = call i32 @regmap_write(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %65 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SUN6I_DSI_PIXEL_PF1_REG, align 4
  %68 = call i32 @SUN6I_DSI_PIXEL_PF1_CRC_INIT_LINE0(i32 65535)
  %69 = call i32 @SUN6I_DSI_PIXEL_PF1_CRC_INIT_LINEN(i32 65535)
  %70 = or i32 %68, %69
  %71 = call i32 @regmap_write(i32 %66, i32 %67, i32 %70)
  %72 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %3, align 8
  %73 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SUN6I_DSI_PIXEL_CTL0_REG, align 4
  %76 = load i32, i32* @SUN6I_DSI_PIXEL_CTL0_PD_PLUG_DISABLE, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @SUN6I_DSI_PIXEL_CTL0_FORMAT(i32 %77)
  %79 = or i32 %76, %78
  %80 = call i32 @regmap_write(i32 %74, i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @SUN6I_DSI_PIXEL_PH_VC(i32) #1

declare dso_local i32 @SUN6I_DSI_PIXEL_PH_DT(i32) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @SUN6I_DSI_PIXEL_PH_WC(i32) #1

declare dso_local i32 @SUN6I_DSI_PIXEL_PH_ECC(i32) #1

declare dso_local i32 @sun6i_dsi_ecc_compute(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN6I_DSI_PIXEL_PF0_CRC_FORCE(i32) #1

declare dso_local i32 @SUN6I_DSI_PIXEL_PF1_CRC_INIT_LINE0(i32) #1

declare dso_local i32 @SUN6I_DSI_PIXEL_PF1_CRC_INIT_LINEN(i32) #1

declare dso_local i32 @SUN6I_DSI_PIXEL_CTL0_FORMAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
