; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_set_default_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_set_default_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_6__, %struct.smu_dpm_context }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.smu_dpm_context = type { i32, %struct.vega20_dpm_table* }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SMU_FEATURE_DPM_SOCCLK_BIT = common dso_local global i32 0, align 4
@PPCLK_SOCCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"[SetupDefaultDpmTable] failed to get socclk dpm levels!\00", align 1
@SMU_FEATURE_DPM_GFXCLK_BIT = common dso_local global i32 0, align 4
@PPCLK_GFXCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"[SetupDefaultDpmTable] failed to get gfxclk dpm levels!\00", align 1
@SMU_FEATURE_DPM_UCLK_BIT = common dso_local global i32 0, align 4
@PPCLK_UCLK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"[SetupDefaultDpmTable] failed to get memclk dpm levels!\00", align 1
@SMU_FEATURE_DPM_VCE_BIT = common dso_local global i32 0, align 4
@PPCLK_ECLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"[SetupDefaultDpmTable] failed to get eclk dpm levels!\00", align 1
@SMU_FEATURE_DPM_UVD_BIT = common dso_local global i32 0, align 4
@PPCLK_VCLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"[SetupDefaultDpmTable] failed to get vclk dpm levels!\00", align 1
@PPCLK_DCLK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"[SetupDefaultDpmTable] failed to get dclk dpm levels!\00", align 1
@SMU_FEATURE_DPM_DCEFCLK_BIT = common dso_local global i32 0, align 4
@PPCLK_DCEFCLK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"[SetupDefaultDpmTable] failed to get dcefclk dpm levels!\00", align 1
@PPCLK_PIXCLK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"[SetupDefaultDpmTable] failed to get pixclk dpm levels!\00", align 1
@PPCLK_DISPCLK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"[SetupDefaultDpmTable] failed to get dispclk dpm levels!\00", align 1
@PPCLK_PHYCLK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [56 x i8] c"[SetupDefaultDpmTable] failed to get phyclk dpm levels!\00", align 1
@FEATURE_DPM_FCLK_BIT = common dso_local global i32 0, align 4
@PPCLK_FCLK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"[SetupDefaultDpmTable] failed to get fclk dpm levels!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @vega20_set_default_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_set_default_dpm_table(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_dpm_context*, align 8
  %6 = alloca %struct.vega20_dpm_table*, align 8
  %7 = alloca %struct.vega20_single_dpm_table*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  %8 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 1
  store %struct.smu_dpm_context* %9, %struct.smu_dpm_context** %5, align 8
  store %struct.vega20_dpm_table* null, %struct.vega20_dpm_table** %6, align 8
  %10 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %5, align 8
  %11 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %10, i32 0, i32 1
  %12 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %11, align 8
  store %struct.vega20_dpm_table* %12, %struct.vega20_dpm_table** %6, align 8
  %13 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %14 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %13, i32 0, i32 10
  store %struct.vega20_single_dpm_table* %14, %struct.vega20_single_dpm_table** %7, align 8
  %15 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %16 = load i32, i32* @SMU_FEATURE_DPM_SOCCLK_BIT, align 4
  %17 = call i64 @smu_feature_is_enabled(%struct.smu_context* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %21 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %22 = load i32, i32* @PPCLK_SOCCLK, align 4
  %23 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %20, %struct.vega20_single_dpm_table* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %359

29:                                               ; preds = %19
  br label %44

30:                                               ; preds = %1
  %31 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %32 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %34 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %37, 100
  %39 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %40 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 4
  br label %44

44:                                               ; preds = %30, %29
  %45 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %46 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %45, i32 0, i32 1
  %47 = call i32 @vega20_init_single_dpm_state(i32* %46)
  %48 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %49 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %48, i32 0, i32 9
  store %struct.vega20_single_dpm_table* %49, %struct.vega20_single_dpm_table** %7, align 8
  %50 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %51 = load i32, i32* @SMU_FEATURE_DPM_GFXCLK_BIT, align 4
  %52 = call i64 @smu_feature_is_enabled(%struct.smu_context* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %56 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %57 = load i32, i32* @PPCLK_GFXCLK, align 4
  %58 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %55, %struct.vega20_single_dpm_table* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %359

64:                                               ; preds = %54
  br label %79

65:                                               ; preds = %44
  %66 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %67 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %69 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 100
  %74 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %75 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %73, i32* %78, align 4
  br label %79

79:                                               ; preds = %65, %64
  %80 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %81 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %80, i32 0, i32 1
  %82 = call i32 @vega20_init_single_dpm_state(i32* %81)
  %83 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %84 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %83, i32 0, i32 8
  store %struct.vega20_single_dpm_table* %84, %struct.vega20_single_dpm_table** %7, align 8
  %85 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %86 = load i32, i32* @SMU_FEATURE_DPM_UCLK_BIT, align 4
  %87 = call i64 @smu_feature_is_enabled(%struct.smu_context* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %79
  %90 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %91 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %92 = load i32, i32* @PPCLK_UCLK, align 4
  %93 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %90, %struct.vega20_single_dpm_table* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %359

99:                                               ; preds = %89
  br label %114

100:                                              ; preds = %79
  %101 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %102 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %104 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = sdiv i32 %107, 100
  %109 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %110 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %100, %99
  %115 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %116 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %115, i32 0, i32 1
  %117 = call i32 @vega20_init_single_dpm_state(i32* %116)
  %118 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %119 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %118, i32 0, i32 7
  store %struct.vega20_single_dpm_table* %119, %struct.vega20_single_dpm_table** %7, align 8
  %120 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %121 = load i32, i32* @SMU_FEATURE_DPM_VCE_BIT, align 4
  %122 = call i64 @smu_feature_is_enabled(%struct.smu_context* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %114
  %125 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %126 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %127 = load i32, i32* @PPCLK_ECLK, align 4
  %128 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %125, %struct.vega20_single_dpm_table* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %359

134:                                              ; preds = %124
  br label %149

135:                                              ; preds = %114
  %136 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %137 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %139 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %142, 100
  %144 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %145 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %144, i32 0, i32 2
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32 %143, i32* %148, align 4
  br label %149

149:                                              ; preds = %135, %134
  %150 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %151 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %150, i32 0, i32 1
  %152 = call i32 @vega20_init_single_dpm_state(i32* %151)
  %153 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %154 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %153, i32 0, i32 6
  store %struct.vega20_single_dpm_table* %154, %struct.vega20_single_dpm_table** %7, align 8
  %155 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %156 = load i32, i32* @SMU_FEATURE_DPM_UVD_BIT, align 4
  %157 = call i64 @smu_feature_is_enabled(%struct.smu_context* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %149
  %160 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %161 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %162 = load i32, i32* @PPCLK_VCLK, align 4
  %163 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %160, %struct.vega20_single_dpm_table* %161, i32 %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %168 = load i32, i32* %4, align 4
  store i32 %168, i32* %2, align 4
  br label %359

169:                                              ; preds = %159
  br label %184

170:                                              ; preds = %149
  %171 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %172 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %174 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = sdiv i32 %177, 100
  %179 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %180 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %179, i32 0, i32 2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i32 %178, i32* %183, align 4
  br label %184

184:                                              ; preds = %170, %169
  %185 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %186 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %185, i32 0, i32 1
  %187 = call i32 @vega20_init_single_dpm_state(i32* %186)
  %188 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %189 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %188, i32 0, i32 5
  store %struct.vega20_single_dpm_table* %189, %struct.vega20_single_dpm_table** %7, align 8
  %190 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %191 = load i32, i32* @SMU_FEATURE_DPM_UVD_BIT, align 4
  %192 = call i64 @smu_feature_is_enabled(%struct.smu_context* %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %184
  %195 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %196 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %197 = load i32, i32* @PPCLK_DCLK, align 4
  %198 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %195, %struct.vega20_single_dpm_table* %196, i32 %197)
  store i32 %198, i32* %4, align 4
  %199 = load i32, i32* %4, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  %202 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %203 = load i32, i32* %4, align 4
  store i32 %203, i32* %2, align 4
  br label %359

204:                                              ; preds = %194
  br label %219

205:                                              ; preds = %184
  %206 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %207 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  %208 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %209 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = sdiv i32 %212, 100
  %214 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %215 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %214, i32 0, i32 2
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  store i32 %213, i32* %218, align 4
  br label %219

219:                                              ; preds = %205, %204
  %220 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %221 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %220, i32 0, i32 1
  %222 = call i32 @vega20_init_single_dpm_state(i32* %221)
  %223 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %224 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %223, i32 0, i32 4
  store %struct.vega20_single_dpm_table* %224, %struct.vega20_single_dpm_table** %7, align 8
  %225 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %226 = load i32, i32* @SMU_FEATURE_DPM_DCEFCLK_BIT, align 4
  %227 = call i64 @smu_feature_is_enabled(%struct.smu_context* %225, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %219
  %230 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %231 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %232 = load i32, i32* @PPCLK_DCEFCLK, align 4
  %233 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %230, %struct.vega20_single_dpm_table* %231, i32 %232)
  store i32 %233, i32* %4, align 4
  %234 = load i32, i32* %4, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %229
  %237 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %238 = load i32, i32* %4, align 4
  store i32 %238, i32* %2, align 4
  br label %359

239:                                              ; preds = %229
  br label %254

240:                                              ; preds = %219
  %241 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %242 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %241, i32 0, i32 0
  store i32 1, i32* %242, align 8
  %243 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %244 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = sdiv i32 %247, 100
  %249 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %250 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %249, i32 0, i32 2
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i64 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  store i32 %248, i32* %253, align 4
  br label %254

254:                                              ; preds = %240, %239
  %255 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %256 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %255, i32 0, i32 1
  %257 = call i32 @vega20_init_single_dpm_state(i32* %256)
  %258 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %259 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %258, i32 0, i32 3
  store %struct.vega20_single_dpm_table* %259, %struct.vega20_single_dpm_table** %7, align 8
  %260 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %261 = load i32, i32* @SMU_FEATURE_DPM_DCEFCLK_BIT, align 4
  %262 = call i64 @smu_feature_is_enabled(%struct.smu_context* %260, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %254
  %265 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %266 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %267 = load i32, i32* @PPCLK_PIXCLK, align 4
  %268 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %265, %struct.vega20_single_dpm_table* %266, i32 %267)
  store i32 %268, i32* %4, align 4
  %269 = load i32, i32* %4, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %273 = load i32, i32* %4, align 4
  store i32 %273, i32* %2, align 4
  br label %359

274:                                              ; preds = %264
  br label %278

275:                                              ; preds = %254
  %276 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %277 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %276, i32 0, i32 0
  store i32 0, i32* %277, align 8
  br label %278

278:                                              ; preds = %275, %274
  %279 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %280 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %279, i32 0, i32 1
  %281 = call i32 @vega20_init_single_dpm_state(i32* %280)
  %282 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %283 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %282, i32 0, i32 2
  store %struct.vega20_single_dpm_table* %283, %struct.vega20_single_dpm_table** %7, align 8
  %284 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %285 = load i32, i32* @SMU_FEATURE_DPM_DCEFCLK_BIT, align 4
  %286 = call i64 @smu_feature_is_enabled(%struct.smu_context* %284, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %278
  %289 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %290 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %291 = load i32, i32* @PPCLK_DISPCLK, align 4
  %292 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %289, %struct.vega20_single_dpm_table* %290, i32 %291)
  store i32 %292, i32* %4, align 4
  %293 = load i32, i32* %4, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %288
  %296 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %297 = load i32, i32* %4, align 4
  store i32 %297, i32* %2, align 4
  br label %359

298:                                              ; preds = %288
  br label %302

299:                                              ; preds = %278
  %300 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %301 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %300, i32 0, i32 0
  store i32 0, i32* %301, align 8
  br label %302

302:                                              ; preds = %299, %298
  %303 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %304 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %303, i32 0, i32 1
  %305 = call i32 @vega20_init_single_dpm_state(i32* %304)
  %306 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %307 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %306, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %307, %struct.vega20_single_dpm_table** %7, align 8
  %308 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %309 = load i32, i32* @SMU_FEATURE_DPM_DCEFCLK_BIT, align 4
  %310 = call i64 @smu_feature_is_enabled(%struct.smu_context* %308, i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %302
  %313 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %314 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %315 = load i32, i32* @PPCLK_PHYCLK, align 4
  %316 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %313, %struct.vega20_single_dpm_table* %314, i32 %315)
  store i32 %316, i32* %4, align 4
  %317 = load i32, i32* %4, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %312
  %320 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0))
  %321 = load i32, i32* %4, align 4
  store i32 %321, i32* %2, align 4
  br label %359

322:                                              ; preds = %312
  br label %326

323:                                              ; preds = %302
  %324 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %325 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %324, i32 0, i32 0
  store i32 0, i32* %325, align 8
  br label %326

326:                                              ; preds = %323, %322
  %327 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %328 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %327, i32 0, i32 1
  %329 = call i32 @vega20_init_single_dpm_state(i32* %328)
  %330 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %331 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %330, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %331, %struct.vega20_single_dpm_table** %7, align 8
  %332 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %333 = load i32, i32* @FEATURE_DPM_FCLK_BIT, align 4
  %334 = call i64 @smu_feature_is_enabled(%struct.smu_context* %332, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %347

336:                                              ; preds = %326
  %337 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %338 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %339 = load i32, i32* @PPCLK_FCLK, align 4
  %340 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %337, %struct.vega20_single_dpm_table* %338, i32 %339)
  store i32 %340, i32* %4, align 4
  %341 = load i32, i32* %4, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %336
  %344 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0))
  %345 = load i32, i32* %4, align 4
  store i32 %345, i32* %2, align 4
  br label %359

346:                                              ; preds = %336
  br label %350

347:                                              ; preds = %326
  %348 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %349 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %348, i32 0, i32 0
  store i32 0, i32* %349, align 8
  br label %350

350:                                              ; preds = %347, %346
  %351 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %7, align 8
  %352 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %351, i32 0, i32 1
  %353 = call i32 @vega20_init_single_dpm_state(i32* %352)
  %354 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %5, align 8
  %355 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %6, align 8
  %358 = call i32 @memcpy(i32 %356, %struct.vega20_dpm_table* %357, i32 176)
  store i32 0, i32* %2, align 4
  br label %359

359:                                              ; preds = %350, %343, %319, %295, %271, %236, %201, %166, %131, %96, %61, %26
  %360 = load i32, i32* %2, align 4
  ret i32 %360
}

declare dso_local i64 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @vega20_set_single_dpm_table(%struct.smu_context*, %struct.vega20_single_dpm_table*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vega20_init_single_dpm_state(i32*) #1

declare dso_local i32 @memcpy(i32, %struct.vega20_dpm_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
