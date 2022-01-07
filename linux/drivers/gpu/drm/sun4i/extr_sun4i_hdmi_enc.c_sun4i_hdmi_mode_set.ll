; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sun4i_hdmi = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SUN4I_HDMI_UNKNOWN_INPUT_SYNC = common dso_local global i32 0, align 4
@SUN4I_HDMI_UNKNOWN_REG = common dso_local global i64 0, align 8
@SUN4I_HDMI_PAD_CTRL1_REG = common dso_local global i64 0, align 8
@SUN4I_HDMI_PAD_CTRL1_HALVE_CLK = common dso_local global i32 0, align 4
@SUN4I_HDMI_VID_TIMING_ACT_REG = common dso_local global i64 0, align 8
@SUN4I_HDMI_VID_TIMING_BP_REG = common dso_local global i64 0, align 8
@SUN4I_HDMI_VID_TIMING_FP_REG = common dso_local global i64 0, align 8
@SUN4I_HDMI_VID_TIMING_SPW_REG = common dso_local global i64 0, align 8
@SUN4I_HDMI_VID_TIMING_POL_TX_CLK = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@SUN4I_HDMI_VID_TIMING_POL_HSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@SUN4I_HDMI_VID_TIMING_POL_VSYNC = common dso_local global i32 0, align 4
@SUN4I_HDMI_VID_TIMING_POL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @sun4i_hdmi_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_hdmi_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.sun4i_hdmi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = call %struct.sun4i_hdmi* @drm_encoder_to_sun4i_hdmi(%struct.drm_encoder* %11)
  store %struct.sun4i_hdmi* %12, %struct.sun4i_hdmi** %7, align 8
  %13 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %14 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 1000
  %20 = call i32 @clk_set_rate(i32 %15, i32 %19)
  %21 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %22 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 1000
  %28 = call i32 @clk_set_rate(i32 %23, i32 %27)
  %29 = load i32, i32* @SUN4I_HDMI_UNKNOWN_INPUT_SYNC, align 4
  %30 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %31 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SUN4I_HDMI_UNKNOWN_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %37 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SUN4I_HDMI_PAD_CTRL1_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @SUN4I_HDMI_PAD_CTRL1_HALVE_CLK, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %46 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %54 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SUN4I_HDMI_PAD_CTRL1_REG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %60 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SUN4I_HDMI_PAD_CTRL1_REG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readl(i64 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SUN4I_HDMI_VID_TIMING_X(i32 %67)
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SUN4I_HDMI_VID_TIMING_Y(i32 %71)
  %73 = or i32 %68, %72
  %74 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %75 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SUN4I_HDMI_VID_TIMING_ACT_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = sub i32 %82, %85
  store i32 %86, i32* %8, align 4
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = sub i32 %89, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @SUN4I_HDMI_VID_TIMING_X(i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @SUN4I_HDMI_VID_TIMING_Y(i32 %96)
  %98 = or i32 %95, %97
  %99 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %100 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @SUN4I_HDMI_VID_TIMING_BP_REG, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %106 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %109 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub i32 %107, %110
  store i32 %111, i32* %8, align 4
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %116 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sub i32 %114, %117
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @SUN4I_HDMI_VID_TIMING_X(i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @SUN4I_HDMI_VID_TIMING_Y(i32 %121)
  %123 = or i32 %120, %122
  %124 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %125 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @SUN4I_HDMI_VID_TIMING_FP_REG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 %123, i64 %128)
  %130 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %131 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = sub i32 %132, %135
  store i32 %136, i32* %8, align 4
  %137 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %138 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %141 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = sub i32 %139, %142
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @SUN4I_HDMI_VID_TIMING_X(i32 %144)
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @SUN4I_HDMI_VID_TIMING_Y(i32 %146)
  %148 = or i32 %145, %147
  %149 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %150 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SUN4I_HDMI_VID_TIMING_SPW_REG, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writel(i32 %148, i64 %153)
  %155 = load i32, i32* @SUN4I_HDMI_VID_TIMING_POL_TX_CLK, align 4
  store i32 %155, i32* %10, align 4
  %156 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %157 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %3
  %163 = load i32, i32* @SUN4I_HDMI_VID_TIMING_POL_HSYNC, align 4
  %164 = load i32, i32* %10, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %162, %3
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load i32, i32* @SUN4I_HDMI_VID_TIMING_POL_VSYNC, align 4
  %175 = load i32, i32* %10, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %173, %166
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %7, align 8
  %180 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SUN4I_HDMI_VID_TIMING_POL_REG, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %178, i64 %183)
  ret void
}

declare dso_local %struct.sun4i_hdmi* @drm_encoder_to_sun4i_hdmi(%struct.drm_encoder*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @SUN4I_HDMI_VID_TIMING_X(i32) #1

declare dso_local i32 @SUN4I_HDMI_VID_TIMING_Y(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
