; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_calc_state_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv_crtc_calc_state_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_clk = type { i32 (%struct.nvkm_clk*, %struct.nvbios_pll*, i32, %struct.nvkm_pll_vals*)* }
%struct.nvbios_pll = type opaque
%struct.nvkm_pll_vals = type { i32, i32, i32, i32, i32, i64 }
%struct.nouveau_crtc = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 (%struct.nouveau_crtc.0*, i32)* }
%struct.nouveau_crtc.0 = type opaque
%struct.nv04_mode_state = type { i32, %struct.nv04_crtc_reg* }
%struct.nv04_crtc_reg = type { %struct.nvkm_pll_vals }
%struct.nvbios_pll.1 = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { %struct.nv04_mode_state }

@PLL_VPLL1 = common dso_local global i32 0, align 4
@PLL_VPLL0 = common dso_local global i32 0, align 4
@PLLSEL_VPLL1_MASK = common dso_local global i32 0, align 4
@PLLSEL_VPLL2_MASK = common dso_local global i32 0, align 4
@PLLSEL_TV_MASK = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CURIE = common dso_local global i64 0, align 8
@NV_PRAMDAC_PLL_COEFF_SELECT_USE_VPLL2_TRUE = common dso_local global i32 0, align 4
@NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_MPLL = common dso_local global i32 0, align 4
@NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_NVPLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"vpll: n1 %d n2 %d m1 %d m2 %d log2p %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vpll: n %d m %d log2p %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*, i32)* @nv_crtc_calc_state_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_crtc_calc_state_ext(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca %struct.nvkm_clk*, align 8
  %11 = alloca %struct.nouveau_crtc*, align 8
  %12 = alloca %struct.nv04_mode_state*, align 8
  %13 = alloca %struct.nv04_crtc_reg*, align 8
  %14 = alloca %struct.nvkm_pll_vals*, align 8
  %15 = alloca %struct.nvbios_pll.1, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %7, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %20 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %8, align 8
  %21 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = call %struct.nvkm_bios* @nvxx_bios(%struct.TYPE_12__* %23)
  store %struct.nvkm_bios* %24, %struct.nvkm_bios** %9, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = call %struct.nvkm_clk* @nvxx_clk(%struct.TYPE_12__* %27)
  store %struct.nvkm_clk* %28, %struct.nvkm_clk** %10, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %30 = call %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc* %29)
  store %struct.nouveau_crtc* %30, %struct.nouveau_crtc** %11, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %32 = call %struct.TYPE_13__* @nv04_display(%struct.drm_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store %struct.nv04_mode_state* %33, %struct.nv04_mode_state** %12, align 8
  %34 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %12, align 8
  %35 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %34, i32 0, i32 1
  %36 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %35, align 8
  %37 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %38 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %36, i64 %39
  store %struct.nv04_crtc_reg* %40, %struct.nv04_crtc_reg** %13, align 8
  %41 = load %struct.nv04_crtc_reg*, %struct.nv04_crtc_reg** %13, align 8
  %42 = getelementptr inbounds %struct.nv04_crtc_reg, %struct.nv04_crtc_reg* %41, i32 0, i32 0
  store %struct.nvkm_pll_vals* %42, %struct.nvkm_pll_vals** %14, align 8
  %43 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %44 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %45 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %3
  %49 = load i32, i32* @PLL_VPLL1, align 4
  br label %52

50:                                               ; preds = %3
  %51 = load i32, i32* @PLL_VPLL0, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i64 @nvbios_pll_parse(%struct.nvkm_bios* %43, i32 %53, %struct.nvbios_pll.1* %15)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %189

57:                                               ; preds = %52
  %58 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %59 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %61 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 64
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  %69 = getelementptr inbounds %struct.nvbios_pll.1, %struct.nvbios_pll.1* %15, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 2
  %73 = icmp sle i32 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.nvbios_pll.1, %struct.nvbios_pll.1* %15, i32 0, i32 0
  %76 = call i32 @memset(i32* %75, i32 0, i32 4)
  br label %77

77:                                               ; preds = %74, %67, %57
  %78 = load %struct.nvkm_clk*, %struct.nvkm_clk** %10, align 8
  %79 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %78, i32 0, i32 0
  %80 = load i32 (%struct.nvkm_clk*, %struct.nvbios_pll*, i32, %struct.nvkm_pll_vals*)*, i32 (%struct.nvkm_clk*, %struct.nvbios_pll*, i32, %struct.nvkm_pll_vals*)** %79, align 8
  %81 = load %struct.nvkm_clk*, %struct.nvkm_clk** %10, align 8
  %82 = bitcast %struct.nvbios_pll.1* %15 to %struct.nvbios_pll*
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %85 = call i32 %80(%struct.nvkm_clk* %81, %struct.nvbios_pll* %82, i32 %83, %struct.nvkm_pll_vals* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %189

88:                                               ; preds = %77
  %89 = load i32, i32* @PLLSEL_VPLL1_MASK, align 4
  %90 = load i32, i32* @PLLSEL_VPLL2_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @PLLSEL_TV_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %12, align 8
  %95 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %99 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NV_DEVICE_INFO_V0_CURIE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %88
  %107 = load i32, i32* @NV_PRAMDAC_PLL_COEFF_SELECT_USE_VPLL2_TRUE, align 4
  %108 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %12, align 8
  %109 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %88
  %113 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %114 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %118, 65
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load i32, i32* @NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_MPLL, align 4
  %122 = load i32, i32* @NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_NVPLL, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %12, align 8
  %125 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %120, %112
  %129 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %130 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @PLLSEL_VPLL2_MASK, align 4
  br label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @PLLSEL_VPLL1_MASK, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  %139 = load %struct.nv04_mode_state*, %struct.nv04_mode_state** %12, align 8
  %140 = getelementptr inbounds %struct.nv04_mode_state, %struct.nv04_mode_state* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %144 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %165

147:                                              ; preds = %137
  %148 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %149 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %150 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %153 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %156 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %159 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %162 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %148, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %151, i32 %154, i32 %157, i32 %160, i32 %163)
  br label %177

165:                                              ; preds = %137
  %166 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %167 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %168 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %171 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.nvkm_pll_vals*, %struct.nvkm_pll_vals** %14, align 8
  %174 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (%struct.nouveau_drm*, i8*, i32, i32, i32, ...) @NV_DEBUG(%struct.nouveau_drm* %166, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %169, i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %165, %147
  %178 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %179 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i32 (%struct.nouveau_crtc.0*, i32)*, i32 (%struct.nouveau_crtc.0*, i32)** %180, align 8
  %182 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %183 = bitcast %struct.nouveau_crtc* %182 to %struct.nouveau_crtc.0*
  %184 = load %struct.nouveau_crtc*, %struct.nouveau_crtc** %11, align 8
  %185 = getelementptr inbounds %struct.nouveau_crtc, %struct.nouveau_crtc* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 %181(%struct.nouveau_crtc.0* %183, i32 %187)
  br label %189

189:                                              ; preds = %177, %87, %56
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_bios* @nvxx_bios(%struct.TYPE_12__*) #1

declare dso_local %struct.nvkm_clk* @nvxx_clk(%struct.TYPE_12__*) #1

declare dso_local %struct.nouveau_crtc* @nouveau_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.TYPE_13__* @nv04_display(%struct.drm_device*) #1

declare dso_local i64 @nvbios_pll_parse(%struct.nvkm_bios*, i32, %struct.nvbios_pll.1*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
