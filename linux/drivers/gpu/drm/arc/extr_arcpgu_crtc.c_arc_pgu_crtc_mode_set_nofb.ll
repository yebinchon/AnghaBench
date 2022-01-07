; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_crtc.c_arc_pgu_crtc_mode_set_nofb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_crtc.c_arc_pgu_crtc_mode_set_nofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.arcpgu_drm_private = type { i32 }

@ARCPGU_REG_FMT = common dso_local global i32 0, align 4
@ARCPGU_REG_HSYNC = common dso_local global i32 0, align 4
@ARCPGU_REG_VSYNC = common dso_local global i32 0, align 4
@ARCPGU_REG_ACTIVE = common dso_local global i32 0, align 4
@ARCPGU_REG_CTRL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@ARCPGU_CTRL_VS_POL_MASK = common dso_local global i32 0, align 4
@ARCPGU_CTRL_VS_POL_OFST = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@ARCPGU_CTRL_HS_POL_MASK = common dso_local global i32 0, align 4
@ARCPGU_CTRL_HS_POL_OFST = common dso_local global i32 0, align 4
@ARCPGU_REG_STRIDE = common dso_local global i32 0, align 4
@ARCPGU_REG_START_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @arc_pgu_crtc_mode_set_nofb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_pgu_crtc_mode_set_nofb(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.arcpgu_drm_private*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = call %struct.arcpgu_drm_private* @crtc_to_arcpgu_priv(%struct.drm_crtc* %6)
  store %struct.arcpgu_drm_private* %7, %struct.arcpgu_drm_private** %3, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.drm_display_mode* %11, %struct.drm_display_mode** %4, align 8
  %12 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %13 = load i32, i32* @ARCPGU_REG_FMT, align 4
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ENCODE_PGU_XY(i64 %16, i64 %19)
  %21 = call i32 @arc_pgu_write(%struct.arcpgu_drm_private* %12, i32 %13, i32 %20)
  %22 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %23 = load i32, i32* @ARCPGU_REG_HSYNC, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 11
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = call i32 @ENCODE_PGU_XY(i64 %30, i64 %37)
  %39 = call i32 @arc_pgu_write(%struct.arcpgu_drm_private* %22, i32 %23, i32 %38)
  %40 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %41 = load i32, i32* @ARCPGU_REG_VSYNC, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = call i32 @ENCODE_PGU_XY(i64 %48, i64 %55)
  %57 = call i32 @arc_pgu_write(%struct.arcpgu_drm_private* %40, i32 %41, i32 %56)
  %58 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %59 = load i32, i32* @ARCPGU_REG_ACTIVE, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = call i32 @ENCODE_PGU_XY(i64 %66, i64 %73)
  %75 = call i32 @arc_pgu_write(%struct.arcpgu_drm_private* %58, i32 %59, i32 %74)
  %76 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %77 = load i32, i32* @ARCPGU_REG_CTRL, align 4
  %78 = call i32 @arc_pgu_read(%struct.arcpgu_drm_private* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %1
  %86 = load i32, i32* @ARCPGU_CTRL_VS_POL_MASK, align 4
  %87 = load i32, i32* @ARCPGU_CTRL_VS_POL_OFST, align 4
  %88 = shl i32 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %98

91:                                               ; preds = %1
  %92 = load i32, i32* @ARCPGU_CTRL_VS_POL_MASK, align 4
  %93 = load i32, i32* @ARCPGU_CTRL_VS_POL_OFST, align 4
  %94 = shl i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %91, %85
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @ARCPGU_CTRL_HS_POL_MASK, align 4
  %107 = load i32, i32* @ARCPGU_CTRL_HS_POL_OFST, align 4
  %108 = shl i32 %106, %107
  %109 = load i32, i32* %5, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %5, align 4
  br label %118

111:                                              ; preds = %98
  %112 = load i32, i32* @ARCPGU_CTRL_HS_POL_MASK, align 4
  %113 = load i32, i32* @ARCPGU_CTRL_HS_POL_OFST, align 4
  %114 = shl i32 %112, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %111, %105
  %119 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %120 = load i32, i32* @ARCPGU_REG_CTRL, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @arc_pgu_write(%struct.arcpgu_drm_private* %119, i32 %120, i32 %121)
  %123 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %124 = load i32, i32* @ARCPGU_REG_STRIDE, align 4
  %125 = call i32 @arc_pgu_write(%struct.arcpgu_drm_private* %123, i32 %124, i32 0)
  %126 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %127 = load i32, i32* @ARCPGU_REG_START_SET, align 4
  %128 = call i32 @arc_pgu_write(%struct.arcpgu_drm_private* %126, i32 %127, i32 1)
  %129 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %130 = call i32 @arc_pgu_set_pxl_fmt(%struct.drm_crtc* %129)
  %131 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %3, align 8
  %132 = getelementptr inbounds %struct.arcpgu_drm_private, %struct.arcpgu_drm_private* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %136, 1000
  %138 = call i32 @clk_set_rate(i32 %133, i32 %137)
  ret void
}

declare dso_local %struct.arcpgu_drm_private* @crtc_to_arcpgu_priv(%struct.drm_crtc*) #1

declare dso_local i32 @arc_pgu_write(%struct.arcpgu_drm_private*, i32, i32) #1

declare dso_local i32 @ENCODE_PGU_XY(i64, i64) #1

declare dso_local i32 @arc_pgu_read(%struct.arcpgu_drm_private*, i32) #1

declare dso_local i32 @arc_pgu_set_pxl_fmt(%struct.drm_crtc*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
