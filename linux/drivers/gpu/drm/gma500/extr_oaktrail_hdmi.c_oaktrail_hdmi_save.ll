; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_2__, %struct.oaktrail_hdmi_dev* }
%struct.TYPE_2__ = type { %struct.psb_pipe*, %struct.psb_state }
%struct.psb_pipe = type { i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.psb_state = type { i8*, i8*, i8* }
%struct.oaktrail_hdmi_dev = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@DPLL_CTRL = common dso_local global i64 0, align 8
@DPLL_DIV_CTRL = common dso_local global i64 0, align 8
@DPLL_ADJUST = common dso_local global i64 0, align 8
@DPLL_UPDATE = common dso_local global i64 0, align 8
@DPLL_CLK_ENABLE = common dso_local global i64 0, align 8
@PIPEBCONF = common dso_local global i64 0, align 8
@PIPEBSRC = common dso_local global i64 0, align 8
@HTOTAL_B = common dso_local global i64 0, align 8
@HBLANK_B = common dso_local global i64 0, align 8
@HSYNC_B = common dso_local global i64 0, align 8
@VTOTAL_B = common dso_local global i64 0, align 8
@VBLANK_B = common dso_local global i64 0, align 8
@VSYNC_B = common dso_local global i64 0, align 8
@PCH_PIPEBCONF = common dso_local global i64 0, align 8
@PCH_PIPEBSRC = common dso_local global i64 0, align 8
@PCH_HTOTAL_B = common dso_local global i64 0, align 8
@PCH_HBLANK_B = common dso_local global i64 0, align 8
@PCH_HSYNC_B = common dso_local global i64 0, align 8
@PCH_VTOTAL_B = common dso_local global i64 0, align 8
@PCH_VBLANK_B = common dso_local global i64 0, align 8
@PCH_VSYNC_B = common dso_local global i64 0, align 8
@DSPBCNTR = common dso_local global i64 0, align 8
@DSPBSTRIDE = common dso_local global i64 0, align 8
@DSPBBASE = common dso_local global i64 0, align 8
@DSPBSURF = common dso_local global i64 0, align 8
@DSPBLINOFF = common dso_local global i64 0, align 8
@DSPBTILEOFF = common dso_local global i64 0, align 8
@CURBCNTR = common dso_local global i64 0, align 8
@CURBBASE = common dso_local global i64 0, align 8
@CURBPOS = common dso_local global i64 0, align 8
@PALETTE_B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oaktrail_hdmi_save(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.oaktrail_hdmi_dev*, align 8
  %5 = alloca %struct.psb_state*, align 8
  %6 = alloca %struct.psb_pipe*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  store %struct.drm_psb_private* %10, %struct.drm_psb_private** %3, align 8
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %11, i32 0, i32 1
  %13 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %12, align 8
  store %struct.oaktrail_hdmi_dev* %13, %struct.oaktrail_hdmi_dev** %4, align 8
  %14 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.psb_state* %16, %struct.psb_state** %5, align 8
  %17 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %18 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.psb_pipe*, %struct.psb_pipe** %19, align 8
  %21 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %20, i64 1
  store %struct.psb_pipe* %21, %struct.psb_pipe** %6, align 8
  %22 = load i64, i64* @DPLL_CTRL, align 8
  %23 = call i8* @PSB_RVDC32(i64 %22)
  %24 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %25 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %24, i32 0, i32 12
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* @DPLL_DIV_CTRL, align 8
  %27 = call i8* @PSB_RVDC32(i64 %26)
  %28 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %29 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %28, i32 0, i32 11
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* @DPLL_ADJUST, align 8
  %31 = call i8* @PSB_RVDC32(i64 %30)
  %32 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %33 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %32, i32 0, i32 10
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* @DPLL_UPDATE, align 8
  %35 = call i8* @PSB_RVDC32(i64 %34)
  %36 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %37 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %36, i32 0, i32 9
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* @DPLL_CLK_ENABLE, align 8
  %39 = call i8* @PSB_RVDC32(i64 %38)
  %40 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %41 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load i64, i64* @PIPEBCONF, align 8
  %43 = call i8* @PSB_RVDC32(i64 %42)
  %44 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %45 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %44, i32 0, i32 14
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* @PIPEBSRC, align 8
  %47 = call i8* @PSB_RVDC32(i64 %46)
  %48 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %49 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %48, i32 0, i32 13
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* @HTOTAL_B, align 8
  %51 = call i8* @PSB_RVDC32(i64 %50)
  %52 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %53 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %52, i32 0, i32 12
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* @HBLANK_B, align 8
  %55 = call i8* @PSB_RVDC32(i64 %54)
  %56 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %57 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %56, i32 0, i32 11
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* @HSYNC_B, align 8
  %59 = call i8* @PSB_RVDC32(i64 %58)
  %60 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %61 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %60, i32 0, i32 10
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* @VTOTAL_B, align 8
  %63 = call i8* @PSB_RVDC32(i64 %62)
  %64 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %65 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %64, i32 0, i32 9
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* @VBLANK_B, align 8
  %67 = call i8* @PSB_RVDC32(i64 %66)
  %68 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %69 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %68, i32 0, i32 8
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* @VSYNC_B, align 8
  %71 = call i8* @PSB_RVDC32(i64 %70)
  %72 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %73 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* @PCH_PIPEBCONF, align 8
  %75 = call i8* @PSB_RVDC32(i64 %74)
  %76 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %77 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i64, i64* @PCH_PIPEBSRC, align 8
  %79 = call i8* @PSB_RVDC32(i64 %78)
  %80 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %81 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load i64, i64* @PCH_HTOTAL_B, align 8
  %83 = call i8* @PSB_RVDC32(i64 %82)
  %84 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %85 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load i64, i64* @PCH_HBLANK_B, align 8
  %87 = call i8* @PSB_RVDC32(i64 %86)
  %88 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %89 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load i64, i64* @PCH_HSYNC_B, align 8
  %91 = call i8* @PSB_RVDC32(i64 %90)
  %92 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %93 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load i64, i64* @PCH_VTOTAL_B, align 8
  %95 = call i8* @PSB_RVDC32(i64 %94)
  %96 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %97 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load i64, i64* @PCH_VBLANK_B, align 8
  %99 = call i8* @PSB_RVDC32(i64 %98)
  %100 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %101 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load i64, i64* @PCH_VSYNC_B, align 8
  %103 = call i8* @PSB_RVDC32(i64 %102)
  %104 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %105 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load i64, i64* @DSPBCNTR, align 8
  %107 = call i8* @PSB_RVDC32(i64 %106)
  %108 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %109 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* @DSPBSTRIDE, align 8
  %111 = call i8* @PSB_RVDC32(i64 %110)
  %112 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %113 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  %114 = load i64, i64* @DSPBBASE, align 8
  %115 = call i8* @PSB_RVDC32(i64 %114)
  %116 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %117 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load i64, i64* @DSPBSURF, align 8
  %119 = call i8* @PSB_RVDC32(i64 %118)
  %120 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %121 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load i64, i64* @DSPBLINOFF, align 8
  %123 = call i8* @PSB_RVDC32(i64 %122)
  %124 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %125 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* @DSPBTILEOFF, align 8
  %127 = call i8* @PSB_RVDC32(i64 %126)
  %128 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %129 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i64, i64* @CURBCNTR, align 8
  %131 = call i8* @PSB_RVDC32(i64 %130)
  %132 = load %struct.psb_state*, %struct.psb_state** %5, align 8
  %133 = getelementptr inbounds %struct.psb_state, %struct.psb_state* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load i64, i64* @CURBBASE, align 8
  %135 = call i8* @PSB_RVDC32(i64 %134)
  %136 = load %struct.psb_state*, %struct.psb_state** %5, align 8
  %137 = getelementptr inbounds %struct.psb_state, %struct.psb_state* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load i64, i64* @CURBPOS, align 8
  %139 = call i8* @PSB_RVDC32(i64 %138)
  %140 = load %struct.psb_state*, %struct.psb_state** %5, align 8
  %141 = getelementptr inbounds %struct.psb_state, %struct.psb_state* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %158, %1
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 256
  br i1 %144, label %145, label %161

145:                                              ; preds = %142
  %146 = load i64, i64* @PALETTE_B, align 8
  %147 = load i32, i32* %7, align 4
  %148 = shl i32 %147, 2
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %146, %149
  %151 = call i8* @PSB_RVDC32(i64 %150)
  %152 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %153 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  store i8* %151, i8** %157, align 8
  br label %158

158:                                              ; preds = %145
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %142

161:                                              ; preds = %142
  ret void
}

declare dso_local i8* @PSB_RVDC32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
