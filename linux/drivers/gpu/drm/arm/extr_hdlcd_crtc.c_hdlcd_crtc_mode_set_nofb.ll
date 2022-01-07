; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_crtc.c_hdlcd_crtc_mode_set_nofb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_crtc.c_hdlcd_crtc_mode_set_nofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdlcd_drm_private = type { i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32 }

@HDLCD_POLARITY_DATAEN = common dso_local global i32 0, align 4
@HDLCD_POLARITY_DATA = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@HDLCD_POLARITY_HSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@HDLCD_POLARITY_VSYNC = common dso_local global i32 0, align 4
@HDLCD_REG_BUS_OPTIONS = common dso_local global i32 0, align 4
@HDLCD_BUS_MAX_OUTSTAND = common dso_local global i32 0, align 4
@HDLCD_BUS_BURST_16 = common dso_local global i32 0, align 4
@HDLCD_REG_V_DATA = common dso_local global i32 0, align 4
@HDLCD_REG_V_BACK_PORCH = common dso_local global i32 0, align 4
@HDLCD_REG_V_FRONT_PORCH = common dso_local global i32 0, align 4
@HDLCD_REG_V_SYNC = common dso_local global i32 0, align 4
@HDLCD_REG_H_DATA = common dso_local global i32 0, align 4
@HDLCD_REG_H_BACK_PORCH = common dso_local global i32 0, align 4
@HDLCD_REG_H_FRONT_PORCH = common dso_local global i32 0, align 4
@HDLCD_REG_H_SYNC = common dso_local global i32 0, align 4
@HDLCD_REG_POLARITIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @hdlcd_crtc_mode_set_nofb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlcd_crtc_mode_set_nofb(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.hdlcd_drm_private*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.videomode, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = call %struct.hdlcd_drm_private* @crtc_to_hdlcd_priv(%struct.drm_crtc* %8)
  store %struct.hdlcd_drm_private* %9, %struct.hdlcd_drm_private** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.drm_display_mode* %13, %struct.drm_display_mode** %4, align 8
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  %53 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  %61 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 5
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @HDLCD_POLARITY_DATAEN, align 4
  %63 = load i32, i32* @HDLCD_POLARITY_DATA, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %1
  %72 = load i32, i32* @HDLCD_POLARITY_HSYNC, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %71, %1
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* @HDLCD_POLARITY_VSYNC, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %88 = load i32, i32* @HDLCD_REG_BUS_OPTIONS, align 4
  %89 = load i32, i32* @HDLCD_BUS_MAX_OUTSTAND, align 4
  %90 = load i32, i32* @HDLCD_BUS_BURST_16, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %87, i32 %88, i32 %91)
  %93 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %94 = load i32, i32* @HDLCD_REG_V_DATA, align 4
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %93, i32 %94, i32 %98)
  %100 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %101 = load i32, i32* @HDLCD_REG_V_BACK_PORCH, align 4
  %102 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %100, i32 %101, i32 %104)
  %106 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %107 = load i32, i32* @HDLCD_REG_V_FRONT_PORCH, align 4
  %108 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %106, i32 %107, i32 %110)
  %112 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %113 = load i32, i32* @HDLCD_REG_V_SYNC, align 4
  %114 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %112, i32 %113, i32 %116)
  %118 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %119 = load i32, i32* @HDLCD_REG_H_DATA, align 4
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %118, i32 %119, i32 %123)
  %125 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %126 = load i32, i32* @HDLCD_REG_H_BACK_PORCH, align 4
  %127 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %125, i32 %126, i32 %129)
  %131 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %132 = load i32, i32* @HDLCD_REG_H_FRONT_PORCH, align 4
  %133 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 1
  %136 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %131, i32 %132, i32 %135)
  %137 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %138 = load i32, i32* @HDLCD_REG_H_SYNC, align 4
  %139 = getelementptr inbounds %struct.videomode, %struct.videomode* %5, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %140, 1
  %142 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %137, i32 %138, i32 %141)
  %143 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %144 = load i32, i32* @HDLCD_REG_POLARITIES, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @hdlcd_write(%struct.hdlcd_drm_private* %143, i32 %144, i32 %145)
  %147 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %148 = call i32 @hdlcd_set_pxl_fmt(%struct.drm_crtc* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %86
  br label %161

152:                                              ; preds = %86
  %153 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %3, align 8
  %154 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %157 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %158, 1000
  %160 = call i32 @clk_set_rate(i32 %155, i32 %159)
  br label %161

161:                                              ; preds = %152, %151
  ret void
}

declare dso_local %struct.hdlcd_drm_private* @crtc_to_hdlcd_priv(%struct.drm_crtc*) #1

declare dso_local i32 @hdlcd_write(%struct.hdlcd_drm_private*, i32, i32) #1

declare dso_local i32 @hdlcd_set_pxl_fmt(%struct.drm_crtc*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
