; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon1_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon1_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SUN4I_TCON1_CTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON1_CTL_CLK_DELAY_MASK = common dso_local global i64 0, align 8
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@SUN4I_TCON1_CTL_INTERLACE_ENABLE = common dso_local global i64 0, align 8
@SUN4I_TCON1_BASIC0_REG = common dso_local global i32 0, align 4
@SUN4I_TCON1_BASIC1_REG = common dso_local global i32 0, align 4
@SUN4I_TCON1_BASIC2_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Setting horizontal total %d, backporch %d\0A\00", align 1
@SUN4I_TCON1_BASIC3_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Setting vertical total %d, backporch %d\0A\00", align 1
@SUN4I_TCON1_BASIC4_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Setting HSYNC %d, VSYNC %d\0A\00", align 1
@SUN4I_TCON1_BASIC5_REG = common dso_local global i32 0, align 4
@SUN4I_TCON_GCTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON_GCTL_IOMAP_MASK = common dso_local global i64 0, align 8
@SUN4I_TCON_GCTL_IOMAP_TCON1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_tcon*, %struct.drm_display_mode*)* @sun4i_tcon1_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tcon1_mode_set(%struct.sun4i_tcon* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.sun4i_tcon*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %11 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %12 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %21 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 1000
  %27 = call i32 @clk_set_rate(i32 %22, i32 %26)
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %29 = call i32 @sun4i_tcon_get_clk_delay(%struct.drm_display_mode* %28, i32 1)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %31 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SUN4I_TCON1_CTL_REG, align 4
  %34 = load i64, i64* @SUN4I_TCON1_CTL_CLK_DELAY_MASK, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @SUN4I_TCON1_CTL_CLK_DELAY(i32 %35)
  %37 = call i32 @regmap_update_bits(i32 %32, i32 %33, i64 %34, i64 %36)
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i64, i64* @SUN4I_TCON1_CTL_INTERLACE_ENABLE, align 8
  store i64 %45, i64* %10, align 8
  br label %47

46:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %47

47:                                               ; preds = %46, %44
  %48 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %49 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SUN4I_TCON1_CTL_REG, align 4
  %52 = load i64, i64* @SUN4I_TCON1_CTL_INTERLACE_ENABLE, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @regmap_update_bits(i32 %50, i32 %51, i64 %52, i64 %53)
  %55 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %56 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SUN4I_TCON1_BASIC0_REG, align 4
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SUN4I_TCON1_BASIC0_X(i32 %61)
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SUN4I_TCON1_BASIC0_Y(i32 %65)
  %67 = or i32 %62, %66
  %68 = call i32 @regmap_write(i32 %57, i32 %58, i32 %67)
  %69 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %70 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SUN4I_TCON1_BASIC1_REG, align 4
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SUN4I_TCON1_BASIC1_X(i32 %75)
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SUN4I_TCON1_BASIC1_Y(i32 %79)
  %81 = or i32 %76, %80
  %82 = call i32 @regmap_write(i32 %71, i32 %72, i32 %81)
  %83 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %84 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SUN4I_TCON1_BASIC2_REG, align 4
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SUN4I_TCON1_BASIC2_X(i32 %89)
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @SUN4I_TCON1_BASIC2_Y(i32 %93)
  %95 = or i32 %90, %94
  %96 = call i32 @regmap_write(i32 %85, i32 %86, i32 %95)
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %101 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sub i32 %99, %102
  store i32 %103, i32* %5, align 4
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %105 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %110 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SUN4I_TCON1_BASIC3_REG, align 4
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @SUN4I_TCON1_BASIC3_H_TOTAL(i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @SUN4I_TCON1_BASIC3_H_BACKPORCH(i32 %117)
  %119 = or i32 %116, %118
  %120 = call i32 @regmap_write(i32 %111, i32 %112, i32 %119)
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %125 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = sub i32 %123, %126
  store i32 %127, i32* %5, align 4
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %129 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %8, align 4
  %136 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %137 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %47
  %143 = load i32, i32* %8, align 4
  %144 = mul i32 %143, 2
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %47
  %146 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %147 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SUN4I_TCON1_BASIC4_REG, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @SUN4I_TCON1_BASIC4_V_TOTAL(i32 %150)
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @SUN4I_TCON1_BASIC4_V_BACKPORCH(i32 %152)
  %154 = or i32 %151, %153
  %155 = call i32 @regmap_write(i32 %148, i32 %149, i32 %154)
  %156 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %157 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %160 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = sub i32 %158, %161
  store i32 %162, i32* %6, align 4
  %163 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %164 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %167 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = sub i32 %165, %168
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %170, i32 %171)
  %173 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %174 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @SUN4I_TCON1_BASIC5_REG, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @SUN4I_TCON1_BASIC5_V_SYNC(i32 %177)
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @SUN4I_TCON1_BASIC5_H_SYNC(i32 %179)
  %181 = or i32 %178, %180
  %182 = call i32 @regmap_write(i32 %175, i32 %176, i32 %181)
  %183 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %184 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @SUN4I_TCON_GCTL_REG, align 4
  %187 = load i64, i64* @SUN4I_TCON_GCTL_IOMAP_MASK, align 8
  %188 = load i64, i64* @SUN4I_TCON_GCTL_IOMAP_TCON1, align 8
  %189 = call i32 @regmap_update_bits(i32 %185, i32 %186, i64 %187, i64 %188)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @sun4i_tcon_get_clk_delay(%struct.drm_display_mode*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i64) #1

declare dso_local i64 @SUN4I_TCON1_CTL_CLK_DELAY(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC0_X(i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC0_Y(i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC1_X(i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC1_Y(i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC2_X(i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC2_Y(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC3_H_TOTAL(i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC3_H_BACKPORCH(i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC4_V_TOTAL(i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC4_V_BACKPORCH(i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC5_V_SYNC(i32) #1

declare dso_local i32 @SUN4I_TCON1_BASIC5_H_SYNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
