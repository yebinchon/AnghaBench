; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_crtc_mode_set_nofb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_crtc_mode_set_nofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxsfb_drm_private = type { i64, %struct.TYPE_12__*, i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CTRL1_FIFO_CLEAR = common dso_local global i32 0, align 4
@LCDC_CTRL1 = common dso_local global i64 0, align 8
@REG_SET = common dso_local global i64 0, align 8
@VDCTRL0_ENABLE_PRESENT = common dso_local global i32 0, align 4
@VDCTRL0_VSYNC_PERIOD_UNIT = common dso_local global i32 0, align 4
@VDCTRL0_VSYNC_PULSE_WIDTH_UNIT = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@VDCTRL0_HSYNC_ACT_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@VDCTRL0_VSYNC_ACT_HIGH = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_LOW = common dso_local global i32 0, align 4
@VDCTRL0_ENABLE_ACT_HIGH = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE = common dso_local global i32 0, align 4
@VDCTRL0_DOTCLK_ACT_FALLING = common dso_local global i32 0, align 4
@LCDC_VDCTRL0 = common dso_local global i64 0, align 8
@LCDC_VDCTRL1 = common dso_local global i64 0, align 8
@LCDC_VDCTRL2 = common dso_local global i64 0, align 8
@LCDC_VDCTRL3 = common dso_local global i64 0, align 8
@LCDC_VDCTRL4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxsfb_drm_private*)* @mxsfb_crtc_mode_set_nofb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxsfb_crtc_mode_set_nofb(%struct.mxsfb_drm_private* %0) #0 {
  %2 = alloca %struct.mxsfb_drm_private*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mxsfb_drm_private* %0, %struct.mxsfb_drm_private** %2, align 8
  %9 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %10 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %3, align 8
  %15 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %16 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %21 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @mxsfb_reset_block(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %197

27:                                               ; preds = %1
  %28 = load i32, i32* @CTRL1_FIFO_CLEAR, align 4
  %29 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %30 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LCDC_CTRL1, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @REG_SET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %28, i64 %35)
  %37 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %38 = call i32 @mxsfb_set_pixel_fmt(%struct.mxsfb_drm_private* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %197

42:                                               ; preds = %27
  %43 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %44 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 1000
  %50 = call i32 @clk_set_rate(i32 %45, i32 %49)
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @TRANSFER_COUNT_SET_VCOUNT(i32 %53)
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @TRANSFER_COUNT_SET_HCOUNT(i32 %57)
  %59 = or i32 %54, %58
  %60 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %61 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %64 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %62, %67
  %69 = call i32 @writel(i32 %59, i64 %68)
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @VDCTRL0_ENABLE_PRESENT, align 4
  %78 = load i32, i32* @VDCTRL0_VSYNC_PERIOD_UNIT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @VDCTRL0_VSYNC_PULSE_WIDTH_UNIT, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @VDCTRL0_SET_VSYNC_PULSE_WIDTH(i32 %82)
  %84 = or i32 %81, %83
  store i32 %84, i32* %5, align 4
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %42
  %92 = load i32, i32* @VDCTRL0_HSYNC_ACT_HIGH, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %91, %42
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %97 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @VDCTRL0_VSYNC_ACT_HIGH, align 4
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %95
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @DRM_BUS_FLAG_DE_LOW, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @VDCTRL0_ENABLE_ACT_HIGH, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @VDCTRL0_DOTCLK_ACT_FALLING, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %127 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @LCDC_VDCTRL0, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel(i32 %125, i64 %130)
  %132 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %133 = call i32 @mxsfb_set_bus_fmt(%struct.mxsfb_drm_private* %132)
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %138 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @LCDC_VDCTRL1, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writel(i32 %136, i64 %141)
  %143 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %144 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %147 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %145, %148
  store i32 %149, i32* %7, align 4
  %150 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @set_hsync_pulse_width(%struct.mxsfb_drm_private* %150, i32 %151)
  %153 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %154 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @VDCTRL2_SET_HSYNC_PERIOD(i32 %155)
  %157 = or i32 %152, %156
  %158 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %159 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @LCDC_VDCTRL2, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i32 %157, i64 %162)
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %166, %169
  %171 = call i32 @SET_HOR_WAIT_CNT(i32 %170)
  %172 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %173 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %176 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %174, %177
  %179 = call i32 @SET_VERT_WAIT_CNT(i32 %178)
  %180 = or i32 %171, %179
  %181 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %182 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @LCDC_VDCTRL3, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i32 %180, i64 %185)
  %187 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %188 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @SET_DOTCLK_H_VALID_DATA_CNT(i32 %189)
  %191 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %192 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @LCDC_VDCTRL4, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @writel(i32 %190, i64 %195)
  br label %197

197:                                              ; preds = %124, %41, %26
  ret void
}

declare dso_local i32 @mxsfb_reset_block(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mxsfb_set_pixel_fmt(%struct.mxsfb_drm_private*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @TRANSFER_COUNT_SET_VCOUNT(i32) #1

declare dso_local i32 @TRANSFER_COUNT_SET_HCOUNT(i32) #1

declare dso_local i32 @VDCTRL0_SET_VSYNC_PULSE_WIDTH(i32) #1

declare dso_local i32 @mxsfb_set_bus_fmt(%struct.mxsfb_drm_private*) #1

declare dso_local i32 @set_hsync_pulse_width(%struct.mxsfb_drm_private*, i32) #1

declare dso_local i32 @VDCTRL2_SET_HSYNC_PERIOD(i32) #1

declare dso_local i32 @SET_HOR_WAIT_CNT(i32) #1

declare dso_local i32 @SET_VERT_WAIT_CNT(i32) #1

declare dso_local i32 @SET_DOTCLK_H_VALID_DATA_CNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
