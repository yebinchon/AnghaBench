; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_crtc_mode_set_nofb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/aspeed/extr_aspeed_gfx_crtc.c_aspeed_gfx_crtc_mode_set_nofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_gfx = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i64 }

@CRT_CTRL1 = common dso_local global i64 0, align 8
@CRT_CTRL_INTERLACED = common dso_local global i32 0, align 4
@CRT_CTRL_HSYNC_NEGATIVE = common dso_local global i32 0, align 4
@CRT_CTRL_VSYNC_NEGATIVE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@CRT_HORIZ0 = common dso_local global i64 0, align 8
@CRT_HORIZ1 = common dso_local global i64 0, align 8
@CRT_VERT0 = common dso_local global i64 0, align 8
@CRT_VERT1 = common dso_local global i64 0, align 8
@CRT_OFFSET = common dso_local global i64 0, align 8
@G5_CRT_THROD_VAL = common dso_local global i32 0, align 4
@CRT_THROD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_gfx*)* @aspeed_gfx_crtc_mode_set_nofb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_gfx_crtc_mode_set_nofb(%struct.aspeed_gfx* %0) #0 {
  %2 = alloca %struct.aspeed_gfx*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aspeed_gfx* %0, %struct.aspeed_gfx** %2, align 8
  %9 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %10 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %3, align 8
  %15 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %16 = call i32 @aspeed_gfx_set_pixel_fmt(%struct.aspeed_gfx* %15, i32* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %171

20:                                               ; preds = %1
  %21 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %22 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CRT_CTRL1, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @CRT_CTRL_INTERLACED, align 4
  %28 = load i32, i32* @CRT_CTRL_HSYNC_NEGATIVE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CRT_CTRL_VSYNC_NEGATIVE, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = load i32, i32* @CRT_CTRL_INTERLACED, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %20
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @CRT_CTRL_HSYNC_NEGATIVE, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @CRT_CTRL_VSYNC_NEGATIVE, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %70 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CRT_CTRL1, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 9
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i32 @CRT_H_TOTAL(i64 %78)
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = call i32 @CRT_H_DE(i32 %83)
  %85 = or i32 %79, %84
  %86 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %87 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CRT_HORIZ0, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 1
  %96 = call i32 @CRT_H_RS_START(i64 %95)
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @CRT_H_RS_END(i32 %99)
  %101 = or i32 %96, %100
  %102 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %103 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CRT_HORIZ1, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %101, i64 %106)
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %109 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 1
  %112 = call i32 @CRT_V_TOTAL(i64 %111)
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %115, 1
  %117 = call i32 @CRT_V_DE(i64 %116)
  %118 = or i32 %112, %117
  %119 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %120 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CRT_VERT0, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @writel(i32 %118, i64 %123)
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @CRT_V_RS_START(i32 %127)
  %129 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %130 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @CRT_V_RS_END(i32 %131)
  %133 = or i32 %128, %132
  %134 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %135 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @CRT_VERT1, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  %140 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %141 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sdiv i32 %144, 8
  store i32 %145, i32* %5, align 4
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %147 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %150, 127
  %152 = sdiv i32 %151, 128
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @CRT_DISP_OFFSET(i32 %153)
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @CRT_TERM_COUNT(i32 %155)
  %157 = or i32 %154, %156
  %158 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %159 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @CRT_OFFSET, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i32 %157, i64 %162)
  %164 = load i32, i32* @G5_CRT_THROD_VAL, align 4
  %165 = load %struct.aspeed_gfx*, %struct.aspeed_gfx** %2, align 8
  %166 = getelementptr inbounds %struct.aspeed_gfx, %struct.aspeed_gfx* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @CRT_THROD, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 %164, i64 %169)
  br label %171

171:                                              ; preds = %67, %19
  ret void
}

declare dso_local i32 @aspeed_gfx_set_pixel_fmt(%struct.aspeed_gfx*, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @CRT_H_TOTAL(i64) #1

declare dso_local i32 @CRT_H_DE(i32) #1

declare dso_local i32 @CRT_H_RS_START(i64) #1

declare dso_local i32 @CRT_H_RS_END(i32) #1

declare dso_local i32 @CRT_V_TOTAL(i64) #1

declare dso_local i32 @CRT_V_DE(i64) #1

declare dso_local i32 @CRT_V_RS_START(i32) #1

declare dso_local i32 @CRT_V_RS_END(i32) #1

declare dso_local i32 @CRT_DISP_OFFSET(i32) #1

declare dso_local i32 @CRT_TERM_COUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
