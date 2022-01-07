; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_odn_edit_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_odn_edit_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32, %struct.smu_table_context, i64, %struct.smu_dpm_context }
%struct.smu_table_context = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.smu_dpm_context = type { i32, %struct.vega20_dpm_table* }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vega20_od8_settings = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.pp_clock_levels_with_latency = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"NULL user input for clock and voltage\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OD8_SETTING_GFXCLK_FMIN = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FMAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Sclk min/max frequency overdrive not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid number of input parameters %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid index %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Support min/max sclk frequency settingonly which index by 0/1\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"clock freq %d is not within allowed range [%d - %d]\0A\00", align 1
@OD8_SETTING_UCLK_FMAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"Mclk max frequency overdrive not supported\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Attempt to get memory clk levels Failed!\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Support max Mclk frequency setting only which index by 1\0A\00", align 1
@OD8_SETTING_GFXCLK_FREQ1 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FREQ2 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FREQ3 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_VOLTAGE1 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_VOLTAGE2 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_VOLTAGE3 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"Voltage curve calibrate not supported\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Setting for point %d is not supported\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Three supported points index by 0, 1, 2\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"clock voltage %d is not within allowed range [%d- %d]\0A\00", align 1
@VOLTAGE_SCALE = common dso_local global i32 0, align 4
@SMU_TABLE_OVERDRIVE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [36 x i8] c"Failed to export over drive table!\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Failed to import over drive table!\0A\00", align 1
@SMU_FEATURE_DPM_GFXCLK_BIT = common dso_local global i32 0, align 4
@PPCLK_GFXCLK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"[Setoverdrive] failed to refresh dpm table!\0A\00", align 1
@AMD_PP_TASK_READJUST_POWER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i64*, i32)* @vega20_odn_edit_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_odn_edit_dpm_table(%struct.smu_context* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smu_table_context*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.smu_dpm_context*, align 8
  %13 = alloca %struct.vega20_dpm_table*, align 8
  %14 = alloca %struct.vega20_single_dpm_table*, align 8
  %15 = alloca %struct.vega20_od8_settings*, align 8
  %16 = alloca %struct.pp_clock_levels_with_latency, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %24 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %23, i32 0, i32 1
  store %struct.smu_table_context* %24, %struct.smu_table_context** %10, align 8
  %25 = load %struct.smu_table_context*, %struct.smu_table_context** %10, align 8
  %26 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %11, align 8
  %29 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %30 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %29, i32 0, i32 3
  store %struct.smu_dpm_context* %30, %struct.smu_dpm_context** %12, align 8
  store %struct.vega20_dpm_table* null, %struct.vega20_dpm_table** %13, align 8
  %31 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %32 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.vega20_od8_settings*
  store %struct.vega20_od8_settings* %34, %struct.vega20_od8_settings** %15, align 8
  store i32 0, i32* %22, align 4
  %35 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %12, align 8
  %36 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %35, i32 0, i32 1
  %37 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %36, align 8
  store %struct.vega20_dpm_table* %37, %struct.vega20_dpm_table** %13, align 8
  %38 = load i64*, i64** %8, align 8
  %39 = icmp ne i64* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %4
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %623

44:                                               ; preds = %4
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %602 [
    i32 130, label %46
    i32 131, label %183
    i32 129, label %301
    i32 128, label %536
    i32 132, label %549
  ]

46:                                               ; preds = %44
  %47 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %48 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i64, i64* @OD8_SETTING_GFXCLK_FMIN, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %57 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load i64, i64* @OD8_SETTING_GFXCLK_FMAX, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %55, %46
  %65 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %623

68:                                               ; preds = %55
  store i32 0, i32* %20, align 4
  br label %69

69:                                               ; preds = %179, %68
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %182

73:                                               ; preds = %69
  %74 = load i32, i32* %20, align 4
  %75 = add nsw i32 %74, 2
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %623

83:                                               ; preds = %73
  %84 = load i64*, i64** %8, align 8
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %17, align 4
  %90 = load i64*, i64** %8, align 8
  %91 = load i32, i32* %20, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %83
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i32, i32* %17, align 4
  %104 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %623

108:                                              ; preds = %99, %83
  %109 = load i32, i32* %18, align 4
  %110 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %111 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i64, i64* @OD8_SETTING_GFXCLK_FMIN, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %109, %116
  br i1 %117, label %128, label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %18, align 4
  %120 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %121 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %120, i32 0, i32 1
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load i64, i64* @OD8_SETTING_GFXCLK_FMAX, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %119, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %118, %108
  %129 = load i32, i32* %18, align 4
  %130 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %131 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i64, i64* @OD8_SETTING_GFXCLK_FMIN, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %138 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load i64, i64* @OD8_SETTING_GFXCLK_FMAX, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %129, i32 %136, i32 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %623

147:                                              ; preds = %118
  %148 = load i32, i32* %17, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, i32* %18, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %161 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  br label %178

162:                                              ; preds = %150, %147
  %163 = load i32, i32* %17, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %177

165:                                              ; preds = %162
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %18, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = load i32, i32* %18, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %176 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  br label %177

177:                                              ; preds = %171, %165, %162
  br label %178

178:                                              ; preds = %177, %156
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %20, align 4
  %181 = add nsw i32 %180, 2
  store i32 %181, i32* %20, align 4
  br label %69

182:                                              ; preds = %69
  br label %605

183:                                              ; preds = %44
  %184 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %185 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %184, i32 0, i32 1
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %183
  %193 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %194 = load i32, i32* @EOPNOTSUPP, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %5, align 4
  br label %623

196:                                              ; preds = %183
  %197 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %13, align 8
  %198 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %197, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %198, %struct.vega20_single_dpm_table** %14, align 8
  %199 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %200 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %14, align 8
  %201 = call i32 @vega20_get_clk_table(%struct.smu_context* %199, %struct.pp_clock_levels_with_latency* %16, %struct.vega20_single_dpm_table* %200)
  store i32 %201, i32* %22, align 4
  %202 = load i32, i32* %22, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %206 = load i32, i32* %22, align 4
  store i32 %206, i32* %5, align 4
  br label %623

207:                                              ; preds = %196
  store i32 0, i32* %20, align 4
  br label %208

208:                                              ; preds = %297, %207
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %300

212:                                              ; preds = %208
  %213 = load i32, i32* %20, align 4
  %214 = add nsw i32 %213, 2
  %215 = load i32, i32* %9, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load i32, i32* %9, align 4
  %219 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %5, align 4
  br label %623

222:                                              ; preds = %212
  %223 = load i64*, i64** %8, align 8
  %224 = load i32, i32* %20, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %17, align 4
  %229 = load i64*, i64** %8, align 8
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %229, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %18, align 4
  %236 = load i32, i32* %17, align 4
  %237 = icmp ne i32 %236, 1
  br i1 %237, label %238, label %244

238:                                              ; preds = %222
  %239 = load i32, i32* %17, align 4
  %240 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %239)
  %241 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %242 = load i32, i32* @EINVAL, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %5, align 4
  br label %623

