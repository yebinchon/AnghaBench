; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_dpm_force_dpm_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_dpm_force_dpm_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_6__*, %struct.smu10_hwmgr* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.smu10_hwmgr = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"smu firmware version too old, can not set dpm level\0A\00", align 1
@PPSMC_MSG_SetHardMinGfxClk = common dso_local global i32 0, align 4
@PPSMC_MSG_SetHardMinFclkByFreq = common dso_local global i32 0, align 4
@SMU10_UMD_PSTATE_PEAK_FCLK = common dso_local global i32 0, align 4
@PPSMC_MSG_SetHardMinSocclkByFreq = common dso_local global i32 0, align 4
@SMU10_UMD_PSTATE_PEAK_SOCCLK = common dso_local global i32 0, align 4
@PPSMC_MSG_SetHardMinVcn = common dso_local global i32 0, align 4
@SMU10_UMD_PSTATE_VCE = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSoftMaxGfxClk = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSoftMaxFclkByFreq = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSoftMaxSocclkByFreq = common dso_local global i32 0, align 4
@PPSMC_MSG_SetSoftMaxVcn = common dso_local global i32 0, align 4
@SMU10_UMD_PSTATE_GFXCLK = common dso_local global i32 0, align 4
@SMU10_UMD_PSTATE_FCLK = common dso_local global i32 0, align 4
@SMU10_UMD_PSTATE_SOCCLK = common dso_local global i32 0, align 4
@SMU10_UMD_PSTATE_MIN_SOCCLK = common dso_local global i32 0, align 4
@SMU10_UMD_PSTATE_MIN_VCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32)* @smu10_dpm_force_dpm_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_dpm_force_dpm_level(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu10_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 2
  %11 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %10, align 8
  store %struct.smu10_hwmgr* %11, %struct.smu10_hwmgr** %6, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 100
  store i32 %22, i32* %8, align 4
  %23 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %24 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 1980160
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %224

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %6, align 8
  %32 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %6, align 8
  %37 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %7, align 4
  %41 = sdiv i32 %40, 100
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %6, align 8
  %44 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %42, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %6, align 8
  %53 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %51, %39
  %60 = load i32, i32* %5, align 4
  switch i32 %60, label %222 [
    i32 135, label %61
    i32 129, label %61
    i32 130, label %100
    i32 131, label %109
    i32 128, label %118
    i32 136, label %151
    i32 134, label %198
    i32 133, label %221
    i32 132, label %221
  ]

61:                                               ; preds = %59, %59
  %62 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %63 = load i32, i32* @PPSMC_MSG_SetHardMinGfxClk, align 4
  %64 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %6, align 8
  %65 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 100
  %68 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %62, i32 %63, i32 %67)
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %70 = load i32, i32* @PPSMC_MSG_SetHardMinFclkByFreq, align 4
  %71 = load i32, i32* @SMU10_UMD_PSTATE_PEAK_FCLK, align 4
  %72 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %69, i32 %70, i32 %71)
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %74 = load i32, i32* @PPSMC_MSG_SetHardMinSocclkByFreq, align 4
  %75 = load i32, i32* @SMU10_UMD_PSTATE_PEAK_SOCCLK, align 4
  %76 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %73, i32 %74, i32 %75)
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %78 = load i32, i32* @PPSMC_MSG_SetHardMinVcn, align 4
  %79 = load i32, i32* @SMU10_UMD_PSTATE_VCE, align 4
  %80 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %77, i32 %78, i32 %79)
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %82 = load i32, i32* @PPSMC_MSG_SetSoftMaxGfxClk, align 4
  %83 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %6, align 8
  %84 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %85, 100
  %87 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %81, i32 %82, i32 %86)
  %88 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %89 = load i32, i32* @PPSMC_MSG_SetSoftMaxFclkByFreq, align 4
  %90 = load i32, i32* @SMU10_UMD_PSTATE_PEAK_FCLK, align 4
  %91 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %88, i32 %89, i32 %90)
  %92 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %93 = load i32, i32* @PPSMC_MSG_SetSoftMaxSocclkByFreq, align 4
  %94 = load i32, i32* @SMU10_UMD_PSTATE_PEAK_SOCCLK, align 4
  %95 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %92, i32 %93, i32 %94)
  %96 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %97 = load i32, i32* @PPSMC_MSG_SetSoftMaxVcn, align 4
  %98 = load i32, i32* @SMU10_UMD_PSTATE_VCE, align 4
  %99 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %96, i32 %97, i32 %98)
  br label %223

100:                                              ; preds = %59
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %102 = load i32, i32* @PPSMC_MSG_SetHardMinGfxClk, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %101, i32 %102, i32 %103)
  %105 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %106 = load i32, i32* @PPSMC_MSG_SetSoftMaxGfxClk, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %105, i32 %106, i32 %107)
  br label %223

109:                                              ; preds = %59
  %110 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %111 = load i32, i32* @PPSMC_MSG_SetHardMinFclkByFreq, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %110, i32 %111, i32 %112)
  %114 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %115 = load i32, i32* @PPSMC_MSG_SetSoftMaxFclkByFreq, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %114, i32 %115, i32 %116)
  br label %223

