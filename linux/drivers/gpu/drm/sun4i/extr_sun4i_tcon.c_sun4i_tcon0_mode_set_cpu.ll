; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon0_mode_set_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon0_mode_set_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32, i8*, i8* }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.sun6i_dsi = type { %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32, i32 }

@SUN6I_DSI_TCON_DIV = common dso_local global i8* null, align 8
@SUN4I_TCON0_CTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_CTL_IF_MASK = common dso_local global i32 0, align 4
@SUN4I_TCON0_CTL_IF_8080 = common dso_local global i32 0, align 4
@SUN4I_TCON_ECC_FIFO_REG = common dso_local global i32 0, align 4
@SUN4I_TCON_ECC_FIFO_EN = common dso_local global i32 0, align 4
@SUN4I_TCON0_CPU_IF_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_CPU_IF_MODE_DSI = common dso_local global i32 0, align 4
@SUN4I_TCON0_CPU_IF_TRI_FIFO_FLUSH = common dso_local global i32 0, align 4
@SUN4I_TCON0_CPU_IF_TRI_FIFO_EN = common dso_local global i32 0, align 4
@SUN4I_TCON0_CPU_IF_TRI_EN = common dso_local global i32 0, align 4
@SUN4I_TCON0_DCLK_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_CPU_TRI0_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_CPU_TRI1_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_CPU_TRI2_REG = common dso_local global i32 0, align 4
@SUN4I_TCON_SAFE_PERIOD_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_IO_TRI_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_tcon*, %struct.drm_encoder*, %struct.drm_display_mode*)* @sun4i_tcon0_mode_set_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tcon0_mode_set_cpu(%struct.sun4i_tcon* %0, %struct.drm_encoder* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.sun4i_tcon*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.sun6i_dsi*, align 8
  %8 = alloca %struct.mipi_dsi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %15 = call %struct.sun6i_dsi* @encoder_to_sun6i_dsi(%struct.drm_encoder* %14)
  store %struct.sun6i_dsi* %15, %struct.sun6i_dsi** %7, align 8
  %16 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %7, align 8
  %17 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %16, i32 0, i32 0
  %18 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %17, align 8
  store %struct.mipi_dsi_device* %18, %struct.mipi_dsi_device** %8, align 8
  %19 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %20 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %8, align 8
  %24 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** @SUN6I_DSI_TCON_DIV, align 8
  %27 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %28 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @SUN6I_DSI_TCON_DIV, align 8
  %30 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %31 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %34 = call i32 @sun4i_tcon0_mode_set_common(%struct.sun4i_tcon* %32, %struct.drm_display_mode* %33)
  %35 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %37 = call i32 @sun4i_tcon_get_connector(%struct.drm_encoder* %36)
  %38 = call i32 @sun4i_tcon0_mode_set_dithering(%struct.sun4i_tcon* %35, i32 %37)
  %39 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %40 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SUN4I_TCON0_CTL_REG, align 4
  %43 = load i32, i32* @SUN4I_TCON0_CTL_IF_MASK, align 4
  %44 = load i32, i32* @SUN4I_TCON0_CTL_IF_8080, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %47 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SUN4I_TCON_ECC_FIFO_REG, align 4
  %50 = load i32, i32* @SUN4I_TCON_ECC_FIFO_EN, align 4
  %51 = call i32 @regmap_write(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %53 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SUN4I_TCON0_CPU_IF_REG, align 4
  %56 = load i32, i32* @SUN4I_TCON0_CPU_IF_MODE_DSI, align 4
  %57 = load i32, i32* @SUN4I_TCON0_CPU_IF_TRI_FIFO_FLUSH, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SUN4I_TCON0_CPU_IF_TRI_FIFO_EN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SUN4I_TCON0_CPU_IF_TRI_EN, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @regmap_write(i32 %54, i32 %55, i32 %62)
  %64 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %65 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SUN4I_TCON0_DCLK_REG, align 4
  %68 = call i32 @regmap_read(i32 %66, i32 %67, i32* %13)
  %69 = call i32 @GENMASK(i32 6, i32 0)
  %70 = load i32, i32* %13, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %13, align 4
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sdiv i32 %76, %79
  store i32 %80, i32* %11, align 4
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 40
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %11, align 4
  %89 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %90 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @SUN4I_TCON0_CPU_TRI0_REG, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @SUN4I_TCON0_CPU_TRI0_BLOCK_SPACE(i32 %93)
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @SUN4I_TCON0_CPU_TRI0_BLOCK_SIZE(i64 %97)
  %99 = or i32 %94, %98
  %100 = call i32 @regmap_write(i32 %91, i32 %92, i32 %99)
  %101 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %102 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SUN4I_TCON0_CPU_TRI1_REG, align 4
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %106 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @SUN4I_TCON0_CPU_TRI1_BLOCK_NUM(i32 %107)
  %109 = call i32 @regmap_write(i32 %103, i32 %104, i32 %108)
  %110 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %111 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %112, %115
  %117 = sub nsw i32 %116, 10
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %119, %122
  %124 = mul nsw i32 %123, 149
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = sdiv i32 %128, 1000
  %130 = sdiv i32 %125, %129
  %131 = sdiv i32 %130, 8
  store i32 %131, i32* %12, align 4
  %132 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %133 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @SUN4I_TCON0_CPU_TRI2_REG, align 4
  %136 = call i32 @SUN4I_TCON0_CPU_TRI2_TRANS_START_SET(i32 10)
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @SUN4I_TCON0_CPU_TRI2_START_DELAY(i32 %137)
  %139 = or i32 %136, %138
  %140 = call i32 @regmap_write(i32 %134, i32 %135, i32 %139)
  %141 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %142 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @SUN4I_TCON_SAFE_PERIOD_REG, align 4
  %145 = call i32 @SUN4I_TCON_SAFE_PERIOD_NUM(i32 3000)
  %146 = call i32 @SUN4I_TCON_SAFE_PERIOD_MODE(i32 3)
  %147 = or i32 %145, %146
  %148 = call i32 @regmap_write(i32 %143, i32 %144, i32 %147)
  %149 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %150 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SUN4I_TCON0_IO_TRI_REG, align 4
  %153 = call i32 @regmap_write(i32 %151, i32 %152, i32 -536870912)
  ret void
}

declare dso_local %struct.sun6i_dsi* @encoder_to_sun6i_dsi(%struct.drm_encoder*) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @sun4i_tcon0_mode_set_common(%struct.sun4i_tcon*, %struct.drm_display_mode*) #1

declare dso_local i32 @sun4i_tcon0_mode_set_dithering(%struct.sun4i_tcon*, i32) #1

declare dso_local i32 @sun4i_tcon_get_connector(%struct.drm_encoder*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @SUN4I_TCON0_CPU_TRI0_BLOCK_SPACE(i32) #1

declare dso_local i32 @SUN4I_TCON0_CPU_TRI0_BLOCK_SIZE(i64) #1

declare dso_local i32 @SUN4I_TCON0_CPU_TRI1_BLOCK_NUM(i32) #1

declare dso_local i32 @SUN4I_TCON0_CPU_TRI2_TRANS_START_SET(i32) #1

declare dso_local i32 @SUN4I_TCON0_CPU_TRI2_START_DELAY(i32) #1

declare dso_local i32 @SUN4I_TCON_SAFE_PERIOD_NUM(i32) #1

declare dso_local i32 @SUN4I_TCON_SAFE_PERIOD_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