244:                                              ; preds = %222
  %245 = load i32, i32* %18, align 4
  %246 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %16, i32 0, i32 0
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 0
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sdiv i32 %250, 1000
  %252 = icmp slt i32 %245, %251
  br i1 %252, label %263, label %253

253:                                              ; preds = %244
  %254 = load i32, i32* %18, align 4
  %255 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %256 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %255, i32 0, i32 1
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp sgt i32 %254, %261
  br i1 %262, label %263, label %281

263:                                              ; preds = %253, %244
  %264 = load i32, i32* %18, align 4
  %265 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %16, i32 0, i32 0
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = sdiv i32 %269, 1000
  %271 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %272 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %271, i32 0, i32 1
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %272, align 8
  %274 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %264, i32 %270, i32 %277)
  %279 = load i32, i32* @EINVAL, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %5, align 4
  br label %623

281:                                              ; preds = %253
  %282 = load i32, i32* %17, align 4
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %296

284:                                              ; preds = %281
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %18, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %284
  %291 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %292 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %291, i32 0, i32 0
  store i32 1, i32* %292, align 8
  %293 = load i32, i32* %18, align 4
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 4
  br label %296

296:                                              ; preds = %290, %284, %281
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %20, align 4
  %299 = add nsw i32 %298, 2
  store i32 %299, i32* %20, align 4
  br label %208

300:                                              ; preds = %208
  br label %605

301:                                              ; preds = %44
  %302 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %303 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %302, i32 0, i32 1
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %303, align 8
  %305 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ1, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %355

