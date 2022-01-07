; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon0_mode_set_lvds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon0_mode_set_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32 }

@SUN4I_TCON0_CTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_CTL_CLK_DELAY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Setting horizontal total %d, backporch %d\0A\00", align 1
@SUN4I_TCON0_BASIC1_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Setting vertical total %d, backporch %d\0A\00", align 1
@SUN4I_TCON0_BASIC2_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_LVDS_IF_CLK_SEL_TCON0 = common dso_local global i32 0, align 4
@SUN4I_TCON0_LVDS_IF_DATA_POL_NORMAL = common dso_local global i32 0, align 4
@SUN4I_TCON0_LVDS_IF_CLK_POL_NORMAL = common dso_local global i32 0, align 4
@SUN4I_TCON0_LVDS_IF_BITWIDTH_24BITS = common dso_local global i32 0, align 4
@SUN4I_TCON0_LVDS_IF_BITWIDTH_18BITS = common dso_local global i32 0, align 4
@SUN4I_TCON0_LVDS_IF_REG = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@SUN4I_TCON0_IO_POL_HSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@SUN4I_TCON0_IO_POL_VSYNC_POSITIVE = common dso_local global i32 0, align 4
@SUN4I_TCON0_IO_POL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON_GCTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON_GCTL_IOMAP_MASK = common dso_local global i32 0, align 4
@SUN4I_TCON_GCTL_IOMAP_TCON0 = common dso_local global i32 0, align 4
@SUN4I_TCON0_IO_TRI_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_tcon*, %struct.drm_encoder*, %struct.drm_display_mode*)* @sun4i_tcon0_mode_set_lvds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tcon0_mode_set_lvds(%struct.sun4i_tcon* %0, %struct.drm_encoder* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.sun4i_tcon*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %12 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %21 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %20, i32 0, i32 0
  store i32 7, i32* %21, align 8
  %22 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %23 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %22, i32 0, i32 1
  store i32 7, i32* %23, align 4
  %24 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %26 = call i32 @sun4i_tcon0_mode_set_common(%struct.sun4i_tcon* %24, %struct.drm_display_mode* %25)
  %27 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %29 = call i32 @sun4i_tcon_get_connector(%struct.drm_encoder* %28)
  %30 = call i32 @sun4i_tcon0_mode_set_dithering(%struct.sun4i_tcon* %27, i32 %29)
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = call i32 @sun4i_tcon_get_clk_delay(%struct.drm_display_mode* %31, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %34 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SUN4I_TCON0_CTL_REG, align 4
  %37 = load i32, i32* @SUN4I_TCON0_CTL_CLK_DELAY_MASK, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @SUN4I_TCON0_CTL_CLK_DELAY(i32 %38)
  %40 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %39)
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %43, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %54 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SUN4I_TCON0_BASIC1_REG, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SUN4I_TCON0_BASIC1_H_TOTAL(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @SUN4I_TCON0_BASIC1_H_BACKPORCH(i32 %61)
  %63 = or i32 %60, %62
  %64 = call i32 @regmap_write(i32 %55, i32 %56, i32 %63)
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %67, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %78 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SUN4I_TCON0_BASIC2_REG, align 4
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = mul i32 %83, 2
  %85 = call i32 @SUN4I_TCON0_BASIC2_V_TOTAL(i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @SUN4I_TCON0_BASIC2_V_BACKPORCH(i32 %86)
  %88 = or i32 %85, %87
  %89 = call i32 @regmap_write(i32 %79, i32 %80, i32 %88)
  %90 = load i32, i32* @SUN4I_TCON0_LVDS_IF_CLK_SEL_TCON0, align 4
  %91 = load i32, i32* @SUN4I_TCON0_LVDS_IF_DATA_POL_NORMAL, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @SUN4I_TCON0_LVDS_IF_CLK_POL_NORMAL, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %9, align 4
  %95 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %96 = call i32 @sun4i_tcon_get_pixel_depth(%struct.drm_encoder* %95)
  %97 = icmp eq i32 %96, 24
  br i1 %97, label %98, label %102

98:                                               ; preds = %3
  %99 = load i32, i32* @SUN4I_TCON0_LVDS_IF_BITWIDTH_24BITS, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %106

102:                                              ; preds = %3
  %103 = load i32, i32* @SUN4I_TCON0_LVDS_IF_BITWIDTH_18BITS, align 4
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %108 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SUN4I_TCON0_LVDS_IF_REG, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @regmap_write(i32 %109, i32 %110, i32 %111)
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %106
  %120 = load i32, i32* @SUN4I_TCON0_IO_POL_HSYNC_POSITIVE, align 4
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %119, %106
  %124 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %125 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* @SUN4I_TCON0_IO_POL_VSYNC_POSITIVE, align 4
  %132 = load i32, i32* %10, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %130, %123
  %135 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %136 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SUN4I_TCON0_IO_POL_REG, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @regmap_write(i32 %137, i32 %138, i32 %139)
  %141 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %142 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @SUN4I_TCON_GCTL_REG, align 4
  %145 = load i32, i32* @SUN4I_TCON_GCTL_IOMAP_MASK, align 4
  %146 = load i32, i32* @SUN4I_TCON_GCTL_IOMAP_TCON0, align 4
  %147 = call i32 @regmap_update_bits(i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %149 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @SUN4I_TCON0_IO_TRI_REG, align 4
  %152 = call i32 @regmap_write(i32 %150, i32 %151, i32 -536870912)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sun4i_tcon0_mode_set_common(%struct.sun4i_tcon*, %struct.drm_display_mode*) #1

declare dso_local i32 @sun4i_tcon0_mode_set_dithering(%struct.sun4i_tcon*, i32) #1

declare dso_local i32 @sun4i_tcon_get_connector(%struct.drm_encoder*) #1

declare dso_local i32 @sun4i_tcon_get_clk_delay(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_TCON0_CTL_CLK_DELAY(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC1_H_TOTAL(i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC1_H_BACKPORCH(i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC2_V_TOTAL(i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC2_V_BACKPORCH(i32) #1

declare dso_local i32 @sun4i_tcon_get_pixel_depth(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
