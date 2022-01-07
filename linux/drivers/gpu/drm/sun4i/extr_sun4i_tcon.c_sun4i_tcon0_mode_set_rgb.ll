; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon0_mode_set_rgb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon0_mode_set_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32 }

@SUN4I_TCON0_CTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_CTL_CLK_DELAY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Setting horizontal total %d, backporch %d\0A\00", align 1
@SUN4I_TCON0_BASIC1_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Setting vertical total %d, backporch %d\0A\00", align 1
@SUN4I_TCON0_BASIC2_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Setting HSYNC %d, VSYNC %d\0A\00", align 1
@SUN4I_TCON0_BASIC3_REG = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@SUN4I_TCON0_IO_POL_HSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@SUN4I_TCON0_IO_POL_VSYNC_POSITIVE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_LOW = common dso_local global i32 0, align 4
@SUN4I_TCON0_IO_POL_DE_NEGATIVE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE = common dso_local global i32 0, align 4
@SUN4I_TCON0_IO_POL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON_GCTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON_GCTL_IOMAP_MASK = common dso_local global i32 0, align 4
@SUN4I_TCON_GCTL_IOMAP_TCON0 = common dso_local global i32 0, align 4
@SUN4I_TCON0_IO_TRI_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_tcon*, %struct.drm_encoder*, %struct.drm_display_mode*)* @sun4i_tcon0_mode_set_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tcon0_mode_set_rgb(%struct.sun4i_tcon* %0, %struct.drm_encoder* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.sun4i_tcon*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_connector*, align 8
  %8 = alloca %struct.drm_display_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %15 = call %struct.drm_connector* @sun4i_tcon_get_connector(%struct.drm_encoder* %14)
  store %struct.drm_connector* %15, %struct.drm_connector** %7, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 0
  store %struct.drm_display_info* %17, %struct.drm_display_info** %8, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %19 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %28 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %27, i32 0, i32 0
  store i32 6, i32* %28, align 8
  %29 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %30 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %29, i32 0, i32 1
  store i32 127, i32* %30, align 4
  %31 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %33 = call i32 @sun4i_tcon0_mode_set_common(%struct.sun4i_tcon* %31, %struct.drm_display_mode* %32)
  %34 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %35 = load %struct.drm_connector*, %struct.drm_connector** %7, align 8
  %36 = call i32 @sun4i_tcon0_mode_set_dithering(%struct.sun4i_tcon* %34, %struct.drm_connector* %35)
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %38 = call i32 @sun4i_tcon_get_clk_delay(%struct.drm_display_mode* %37, i32 0)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %40 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SUN4I_TCON0_CTL_REG, align 4
  %43 = load i32, i32* @SUN4I_TCON0_CTL_CLK_DELAY_MASK, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @SUN4I_TCON0_CTL_CLK_DELAY(i32 %44)
  %46 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %45)
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %49, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %60 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SUN4I_TCON0_BASIC1_REG, align 4
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SUN4I_TCON0_BASIC1_H_TOTAL(i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @SUN4I_TCON0_BASIC1_H_BACKPORCH(i32 %67)
  %69 = or i32 %66, %68
  %70 = call i32 @regmap_write(i32 %61, i32 %62, i32 %69)
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sub i32 %73, %76
  store i32 %77, i32* %9, align 4
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %84 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SUN4I_TCON0_BASIC2_REG, align 4
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = mul i32 %89, 2
  %91 = call i32 @SUN4I_TCON0_BASIC2_V_TOTAL(i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @SUN4I_TCON0_BASIC2_V_BACKPORCH(i32 %92)
  %94 = or i32 %91, %93
  %95 = call i32 @regmap_write(i32 %85, i32 %86, i32 %94)
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %97 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub i32 %98, %101
  store i32 %102, i32* %10, align 4
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %104 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = sub i32 %105, %108
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %114 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SUN4I_TCON0_BASIC3_REG, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @SUN4I_TCON0_BASIC3_V_SYNC(i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @SUN4I_TCON0_BASIC3_H_SYNC(i32 %119)
  %121 = or i32 %118, %120
  %122 = call i32 @regmap_write(i32 %115, i32 %116, i32 %121)
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %3
  %130 = load i32, i32* @SUN4I_TCON0_IO_POL_HSYNC_POSITIVE, align 4
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %129, %3
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* @SUN4I_TCON0_IO_POL_VSYNC_POSITIVE, align 4
  %142 = load i32, i32* %13, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %140, %133
  %145 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %146 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @DRM_BUS_FLAG_DE_LOW, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* @SUN4I_TCON0_IO_POL_DE_NEGATIVE, align 4
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %13, align 4
  br label %155

155:                                              ; preds = %151, %144
  %156 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %157 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %164 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @clk_set_phase(i32 %165, i32 240)
  br label %167

167:                                              ; preds = %162, %155
  %168 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %169 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %167
  %175 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %176 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @clk_set_phase(i32 %177, i32 0)
  br label %179

179:                                              ; preds = %174, %167
  %180 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %181 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @SUN4I_TCON0_IO_POL_REG, align 4
  %184 = load i32, i32* @SUN4I_TCON0_IO_POL_HSYNC_POSITIVE, align 4
  %185 = load i32, i32* @SUN4I_TCON0_IO_POL_VSYNC_POSITIVE, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @SUN4I_TCON0_IO_POL_DE_NEGATIVE, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @regmap_update_bits(i32 %182, i32 %183, i32 %188, i32 %189)
  %191 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %192 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @SUN4I_TCON_GCTL_REG, align 4
  %195 = load i32, i32* @SUN4I_TCON_GCTL_IOMAP_MASK, align 4
  %196 = load i32, i32* @SUN4I_TCON_GCTL_IOMAP_TCON0, align 4
  %197 = call i32 @regmap_update_bits(i32 %193, i32 %194, i32 %195, i32 %196)
  %198 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %199 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @SUN4I_TCON0_IO_TRI_REG, align 4
  %202 = call i32 @regmap_write(i32 %200, i32 %201, i32 0)
  ret void
}

declare dso_local %struct.drm_connector* @sun4i_tcon_get_connector(%struct.drm_encoder*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sun4i_tcon0_mode_set_common(%struct.sun4i_tcon*, %struct.drm_display_mode*) #1

declare dso_local i32 @sun4i_tcon0_mode_set_dithering(%struct.sun4i_tcon*, %struct.drm_connector*) #1

declare dso_local i32 @sun4i_tcon_get_clk_delay(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_TCON0_CTL_CLK_DELAY(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC1_H_TOTAL(i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC1_H_BACKPORCH(i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC2_V_TOTAL(i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC2_V_BACKPORCH(i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC3_V_SYNC(i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC3_H_SYNC(i32) #1

declare dso_local i32 @clk_set_phase(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