310:                                              ; preds = %301
  %311 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %312 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %311, i32 0, i32 1
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %312, align 8
  %314 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ2, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %355

319:                                              ; preds = %310
  %320 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %321 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %320, i32 0, i32 1
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %321, align 8
  %323 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ3, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %355

328:                                              ; preds = %319
  %329 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %330 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %329, i32 0, i32 1
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %330, align 8
  %332 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE1, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %355

337:                                              ; preds = %328
  %338 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %339 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %338, i32 0, i32 1
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %339, align 8
  %341 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE2, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %355

346:                                              ; preds = %337
  %347 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %348 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %347, i32 0, i32 1
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %348, align 8
  %350 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE3, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %359, label %355

355:                                              ; preds = %346, %337, %328, %319, %310, %301
  %356 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %357 = load i32, i32* @EOPNOTSUPP, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %5, align 4
  br label %623

359:                                              ; preds = %346
  store i32 0, i32* %20, align 4
  br label %360

360:                                              ; preds = %532, %359
  %361 = load i32, i32* %20, align 4
  %362 = load i32, i32* %9, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %535

364:                                              ; preds = %360
  %365 = load i32, i32* %20, align 4
  %366 = add nsw i32 %365, 3
  %367 = load i32, i32* %9, align 4
  %368 = icmp sgt i32 %366, %367
  br i1 %368, label %369, label %374

369:                                              ; preds = %364
  %370 = load i32, i32* %9, align 4
  %371 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* @EINVAL, align 4
  %373 = sub nsw i32 0, %372
  store i32 %373, i32* %5, align 4
  br label %623

374:                                              ; preds = %364
  %375 = load i64*, i64** %8, align 8
  %376 = load i32, i32* %20, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %375, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = trunc i64 %379 to i32
  store i32 %380, i32* %17, align 4
  %381 = load i64*, i64** %8, align 8
  %382 = load i32, i32* %20, align 4
  %383 = add nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i64, i64* %381, i64 %384
  %386 = load i64, i64* %385, align 8
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %18, align 4
  %388 = load i64*, i64** %8, align 8
  %389 = load i32, i32* %20, align 4
  %390 = add nsw i32 %389, 2
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i64, i64* %388, i64 %391
  %393 = load i64, i64* %392, align 8
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %19, align 4
  %395 = load i32, i32* %17, align 4
  %396 = icmp sgt i32 %395, 2
  br i1 %396, label %397, label %404

397:                                              ; preds = %374
  %398 = load i32, i32* %17, align 4
  %399 = add nsw i32 %398, 1
  %400 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %399)
  %401 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %402 = load i32, i32* @EINVAL, align 4
  %403 = sub nsw i32 0, %402
  store i32 %403, i32* %5, align 4
  br label %623

404:                                              ; preds = %374
  %405 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ1, align 8
  %406 = load i32, i32* %17, align 4
  %407 = mul nsw i32 2, %406
  %408 = sext i32 %407 to i64
  %409 = add i64 %405, %408
  %410 = trunc i64 %409 to i32
  store i32 %410, i32* %21, align 4
  %411 = load i32, i32* %18, align 4
  %412 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %413 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %412, i32 0, i32 1
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %413, align 8
  %415 = load i32, i32* %21, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = icmp slt i32 %411, %419
  br i1 %420, label %432, label %421

421:                                              ; preds = %404
  %422 = load i32, i32* %18, align 4
  %423 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %424 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %423, i32 0, i32 1
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %424, align 8
  %426 = load i32, i32* %21, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = icmp sgt i32 %422, %430
  br i1 %431, label %432, label %453

432:                                              ; preds = %421, %404
  %433 = load i32, i32* %18, align 4
  %434 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %435 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %434, i32 0, i32 1
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %435, align 8
  %437 = load i32, i32* %21, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %443 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %442, i32 0, i32 1
  %444 = load %struct.TYPE_9__*, %struct.TYPE_9__** %443, align 8
  %445 = load i32, i32* %21, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %444, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %433, i32 %441, i32 %449)
  %451 = load i32, i32* @EINVAL, align 4
  %452 = sub nsw i32 0, %451
  store i32 %452, i32* %5, align 4
  br label %623

