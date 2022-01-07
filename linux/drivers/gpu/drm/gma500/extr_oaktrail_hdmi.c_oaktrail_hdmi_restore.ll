; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_hdmi.c_oaktrail_hdmi_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.TYPE_2__, %struct.oaktrail_hdmi_dev* }
%struct.TYPE_2__ = type { %struct.psb_pipe*, %struct.psb_state }
%struct.psb_pipe = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.psb_state = type { i32, i32, i32 }
%struct.oaktrail_hdmi_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DPLL_CTRL = common dso_local global i64 0, align 8
@DPLL_DIV_CTRL = common dso_local global i64 0, align 8
@DPLL_ADJUST = common dso_local global i64 0, align 8
@DPLL_UPDATE = common dso_local global i64 0, align 8
@DPLL_CLK_ENABLE = common dso_local global i64 0, align 8
@PIPEBSRC = common dso_local global i64 0, align 8
@HTOTAL_B = common dso_local global i64 0, align 8
@HBLANK_B = common dso_local global i64 0, align 8
@HSYNC_B = common dso_local global i64 0, align 8
@VTOTAL_B = common dso_local global i64 0, align 8
@VBLANK_B = common dso_local global i64 0, align 8
@VSYNC_B = common dso_local global i64 0, align 8
@PCH_PIPEBSRC = common dso_local global i64 0, align 8
@PCH_HTOTAL_B = common dso_local global i64 0, align 8
@PCH_HBLANK_B = common dso_local global i64 0, align 8
@PCH_HSYNC_B = common dso_local global i64 0, align 8
@PCH_VTOTAL_B = common dso_local global i64 0, align 8
@PCH_VBLANK_B = common dso_local global i64 0, align 8
@PCH_VSYNC_B = common dso_local global i64 0, align 8
@PIPEBCONF = common dso_local global i64 0, align 8
@PCH_PIPEBCONF = common dso_local global i64 0, align 8
@DSPBLINOFF = common dso_local global i64 0, align 8
@DSPBSTRIDE = common dso_local global i64 0, align 8
@DSPBTILEOFF = common dso_local global i64 0, align 8
@DSPBCNTR = common dso_local global i64 0, align 8
@DSPBSURF = common dso_local global i64 0, align 8
@CURBCNTR = common dso_local global i64 0, align 8
@CURBPOS = common dso_local global i64 0, align 8
@CURBBASE = common dso_local global i64 0, align 8
@PALETTE_B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oaktrail_hdmi_restore(%struct.drm_device* %0) #0 {
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
  %22 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %23 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* @DPLL_CTRL, align 8
  %26 = call i32 @PSB_WVDC32(i32 %24, i64 %25)
  %27 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %28 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @DPLL_DIV_CTRL, align 8
  %31 = call i32 @PSB_WVDC32(i32 %29, i64 %30)
  %32 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %33 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @DPLL_ADJUST, align 8
  %36 = call i32 @PSB_WVDC32(i32 %34, i64 %35)
  %37 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %38 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @DPLL_UPDATE, align 8
  %41 = call i32 @PSB_WVDC32(i32 %39, i64 %40)
  %42 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %43 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @DPLL_CLK_ENABLE, align 8
  %46 = call i32 @PSB_WVDC32(i32 %44, i64 %45)
  %47 = call i32 @udelay(i32 150)
  %48 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %49 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @PIPEBSRC, align 8
  %52 = call i32 @PSB_WVDC32(i32 %50, i64 %51)
  %53 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %54 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* @HTOTAL_B, align 8
  %57 = call i32 @PSB_WVDC32(i32 %55, i64 %56)
  %58 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %59 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @HBLANK_B, align 8
  %62 = call i32 @PSB_WVDC32(i32 %60, i64 %61)
  %63 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %64 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @HSYNC_B, align 8
  %67 = call i32 @PSB_WVDC32(i32 %65, i64 %66)
  %68 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %69 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* @VTOTAL_B, align 8
  %72 = call i32 @PSB_WVDC32(i32 %70, i64 %71)
  %73 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %74 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* @VBLANK_B, align 8
  %77 = call i32 @PSB_WVDC32(i32 %75, i64 %76)
  %78 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %79 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* @VSYNC_B, align 8
  %82 = call i32 @PSB_WVDC32(i32 %80, i64 %81)
  %83 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %84 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* @PCH_PIPEBSRC, align 8
  %87 = call i32 @PSB_WVDC32(i32 %85, i64 %86)
  %88 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %89 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* @PCH_HTOTAL_B, align 8
  %92 = call i32 @PSB_WVDC32(i32 %90, i64 %91)
  %93 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %94 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @PCH_HBLANK_B, align 8
  %97 = call i32 @PSB_WVDC32(i32 %95, i64 %96)
  %98 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %99 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* @PCH_HSYNC_B, align 8
  %102 = call i32 @PSB_WVDC32(i32 %100, i64 %101)
  %103 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %104 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* @PCH_VTOTAL_B, align 8
  %107 = call i32 @PSB_WVDC32(i32 %105, i64 %106)
  %108 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %109 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* @PCH_VBLANK_B, align 8
  %112 = call i32 @PSB_WVDC32(i32 %110, i64 %111)
  %113 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %114 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* @PCH_VSYNC_B, align 8
  %117 = call i32 @PSB_WVDC32(i32 %115, i64 %116)
  %118 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %119 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* @PIPEBCONF, align 8
  %122 = call i32 @PSB_WVDC32(i32 %120, i64 %121)
  %123 = load %struct.oaktrail_hdmi_dev*, %struct.oaktrail_hdmi_dev** %4, align 8
  %124 = getelementptr inbounds %struct.oaktrail_hdmi_dev, %struct.oaktrail_hdmi_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* @PCH_PIPEBCONF, align 8
  %127 = call i32 @PSB_WVDC32(i32 %125, i64 %126)
  %128 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %129 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* @DSPBLINOFF, align 8
  %132 = call i32 @PSB_WVDC32(i32 %130, i64 %131)
  %133 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %134 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* @DSPBSTRIDE, align 8
  %137 = call i32 @PSB_WVDC32(i32 %135, i64 %136)
  %138 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %139 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* @DSPBTILEOFF, align 8
  %142 = call i32 @PSB_WVDC32(i32 %140, i64 %141)
  %143 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %144 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* @DSPBCNTR, align 8
  %147 = call i32 @PSB_WVDC32(i32 %145, i64 %146)
  %148 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %149 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* @DSPBSURF, align 8
  %152 = call i32 @PSB_WVDC32(i32 %150, i64 %151)
  %153 = load %struct.psb_state*, %struct.psb_state** %5, align 8
  %154 = getelementptr inbounds %struct.psb_state, %struct.psb_state* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i64, i64* @CURBCNTR, align 8
  %157 = call i32 @PSB_WVDC32(i32 %155, i64 %156)
  %158 = load %struct.psb_state*, %struct.psb_state** %5, align 8
  %159 = getelementptr inbounds %struct.psb_state, %struct.psb_state* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* @CURBPOS, align 8
  %162 = call i32 @PSB_WVDC32(i32 %160, i64 %161)
  %163 = load %struct.psb_state*, %struct.psb_state** %5, align 8
  %164 = getelementptr inbounds %struct.psb_state, %struct.psb_state* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i64, i64* @CURBBASE, align 8
  %167 = call i32 @PSB_WVDC32(i32 %165, i64 %166)
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %185, %1
  %169 = load i32, i32* %7, align 4
  %170 = icmp slt i32 %169, 256
  br i1 %170, label %171, label %188

171:                                              ; preds = %168
  %172 = load %struct.psb_pipe*, %struct.psb_pipe** %6, align 8
  %173 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i64, i64* @PALETTE_B, align 8
  %180 = load i32, i32* %7, align 4
  %181 = shl i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %179, %182
  %184 = call i32 @PSB_WVDC32(i32 %178, i64 %183)
  br label %185

185:                                              ; preds = %171
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %168

188:                                              ; preds = %168
  ret void
}

declare dso_local i32 @PSB_WVDC32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
