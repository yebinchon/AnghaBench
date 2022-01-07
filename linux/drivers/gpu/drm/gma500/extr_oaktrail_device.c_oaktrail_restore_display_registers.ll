; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_device.c_oaktrail_restore_display_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_device.c_oaktrail_restore_display_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_psb_private* }
%struct.drm_psb_private = type { i64, i64, %struct.psb_save_area }
%struct.psb_save_area = type { i32, i32, %struct.TYPE_2__, %struct.psb_pipe* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.psb_pipe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@DSPARB = common dso_local global i64 0, align 8
@DSPFW1 = common dso_local global i64 0, align 8
@DSPFW2 = common dso_local global i64 0, align 8
@DSPFW3 = common dso_local global i64 0, align 8
@DSPFW4 = common dso_local global i64 0, align 8
@DSPFW5 = common dso_local global i64 0, align 8
@DSPFW6 = common dso_local global i64 0, align 8
@DSPCHICKENBIT = common dso_local global i64 0, align 8
@VGACNTRL = common dso_local global i64 0, align 8
@MRST_FPA0 = common dso_local global i64 0, align 8
@MRST_FPA1 = common dso_local global i64 0, align 8
@MRST_DPLL_A = common dso_local global i64 0, align 8
@HTOTAL_A = common dso_local global i64 0, align 8
@HBLANK_A = common dso_local global i64 0, align 8
@HSYNC_A = common dso_local global i64 0, align 8
@VTOTAL_A = common dso_local global i64 0, align 8
@VBLANK_A = common dso_local global i64 0, align 8
@VSYNC_A = common dso_local global i64 0, align 8
@PIPEASRC = common dso_local global i64 0, align 8
@BCLRPAT_A = common dso_local global i64 0, align 8
@MRST_PERF_MODE = common dso_local global i64 0, align 8
@PIPEACONF = common dso_local global i64 0, align 8
@DSPALINOFF = common dso_local global i64 0, align 8
@DSPASTRIDE = common dso_local global i64 0, align 8
@DSPATILEOFF = common dso_local global i64 0, align 8
@DSPACNTR = common dso_local global i64 0, align 8
@DSPASURF = common dso_local global i64 0, align 8
@CURACNTR = common dso_local global i64 0, align 8
@CURAPOS = common dso_local global i64 0, align 8
@CURABASE = common dso_local global i64 0, align 8
@PALETTE_A = common dso_local global i64 0, align 8
@BLC_PWM_CTL2 = common dso_local global i64 0, align 8
@LVDS = common dso_local global i64 0, align 8
@PFIT_CONTROL = common dso_local global i64 0, align 8
@PFIT_PGM_RATIOS = common dso_local global i64 0, align 8
@PFIT_AUTO_RATIOS = common dso_local global i64 0, align 8
@BLC_PWM_CTL = common dso_local global i64 0, align 8
@LVDSPP_ON = common dso_local global i64 0, align 8
@LVDSPP_OFF = common dso_local global i64 0, align 8
@PP_CYCLE = common dso_local global i64 0, align 8
@PP_CONTROL = common dso_local global i64 0, align 8
@PP_STATUS = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @oaktrail_restore_display_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oaktrail_restore_display_registers(%struct.drm_device* %0) #0 {
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
  %17 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %18 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* @DSPARB, align 8
  %22 = call i32 @PSB_WVDC32(i32 %20, i64 %21)
  %23 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %24 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @DSPFW1, align 8
  %28 = call i32 @PSB_WVDC32(i32 %26, i64 %27)
  %29 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %30 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* @DSPFW2, align 8
  %34 = call i32 @PSB_WVDC32(i32 %32, i64 %33)
  %35 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %36 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @DSPFW3, align 8
  %40 = call i32 @PSB_WVDC32(i32 %38, i64 %39)
  %41 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %42 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* @DSPFW4, align 8
  %46 = call i32 @PSB_WVDC32(i32 %44, i64 %45)
  %47 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %48 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @DSPFW5, align 8
  %52 = call i32 @PSB_WVDC32(i32 %50, i64 %51)
  %53 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %54 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* @DSPFW6, align 8
  %58 = call i32 @PSB_WVDC32(i32 %56, i64 %57)
  %59 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %60 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @DSPCHICKENBIT, align 8
  %64 = call i32 @PSB_WVDC32(i32 %62, i64 %63)
  %65 = load i64, i64* @VGACNTRL, align 8
  %66 = call i32 @PSB_WVDC32(i32 -2147483648, i64 %65)
  %67 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %68 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* @MRST_FPA0, align 8
  %71 = call i32 @PSB_WVDC32(i32 %69, i64 %70)
  %72 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %73 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* @MRST_FPA1, align 8
  %76 = call i32 @PSB_WVDC32(i32 %74, i64 %75)
  %77 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %78 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* @MRST_DPLL_A, align 8
  %81 = call i32 @PSB_WVDC32(i32 %79, i64 %80)
  %82 = call i32 @udelay(i32 150)
  %83 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %84 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* @HTOTAL_A, align 8
  %87 = call i32 @PSB_WVDC32(i32 %85, i64 %86)
  %88 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %89 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* @HBLANK_A, align 8
  %92 = call i32 @PSB_WVDC32(i32 %90, i64 %91)
  %93 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %94 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* @HSYNC_A, align 8
  %97 = call i32 @PSB_WVDC32(i32 %95, i64 %96)
  %98 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %99 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* @VTOTAL_A, align 8
  %102 = call i32 @PSB_WVDC32(i32 %100, i64 %101)
  %103 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %104 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* @VBLANK_A, align 8
  %107 = call i32 @PSB_WVDC32(i32 %105, i64 %106)
  %108 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %109 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* @VSYNC_A, align 8
  %112 = call i32 @PSB_WVDC32(i32 %110, i64 %111)
  %113 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %114 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* @PIPEASRC, align 8
  %117 = call i32 @PSB_WVDC32(i32 %115, i64 %116)
  %118 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %119 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* @BCLRPAT_A, align 8
  %123 = call i32 @PSB_WVDC32(i32 %121, i64 %122)
  %124 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %125 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* @MRST_PERF_MODE, align 8
  %129 = call i32 @PSB_WVDC32(i32 %127, i64 %128)
  %130 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %131 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %1
  %135 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %136 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %135, i32 0, i32 10
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* @PIPEACONF, align 8
  %139 = call i32 @PSB_WVDC32(i32 %137, i64 %138)
  br label %140

140:                                              ; preds = %134, %1
  %141 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %142 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* @DSPALINOFF, align 8
  %145 = call i32 @PSB_WVDC32(i32 %143, i64 %144)
  %146 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %147 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* @DSPASTRIDE, align 8
  %150 = call i32 @PSB_WVDC32(i32 %148, i64 %149)
  %151 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %152 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %151, i32 0, i32 13
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* @DSPATILEOFF, align 8
  %155 = call i32 @PSB_WVDC32(i32 %153, i64 %154)
  %156 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %157 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %156, i32 0, i32 14
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* @DSPACNTR, align 8
  %160 = call i32 @PSB_WVDC32(i32 %158, i64 %159)
  %161 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %162 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %161, i32 0, i32 15
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* @DSPASURF, align 8
  %165 = call i32 @PSB_WVDC32(i32 %163, i64 %164)
  %166 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %167 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 8
  %170 = load i64, i64* @CURACNTR, align 8
  %171 = call i32 @PSB_WVDC32(i32 %169, i64 %170)
  %172 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %173 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 11
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* @CURAPOS, align 8
  %177 = call i32 @PSB_WVDC32(i32 %175, i64 %176)
  %178 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %179 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 12
  %181 = load i32, i32* %180, align 8
  %182 = load i64, i64* @CURABASE, align 8
  %183 = call i32 @PSB_WVDC32(i32 %181, i64 %182)
  store i32 0, i32* %7, align 4
  br label %184

184:                                              ; preds = %201, %140
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %185, 256
  br i1 %186, label %187, label %204

187:                                              ; preds = %184
  %188 = load %struct.psb_pipe*, %struct.psb_pipe** %5, align 8
  %189 = getelementptr inbounds %struct.psb_pipe, %struct.psb_pipe* %188, i32 0, i32 16
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i64, i64* @PALETTE_A, align 8
  %196 = load i32, i32* %7, align 4
  %197 = shl i32 %196, 2
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %195, %198
  %200 = call i32 @PSB_WVDC32(i32 %194, i64 %199)
  br label %201

201:                                              ; preds = %187
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %184

204:                                              ; preds = %184
  %205 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %206 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %211 = call i32 @oaktrail_hdmi_restore(%struct.drm_device* %210)
  br label %212

212:                                              ; preds = %209, %204
  %213 = load %struct.drm_psb_private*, %struct.drm_psb_private** %3, align 8
  %214 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %276

217:                                              ; preds = %212
  %218 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %219 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i64, i64* @BLC_PWM_CTL2, align 8
  %222 = call i32 @PSB_WVDC32(i32 %220, i64 %221)
  %223 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %224 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 13
  %226 = load i32, i32* %225, align 4
  %227 = load i64, i64* @LVDS, align 8
  %228 = call i32 @PSB_WVDC32(i32 %226, i64 %227)
  %229 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %230 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 14
  %232 = load i32, i32* %231, align 8
  %233 = load i64, i64* @PFIT_CONTROL, align 8
  %234 = call i32 @PSB_WVDC32(i32 %232, i64 %233)
  %235 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %236 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 15
  %238 = load i32, i32* %237, align 4
  %239 = load i64, i64* @PFIT_PGM_RATIOS, align 8
  %240 = call i32 @PSB_WVDC32(i32 %238, i64 %239)
  %241 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %242 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 16
  %244 = load i32, i32* %243, align 8
  %245 = load i64, i64* @PFIT_AUTO_RATIOS, align 8
  %246 = call i32 @PSB_WVDC32(i32 %244, i64 %245)
  %247 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %248 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i64, i64* @BLC_PWM_CTL, align 8
  %251 = call i32 @PSB_WVDC32(i32 %249, i64 %250)
  %252 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %253 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 17
  %255 = load i32, i32* %254, align 4
  %256 = load i64, i64* @LVDSPP_ON, align 8
  %257 = call i32 @PSB_WVDC32(i32 %255, i64 %256)
  %258 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %259 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 18
  %261 = load i32, i32* %260, align 8
  %262 = load i64, i64* @LVDSPP_OFF, align 8
  %263 = call i32 @PSB_WVDC32(i32 %261, i64 %262)
  %264 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %265 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 19
  %267 = load i32, i32* %266, align 4
  %268 = load i64, i64* @PP_CYCLE, align 8
  %269 = call i32 @PSB_WVDC32(i32 %267, i64 %268)
  %270 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %271 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 20
  %273 = load i32, i32* %272, align 8
  %274 = load i64, i64* @PP_CONTROL, align 8
  %275 = call i32 @PSB_WVDC32(i32 %273, i64 %274)
  br label %276

276:                                              ; preds = %217, %212
  br label %277

277:                                              ; preds = %280, %276
  %278 = load i32, i32* @PP_STATUS, align 4
  %279 = call i32 @PSB_RVDC32(i32 %278)
  store i32 %279, i32* %6, align 4
  br label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %6, align 4
  %282 = and i32 %281, 134217728
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %277, label %284

284:                                              ; preds = %280
  br label %285

285:                                              ; preds = %288, %284
  %286 = load i32, i32* @PP_STATUS, align 4
  %287 = call i32 @PSB_RVDC32(i32 %286)
  store i32 %287, i32* %6, align 4
  br label %288

288:                                              ; preds = %285
  %289 = load i32, i32* %6, align 4
  %290 = and i32 %289, 268435456
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %285, label %292

292:                                              ; preds = %288
  %293 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %294 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 21
  %296 = load i32, i32* %295, align 4
  %297 = load i64, i64* @OV_OVADD, align 8
  %298 = call i32 @PSB_WVDC32(i32 %296, i64 %297)
  %299 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %300 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 22
  %302 = load i32, i32* %301, align 8
  %303 = load i64, i64* @OV_OGAMC0, align 8
  %304 = call i32 @PSB_WVDC32(i32 %302, i64 %303)
  %305 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %306 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 23
  %308 = load i32, i32* %307, align 4
  %309 = load i64, i64* @OV_OGAMC1, align 8
  %310 = call i32 @PSB_WVDC32(i32 %308, i64 %309)
  %311 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %312 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 24
  %314 = load i32, i32* %313, align 8
  %315 = load i64, i64* @OV_OGAMC2, align 8
  %316 = call i32 @PSB_WVDC32(i32 %314, i64 %315)
  %317 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %318 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 25
  %320 = load i32, i32* %319, align 4
  %321 = load i64, i64* @OV_OGAMC3, align 8
  %322 = call i32 @PSB_WVDC32(i32 %320, i64 %321)
  %323 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %324 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 26
  %326 = load i32, i32* %325, align 8
  %327 = load i64, i64* @OV_OGAMC4, align 8
  %328 = call i32 @PSB_WVDC32(i32 %326, i64 %327)
  %329 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %330 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 27
  %332 = load i32, i32* %331, align 4
  %333 = load i64, i64* @OV_OGAMC5, align 8
  %334 = call i32 @PSB_WVDC32(i32 %332, i64 %333)
  %335 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %336 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 28
  %338 = load i32, i32* %337, align 8
  %339 = load i64, i64* @HISTOGRAM_INT_CONTROL, align 8
  %340 = call i32 @PSB_WVDC32(i32 %338, i64 %339)
  %341 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %342 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 29
  %344 = load i32, i32* %343, align 4
  %345 = load i64, i64* @HISTOGRAM_LOGIC_CONTROL, align 8
  %346 = call i32 @PSB_WVDC32(i32 %344, i64 %345)
  %347 = load %struct.psb_save_area*, %struct.psb_save_area** %4, align 8
  %348 = getelementptr inbounds %struct.psb_save_area, %struct.psb_save_area* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %348, i32 0, i32 30
  %350 = load i32, i32* %349, align 8
  %351 = load i64, i64* @PWM_CONTROL_LOGIC, align 8
  %352 = call i32 @PSB_WVDC32(i32 %350, i64 %351)
  ret i32 0
}

declare dso_local i32 @PSB_WVDC32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @oaktrail_hdmi_restore(%struct.drm_device*) #1

declare dso_local i32 @PSB_RVDC32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