453:                                              ; preds = %421
  %454 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE1, align 8
  %455 = load i32, i32* %17, align 4
  %456 = mul nsw i32 2, %455
  %457 = sext i32 %456 to i64
  %458 = add i64 %454, %457
  %459 = trunc i64 %458 to i32
  store i32 %459, i32* %21, align 4
  %460 = load i32, i32* %19, align 4
  %461 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %462 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %461, i32 0, i32 1
  %463 = load %struct.TYPE_9__*, %struct.TYPE_9__** %462, align 8
  %464 = load i32, i32* %21, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = icmp slt i32 %460, %468
  br i1 %469, label %481, label %470

470:                                              ; preds = %453
  %471 = load i32, i32* %19, align 4
  %472 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %473 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %472, i32 0, i32 1
  %474 = load %struct.TYPE_9__*, %struct.TYPE_9__** %473, align 8
  %475 = load i32, i32* %21, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 4
  %480 = icmp sgt i32 %471, %479
  br i1 %480, label %481, label %502

481:                                              ; preds = %470, %453
  %482 = load i32, i32* %19, align 4
  %483 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %484 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %483, i32 0, i32 1
  %485 = load %struct.TYPE_9__*, %struct.TYPE_9__** %484, align 8
  %486 = load i32, i32* %21, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %492 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %491, i32 0, i32 1
  %493 = load %struct.TYPE_9__*, %struct.TYPE_9__** %492, align 8
  %494 = load i32, i32* %21, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 4
  %499 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %482, i32 %490, i32 %498)
  %500 = load i32, i32* @EINVAL, align 4
  %501 = sub nsw i32 0, %500
  store i32 %501, i32* %5, align 4
  br label %623

502:                                              ; preds = %470
  %503 = load i32, i32* %17, align 4
  switch i32 %503, label %531 [
    i32 0, label %504
    i32 1, label %513
    i32 2, label %522
  ]

504:                                              ; preds = %502
  %505 = load i32, i32* %18, align 4
  %506 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %507 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %506, i32 0, i32 3
  store i32 %505, i32* %507, align 4
  %508 = load i32, i32* %19, align 4
  %509 = load i32, i32* @VOLTAGE_SCALE, align 4
  %510 = mul nsw i32 %508, %509
  %511 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %512 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %511, i32 0, i32 4
  store i32 %510, i32* %512, align 4
  br label %531

513:                                              ; preds = %502
  %514 = load i32, i32* %18, align 4
  %515 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %516 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %515, i32 0, i32 5
  store i32 %514, i32* %516, align 4
  %517 = load i32, i32* %19, align 4
  %518 = load i32, i32* @VOLTAGE_SCALE, align 4
  %519 = mul nsw i32 %517, %518
  %520 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i32 0, i32 6
  store i32 %519, i32* %521, align 4
  br label %531

522:                                              ; preds = %502
  %523 = load i32, i32* %18, align 4
  %524 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 7
  store i32 %523, i32* %525, align 4
  %526 = load i32, i32* %19, align 4
  %527 = load i32, i32* @VOLTAGE_SCALE, align 4
  %528 = mul nsw i32 %526, %527
  %529 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %529, i32 0, i32 8
  store i32 %528, i32* %530, align 4
  br label %531

531:                                              ; preds = %502, %522, %513, %504
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %20, align 4
  %534 = add nsw i32 %533, 3
  store i32 %534, i32* %20, align 4
  br label %360

535:                                              ; preds = %360
  br label %605

536:                                              ; preds = %44
  %537 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %538 = load i32, i32* @SMU_TABLE_OVERDRIVE, align 4
  %539 = load %struct.smu_table_context*, %struct.smu_table_context** %10, align 8
  %540 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %539, i32 0, i32 1
  %541 = load i64, i64* %540, align 8
  %542 = call i32 @smu_update_table(%struct.smu_context* %537, i32 %538, i32 0, i64 %541, i32 0)
  store i32 %542, i32* %22, align 4
  %543 = load i32, i32* %22, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %548

545:                                              ; preds = %536
  %546 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  %547 = load i32, i32* %22, align 4
  store i32 %547, i32* %5, align 4
  br label %623

548:                                              ; preds = %536
  br label %605

