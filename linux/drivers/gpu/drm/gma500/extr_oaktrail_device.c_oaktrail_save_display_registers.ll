; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_device.c_oaktrail_save_display_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_device.c_oaktrail_save_display_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i64, i64, %struct.psb_save_area }
%struct.psb_save_area = type { %struct.TYPE_2__, i8*, i8*, %struct.psb_pipe* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.psb_pipe = type { i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@DSPARB = common dso_local global i64 0, align 8
@DSPFW1 = common dso_local global i64 0, align 8
@DSPFW2 = common dso_local global i64 0, align 8
@DSPFW3 = common dso_local global i64 0, align 8
@DSPFW4 = common dso_local global i64 0, align 8
@DSPFW5 = common dso_local global i64 0, align 8
@DSPFW6 = common dso_local global i64 0, align 8
@DSPCHICKENBIT = common dso_local global i64 0, align 8
@PIPEACONF = common dso_local global i64 0, align 8
@PIPEASRC = common dso_local global i64 0, align 8
@MRST_FPA0 = common dso_local global i64 0, align 8
@MRST_FPA1 = common dso_local global i64 0, align 8
@MRST_DPLL_A = common dso_local global i64 0, align 8
@HTOTAL_A = common dso_local global i64 0, align 8
@HBLANK_A = common dso_local global i64 0, align 8
@HSYNC_A = common dso_local global i64 0, align 8
@VTOTAL_A = common dso_local global i64 0, align 8
@VBLANK_A = common dso_local global i64 0, align 8
@VSYNC_A = common dso_local global i64 0, align 8
@BCLRPAT_A = common dso_local global i64 0, align 8
@DSPACNTR = common dso_local global i64 0, align 8
@DSPASTRIDE = common dso_local global i64 0, align 8
@DSPABASE = common dso_local global i64 0, align 8
@DSPASURF = common dso_local global i64 0, align 8
@DSPALINOFF = common dso_local global i64 0, align 8
@DSPATILEOFF = common dso_local global i64 0, align 8
@CURACNTR = common dso_local global i64 0, align 8
@CURABASE = common dso_local global i64 0, align 8
@CURAPOS = common dso_local global i64 0, align 8
@PALETTE_A = common dso_local global i64 0, align 8
@MRST_PERF_MODE = common dso_local global i64 0, align 8
@PP_CONTROL = common dso_local global i64 0, align 8
@PFIT_PGM_RATIOS = common dso_local global i64 0, align 8
@PFIT_AUTO_RATIOS = common dso_local global i64 0, align 8
@BLC_PWM_CTL = common dso_local global i64 0, align 8
@BLC_PWM_CTL2 = common dso_local global i64 0, align 8
@LVDS = common dso_local global i64 0, align 8
@PFIT_CONTROL = common dso_local global i64 0, align 8
@LVDSPP_ON = common dso_local global i64 0, align 8
@LVDSPP_OFF = common dso_local global i64 0, align 8
@PP_CYCLE = common dso_local global i64 0, align 8
@OV_OVADD = common dso_local global i64 0, align 8
@OV_OGAMC0 = common dso_local global i64 0, align 8
@OV_OGAMC1 = common dso_local global i64 0, align 8
@OV_OGAMC2 = common dso_local global i64 0, align 8
@OV_OGAMC3 = common dso_local global i64 0, align 8
@OV_OGAMC4 = common dso_local global i64 0, align 8
@OV_OGAMC5 = common dso_local global i64 0, align 8
@HISTOGRAM_INT_CONTROL = common dso_local global i64 0, align 8
@HISTOGRAM_LOGIC_CONTROL = common dso_local global i64 0, align 8
@PWM_CONTROL_LOGIC = common dso_local global i64 0, align 8
@PP_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @oaktrail_save_display_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oaktrail_save_display_registers(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_psb_private*, align 8
  %4 = alloca %struct.psb_save_area*, align 8
  %5 = alloca %struct.psb_pipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  store %struct.drm_psb_private* %10, %struct.drm_psb_private** %3, align 8
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %11, i32 0, i32 2
  store %struct.psb_save_area* %12, %struct.psb_save_area** %4, align 8
  %13 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %14 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %13, i32 0, i32 3
  %15 = load %struct.psb_pipe*, %struct.psb_pipe** %14, align 8
  %16 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %15, i64 0
  store %struct.psb_pipe* %16, %struct.psb_pipe** %5, align 8
  %17 = load i64, i64* @DSPARB, align 8
  %18 = call i8* @PSB_RVDC32(i64 %17)
  %19 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %20 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 30
  store i8* %18, i8** %21, align 8
  %22 = load i64, i64* @DSPFW1, align 8
  %23 = call i8* @PSB_RVDC32(i64 %22)
  %24 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %25 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 29
  store i8* %23, i8** %26, align 8
  %27 = load i64, i64* @DSPFW2, align 8
  %28 = call i8* @PSB_RVDC32(i64 %27)
  %29 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %30 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 28
  store i8* %28, i8** %31, align 8
  %32 = load i64, i64* @DSPFW3, align 8
  %33 = call i8* @PSB_RVDC32(i64 %32)
  %34 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %35 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 27
  store i8* %33, i8** %36, align 8
  %37 = load i64, i64* @DSPFW4, align 8
  %38 = call i8* @PSB_RVDC32(i64 %37)
  %39 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %40 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 26
  store i8* %38, i8** %41, align 8
  %42 = load i64, i64* @DSPFW5, align 8
  %43 = call i8* @PSB_RVDC32(i64 %42)
  %44 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %45 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 25
  store i8* %43, i8** %46, align 8
  %47 = load i64, i64* @DSPFW6, align 8
  %48 = call i8* @PSB_RVDC32(i64 %47)
  %49 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %50 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 24
  store i8* %48, i8** %51, align 8
  %52 = load i64, i64* @DSPCHICKENBIT, align 8
  %53 = call i8* @PSB_RVDC32(i64 %52)
  %54 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %55 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 23
  store i8* %53, i8** %56, align 8
  %57 = load i64, i64* @PIPEACONF, align 8
  %58 = call i8* @PSB_RVDC32(i64 %57)
  %59 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %60 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %59, i32 0, i32 17
  store i8* %58, i8** %60, align 8
  %61 = load i64, i64* @PIPEASRC, align 8
  %62 = call i8* @PSB_RVDC32(i64 %61)
  %63 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %64 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %63, i32 0, i32 16
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* @MRST_FPA0, align 8
  %66 = call i8* @PSB_RVDC32(i64 %65)
  %67 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %68 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %67, i32 0, i32 15
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* @MRST_FPA1, align 8
  %70 = call i8* @PSB_RVDC32(i64 %69)
  %71 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %72 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %71, i32 0, i32 14
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* @MRST_DPLL_A, align 8
  %74 = call i8* @PSB_RVDC32(i64 %73)
  %75 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %76 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %75, i32 0, i32 13
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* @HTOTAL_A, align 8
  %78 = call i8* @PSB_RVDC32(i64 %77)
  %79 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %80 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* @HBLANK_A, align 8
  %82 = call i8* @PSB_RVDC32(i64 %81)
  %83 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %84 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %83, i32 0, i32 11
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* @HSYNC_A, align 8
  %86 = call i8* @PSB_RVDC32(i64 %85)
  %87 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %88 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %87, i32 0, i32 10
  store i8* %86, i8** %88, align 8
  %89 = load i64, i64* @VTOTAL_A, align 8
  %90 = call i8* @PSB_RVDC32(i64 %89)
  %91 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %92 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %91, i32 0, i32 9
  store i8* %90, i8** %92, align 8
  %93 = load i64, i64* @VBLANK_A, align 8
  %94 = call i8* @PSB_RVDC32(i64 %93)
  %95 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %96 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %95, i32 0, i32 8
  store i8* %94, i8** %96, align 8
  %97 = load i64, i64* @VSYNC_A, align 8
  %98 = call i8* @PSB_RVDC32(i64 %97)
  %99 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %100 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load i64, i64* @BCLRPAT_A, align 8
  %102 = call i8* @PSB_RVDC32(i64 %101)
  %103 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %104 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 22
  store i8* %102, i8** %105, align 8
  %106 = load i64, i64* @DSPACNTR, align 8
  %107 = call i8* @PSB_RVDC32(i64 %106)
  %108 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %109 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* @DSPASTRIDE, align 8
  %111 = call i8* @PSB_RVDC32(i64 %110)
  %112 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %113 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  %114 = load i64, i64* @DSPABASE, align 8
  %115 = call i8* @PSB_RVDC32(i64 %114)
  %116 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %117 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load i64, i64* @DSPASURF, align 8
  %119 = call i8* @PSB_RVDC32(i64 %118)
  %120 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %121 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load i64, i64* @DSPALINOFF, align 8
  %123 = call i8* @PSB_RVDC32(i64 %122)
  %124 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %125 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* @DSPATILEOFF, align 8
  %127 = call i8* @PSB_RVDC32(i64 %126)
  %128 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %129 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i64, i64* @CURACNTR, align 8
  %131 = call i8* @PSB_RVDC32(i64 %130)
  %132 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %133 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 21
  store i8* %131, i8** %134, align 8
  %135 = load i64, i64* @CURABASE, align 8
  %136 = call i8* @PSB_RVDC32(i64 %135)
  %137 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %138 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 20
  store i8* %136, i8** %139, align 8
  %140 = load i64, i64* @CURAPOS, align 8
  %141 = call i8* @PSB_RVDC32(i64 %140)
  %142 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %143 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 19
  store i8* %141, i8** %144, align 8
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %161, %1
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %146, 256
  br i1 %147, label %148, label %164

148:                                              ; preds = %145
  %149 = load i64, i64* @PALETTE_A, align 8
  %150 = load i32, i32* %6, align 4
  %151 = shl i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %149, %152
  %154 = call i8* @PSB_RVDC32(i64 %153)
  %155 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %156 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %155, i32 0, i32 0
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  store i8* %154, i8** %160, align 8
  br label %161

161:                                              ; preds = %148
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %145

164:                                              ; preds = %145
  %165 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %166 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %171 = call i32 @oaktrail_hdmi_save(%struct.drm_device* %170)
  br label %172

172:                                              ; preds = %169, %164
  %173 = load i64, i64* @MRST_PERF_MODE, align 8
  %174 = call i8* @PSB_RVDC32(i64 %173)
  %175 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %176 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 18
  store i8* %174, i8** %177, align 8
  %178 = load i64, i64* @PP_CONTROL, align 8
  %179 = call i8* @PSB_RVDC32(i64 %178)
  %180 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %181 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 17
  store i8* %179, i8** %182, align 8
  %183 = load i64, i64* @PFIT_PGM_RATIOS, align 8
  %184 = call i8* @PSB_RVDC32(i64 %183)
  %185 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %186 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 16
  store i8* %184, i8** %187, align 8
  %188 = load i64, i64* @PFIT_AUTO_RATIOS, align 8
  %189 = call i8* @PSB_RVDC32(i64 %188)
  %190 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %191 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 15
  store i8* %189, i8** %192, align 8
  %193 = load i64, i64* @BLC_PWM_CTL, align 8
  %194 = call i8* @PSB_RVDC32(i64 %193)
  %195 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %196 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load i64, i64* @BLC_PWM_CTL2, align 8
  %198 = call i8* @PSB_RVDC32(i64 %197)
  %199 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %200 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %199, i32 0, i32 1
  store i8* %198, i8** %200, align 8
  %201 = load i64, i64* @LVDS, align 8
  %202 = call i8* @PSB_RVDC32(i64 %201)
  %203 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %204 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 14
  store i8* %202, i8** %205, align 8
  %206 = load i64, i64* @PFIT_CONTROL, align 8
  %207 = call i8* @PSB_RVDC32(i64 %206)
  %208 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %209 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 13
  store i8* %207, i8** %210, align 8
  %211 = load i64, i64* @LVDSPP_ON, align 8
  %212 = call i8* @PSB_RVDC32(i64 %211)
  %213 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %214 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 12
  store i8* %212, i8** %215, align 8
  %216 = load i64, i64* @LVDSPP_OFF, align 8
  %217 = call i8* @PSB_RVDC32(i64 %216)
  %218 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %219 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 11
  store i8* %217, i8** %220, align 8
  %221 = load i64, i64* @PP_CYCLE, align 8
  %222 = call i8* @PSB_RVDC32(i64 %221)
  %223 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %224 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 10
  store i8* %222, i8** %225, align 8
  %226 = load i64, i64* @OV_OVADD, align 8
  %227 = call i8* @PSB_RVDC32(i64 %226)
  %228 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %229 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 9
  store i8* %227, i8** %230, align 8
  %231 = load i64, i64* @OV_OGAMC0, align 8
  %232 = call i8* @PSB_RVDC32(i64 %231)
  %233 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %234 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 8
  store i8* %232, i8** %235, align 8
  %236 = load i64, i64* @OV_OGAMC1, align 8
  %237 = call i8* @PSB_RVDC32(i64 %236)
  %238 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %239 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 7
  store i8* %237, i8** %240, align 8
  %241 = load i64, i64* @OV_OGAMC2, align 8
  %242 = call i8* @PSB_RVDC32(i64 %241)
  %243 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %244 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 6
  store i8* %242, i8** %245, align 8
  %246 = load i64, i64* @OV_OGAMC3, align 8
  %247 = call i8* @PSB_RVDC32(i64 %246)
  %248 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %249 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 5
  store i8* %247, i8** %250, align 8
  %251 = load i64, i64* @OV_OGAMC4, align 8
  %252 = call i8* @PSB_RVDC32(i64 %251)
  %253 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %254 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 4
  store i8* %252, i8** %255, align 8
  %256 = load i64, i64* @OV_OGAMC5, align 8
  %257 = call i8* @PSB_RVDC32(i64 %256)
  %258 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %259 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 3
  store i8* %257, i8** %260, align 8
  %261 = load i64, i64* @HISTOGRAM_INT_CONTROL, align 8
  %262 = call i8* @PSB_RVDC32(i64 %261)
  %263 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %264 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 2
  store i8* %262, i8** %265, align 8
  %266 = load i64, i64* @HISTOGRAM_LOGIC_CONTROL, align 8
  %267 = call i8* @PSB_RVDC32(i64 %266)
  %268 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %269 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 1
  store i8* %267, i8** %270, align 8
  %271 = load i64, i64* @PWM_CONTROL_LOGIC, align 8
  %272 = call i8* @PSB_RVDC32(i64 %271)
  %273 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %274 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  store i8* %272, i8** %275, align 8
  %276 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %277 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %302

280:                                              ; preds = %172
  %281 = load i64, i64* @PP_CONTROL, align 8
  %282 = call i32 @PSB_WVDC32(i32 0, i64 %281)
  br label %283

283:                                              ; preds = %287, %280
  %284 = load i64, i64* @PP_STATUS, align 8
  %285 = call i8* @PSB_RVDC32(i64 %284)
  %286 = ptrtoint i8* %285 to i32
  store i32 %286, i32* %7, align 4
  br label %287

287:                                              ; preds = %283
  %288 = load i32, i32* %7, align 4
  %289 = and i32 %288, -2147483648
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %283, label %291

291:                                              ; preds = %287
  %292 = load i64, i64* @DSPACNTR, align 8
  %293 = call i32 @PSB_WVDC32(i32 1476395008, i64 %292)
  %294 = load i64, i64* @DSPASURF, align 8
  %295 = call i32 @PSB_WVDC32(i32 0, i64 %294)
  %296 = call i32 @msleep(i32 4)
  %297 = load i64, i64* @PIPEACONF, align 8
  %298 = call i32 @PSB_WVDC32(i32 0, i64 %297)
  %299 = call i32 @msleep(i32 8)
  %300 = load i64, i64* @MRST_DPLL_A, align 8
  %301 = call i32 @PSB_WVDC32(i32 0, i64 %300)
  br label %302

302:                                              ; preds = %291, %172
  ret i32 0
}

declare dso_local i8* @PSB_RVDC32(i64) #1

declare dso_local i32 @oaktrail_hdmi_save(%struct.drm_device*) #1

declare dso_local i32 @PSB_WVDC32(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