118:                                              ; preds = %59
  %119 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %120 = load i32, i32* @PPSMC_MSG_SetHardMinGfxClk, align 4
  %121 = load i32, i32* @SMU10_UMD_PSTATE_GFXCLK, align 4
  %122 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %119, i32 %120, i32 %121)
  %123 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %124 = load i32, i32* @PPSMC_MSG_SetHardMinFclkByFreq, align 4
  %125 = load i32, i32* @SMU10_UMD_PSTATE_FCLK, align 4
  %126 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %123, i32 %124, i32 %125)
  %127 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %128 = load i32, i32* @PPSMC_MSG_SetHardMinSocclkByFreq, align 4
  %129 = load i32, i32* @SMU10_UMD_PSTATE_SOCCLK, align 4
  %130 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %127, i32 %128, i32 %129)
  %131 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %132 = load i32, i32* @PPSMC_MSG_SetHardMinVcn, align 4
  %133 = load i32, i32* @SMU10_UMD_PSTATE_VCE, align 4
  %134 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %131, i32 %132, i32 %133)
  %135 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %136 = load i32, i32* @PPSMC_MSG_SetSoftMaxGfxClk, align 4
  %137 = load i32, i32* @SMU10_UMD_PSTATE_GFXCLK, align 4
  %138 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %135, i32 %136, i32 %137)
  %139 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %140 = load i32, i32* @PPSMC_MSG_SetSoftMaxFclkByFreq, align 4
  %141 = load i32, i32* @SMU10_UMD_PSTATE_FCLK, align 4
  %142 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %139, i32 %140, i32 %141)
  %143 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %144 = load i32, i32* @PPSMC_MSG_SetSoftMaxSocclkByFreq, align 4
  %145 = load i32, i32* @SMU10_UMD_PSTATE_SOCCLK, align 4
  %146 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %143, i32 %144, i32 %145)
  %147 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %148 = load i32, i32* @PPSMC_MSG_SetSoftMaxVcn, align 4
  %149 = load i32, i32* @SMU10_UMD_PSTATE_VCE, align 4
  %150 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %147, i32 %148, i32 %149)
  br label %223

151:                                              ; preds = %59
  %152 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %153 = load i32, i32* @PPSMC_MSG_SetHardMinGfxClk, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %152, i32 %153, i32 %154)
  %156 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %157 = load i32, i32* @PPSMC_MSG_SetHardMinFclkByFreq, align 4
  %158 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %159 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %162, 3
  br i1 %163, label %164, label %166

164:                                              ; preds = %151
  %165 = load i32, i32* @SMU10_UMD_PSTATE_PEAK_FCLK, align 4
  br label %168

166:                                              ; preds = %151
  %167 = load i32, i32* %8, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %156, i32 %157, i32 %169)
  %171 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %172 = load i32, i32* @PPSMC_MSG_SetHardMinSocclkByFreq, align 4
  %173 = load i32, i32* @SMU10_UMD_PSTATE_MIN_SOCCLK, align 4
  %174 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %171, i32 %172, i32 %173)
  %175 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %176 = load i32, i32* @PPSMC_MSG_SetHardMinVcn, align 4
  %177 = load i32, i32* @SMU10_UMD_PSTATE_MIN_VCE, align 4
  %178 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %175, i32 %176, i32 %177)
  %179 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %180 = load i32, i32* @PPSMC_MSG_SetSoftMaxGfxClk, align 4
  %181 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %6, align 8
  %182 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sdiv i32 %183, 100
  %185 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %179, i32 %180, i32 %184)
  %186 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %187 = load i32, i32* @PPSMC_MSG_SetSoftMaxFclkByFreq, align 4
  %188 = load i32, i32* @SMU10_UMD_PSTATE_PEAK_FCLK, align 4
  %189 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %186, i32 %187, i32 %188)
  %190 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %191 = load i32, i32* @PPSMC_MSG_SetSoftMaxSocclkByFreq, align 4
  %192 = load i32, i32* @SMU10_UMD_PSTATE_PEAK_SOCCLK, align 4
  %193 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %190, i32 %191, i32 %192)
  %194 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %195 = load i32, i32* @PPSMC_MSG_SetSoftMaxVcn, align 4
  %196 = load i32, i32* @SMU10_UMD_PSTATE_VCE, align 4
  %197 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %194, i32 %195, i32 %196)
  br label %223

198:                                              ; preds = %59
  %199 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %200 = load i32, i32* @PPSMC_MSG_SetHardMinGfxClk, align 4
  %201 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %6, align 8
  %202 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sdiv i32 %203, 100
  %205 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %199, i32 %200, i32 %204)
  %206 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %207 = load i32, i32* @PPSMC_MSG_SetSoftMaxGfxClk, align 4
  %208 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %6, align 8
  %209 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sdiv i32 %210, 100
  %212 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %206, i32 %207, i32 %211)
  %213 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %214 = load i32, i32* @PPSMC_MSG_SetHardMinFclkByFreq, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %213, i32 %214, i32 %215)
  %217 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %218 = load i32, i32* @PPSMC_MSG_SetSoftMaxFclkByFreq, align 4
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %217, i32 %218, i32 %219)
  br label %223

221:                                              ; preds = %59, %59
  br label %222

222:                                              ; preds = %59, %221
  br label %223

223:                                              ; preds = %222, %198, %168, %118, %109, %100, %61
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %27
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