549:                                              ; preds = %44
  %550 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %551 = load i32, i32* @SMU_TABLE_OVERDRIVE, align 4
  %552 = load %struct.smu_table_context*, %struct.smu_table_context** %10, align 8
  %553 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %552, i32 0, i32 1
  %554 = load i64, i64* %553, align 8
  %555 = call i32 @smu_update_table(%struct.smu_context* %550, i32 %551, i32 0, i64 %554, i32 1)
  store i32 %555, i32* %22, align 4
  %556 = load i32, i32* %22, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %561

558:                                              ; preds = %549
  %559 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %560 = load i32, i32* %22, align 4
  store i32 %560, i32* %5, align 4
  br label %623

561:                                              ; preds = %549
  %562 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %563 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %601

566:                                              ; preds = %561
  %567 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %15, align 8
  %568 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %567, i32 0, i32 0
  store i32 0, i32* %568, align 8
  %569 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %13, align 8
  %570 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %569, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %570, %struct.vega20_single_dpm_table** %14, align 8
  %571 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %572 = load i32, i32* @SMU_FEATURE_DPM_GFXCLK_BIT, align 4
  %573 = call i32 @smu_feature_is_enabled(%struct.smu_context* %571, i32 %572)
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %586

575:                                              ; preds = %566
  %576 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %577 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %14, align 8
  %578 = load i32, i32* @PPCLK_GFXCLK, align 4
  %579 = call i32 @vega20_set_single_dpm_table(%struct.smu_context* %576, %struct.vega20_single_dpm_table* %577, i32 %578)
  store i32 %579, i32* %22, align 4
  %580 = load i32, i32* %22, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %585

582:                                              ; preds = %575
  %583 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0))
  %584 = load i32, i32* %22, align 4
  store i32 %584, i32* %5, align 4
  br label %623

585:                                              ; preds = %575
  br label %600

586:                                              ; preds = %566
  %587 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %14, align 8
  %588 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %587, i32 0, i32 0
  store i32 1, i32* %588, align 8
  %589 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %590 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %589, i32 0, i32 1
  %591 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = sdiv i32 %593, 100
  %595 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %14, align 8
  %596 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %595, i32 0, i32 1
  %597 = load %struct.TYPE_7__*, %struct.TYPE_7__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %597, i64 0
  %599 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %598, i32 0, i32 0
  store i32 %594, i32* %599, align 4
  br label %600

600:                                              ; preds = %586, %585
  br label %601

601:                                              ; preds = %600, %561
  br label %605

602:                                              ; preds = %44
  %603 = load i32, i32* @EINVAL, align 4
  %604 = sub nsw i32 0, %603
  store i32 %604, i32* %5, align 4
  br label %623

605:                                              ; preds = %601, %548, %535, %300, %182
  %606 = load i32, i32* %7, align 4
  %607 = icmp eq i32 %606, 132
  br i1 %607, label %608, label %621

608:                                              ; preds = %605
  %609 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %610 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %609, i32 0, i32 0
  %611 = call i32 @mutex_lock(i32* %610)
  %612 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %613 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %12, align 8
  %614 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  %616 = load i32, i32* @AMD_PP_TASK_READJUST_POWER_STATE, align 4
  %617 = call i32 @smu_handle_task(%struct.smu_context* %612, i32 %615, i32 %616)
  store i32 %617, i32* %22, align 4
  %618 = load %struct.smu_context*, %struct.smu_context** %6, align 8
  %619 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %618, i32 0, i32 0
  %620 = call i32 @mutex_unlock(i32* %619)
  br label %621

621:                                              ; preds = %608, %605
  %622 = load i32, i32* %22, align 4
  store i32 %622, i32* %5, align 4
  br label %623

623:                                              ; preds = %621, %602, %582, %558, %545, %481, %432, %397, %369, %355, %263, %238, %217, %204, %192, %128, %102, %78, %64, %40
  %624 = load i32, i32* %5, align 4
  ret i32 %624
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @vega20_get_clk_table(%struct.smu_context*, %struct.pp_clock_levels_with_latency*, %struct.vega20_single_dpm_table*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smu_update_table(%struct.smu_context*, i32, i32, i64, i32) #1

declare dso_local i32 @smu_feature_is_enabled(%struct.smu_context*, i32) #1

declare dso_local i32 @vega20_set_single_dpm_table(%struct.smu_context*, %struct.vega20_single_dpm_table*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smu_handle_task(%struct.smu_context*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
