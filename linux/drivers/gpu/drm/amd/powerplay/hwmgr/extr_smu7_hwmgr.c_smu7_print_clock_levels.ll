; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_print_clock_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_print_clock_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_19__, i32, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.smu7_hwmgr = type { %struct.smu7_odn_dpm_table, %struct.TYPE_17__, %struct.TYPE_20__ }
%struct.smu7_odn_dpm_table = type { i32, i32, %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels }
%struct.phm_odn_clock_levels = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_20__ = type { %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table }
%struct.smu7_single_dpm_table = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@PPSMC_MSG_API_GetSclkFrequency = common dso_local global i32 0, align 4
@mmSMC_MSG_ARG_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%d: %uMhz %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PPSMC_MSG_API_GetMclkFrequency = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"%d: %s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"2.5GT/s, x8\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"5.0GT/s, x16\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"8.0GT/s, x16\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"OD_SCLK\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%d: %10uMHz %10umV\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"OD_MCLK\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"OD_RANGE\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"SCLK: %7uMHz %10uMHz\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"MCLK: %7uMHz %10uMHz\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"VDDC: %7umV %11umV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i8*)* @smu7_print_clock_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_print_clock_levels(%struct.pp_hwmgr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.smu7_hwmgr*, align 8
  %8 = alloca %struct.smu7_single_dpm_table*, align 8
  %9 = alloca %struct.smu7_single_dpm_table*, align 8
  %10 = alloca %struct.smu7_single_dpm_table*, align 8
  %11 = alloca %struct.smu7_odn_dpm_table*, align 8
  %12 = alloca %struct.phm_odn_clock_levels*, align 8
  %13 = alloca %struct.phm_odn_clock_levels*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %22, %struct.smu7_hwmgr** %7, align 8
  %23 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %24 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  store %struct.smu7_single_dpm_table* %25, %struct.smu7_single_dpm_table** %8, align 8
  %26 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %27 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  store %struct.smu7_single_dpm_table* %28, %struct.smu7_single_dpm_table** %9, align 8
  %29 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %30 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  store %struct.smu7_single_dpm_table* %31, %struct.smu7_single_dpm_table** %10, align 8
  %32 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %33 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %32, i32 0, i32 0
  store %struct.smu7_odn_dpm_table* %33, %struct.smu7_odn_dpm_table** %11, align 8
  %34 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %11, align 8
  %35 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %34, i32 0, i32 3
  store %struct.phm_odn_clock_levels* %35, %struct.phm_odn_clock_levels** %12, align 8
  %36 = load %struct.smu7_odn_dpm_table*, %struct.smu7_odn_dpm_table** %11, align 8
  %37 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %36, i32 0, i32 2
  store %struct.phm_odn_clock_levels* %37, %struct.phm_odn_clock_levels** %13, align 8
  store i32 0, i32* %16, align 4
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %417 [
    i32 128, label %39
    i32 130, label %105
    i32 129, label %171
    i32 131, label %259
    i32 133, label %304
    i32 132, label %349
  ]

39:                                               ; preds = %3
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %41 = load i32, i32* @PPSMC_MSG_API_GetSclkFrequency, align 4
  %42 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %40, i32 %41)
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %44 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @mmSMC_MSG_ARG_0, align 4
  %47 = call i32 @cgs_read_register(i32 %45, i32 %46)
  store i32 %47, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %67, %39
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %51 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load i32, i32* %17, align 4
  %56 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %57 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %55, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %67

66:                                               ; preds = %54
  br label %70

67:                                               ; preds = %65
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %48

70:                                               ; preds = %66, %48
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %101, %70
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %75 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %72
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %85 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 100
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %92, i8* %97)
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %78
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %72

104:                                              ; preds = %72
  br label %418

105:                                              ; preds = %3
  %106 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %107 = load i32, i32* @PPSMC_MSG_API_GetMclkFrequency, align 4
  %108 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %106, i32 %107)
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %110 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @mmSMC_MSG_ARG_0, align 4
  %113 = call i32 @cgs_read_register(i32 %111, i32 %112)
  store i32 %113, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %133, %105
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %9, align 8
  %117 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %114
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %9, align 8
  %123 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %122, i32 0, i32 1
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %121, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %120
  br label %133

132:                                              ; preds = %120
  br label %136

133:                                              ; preds = %131
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %114

136:                                              ; preds = %132, %114
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %167, %136
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %9, align 8
  %141 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %170

144:                                              ; preds = %138
  %145 = load i8*, i8** %6, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %9, align 8
  %151 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %150, i32 0, i32 1
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sdiv i32 %157, 100
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %164 = call i32 (i8*, i8*, ...) @sprintf(i8* %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %158, i8* %163)
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %16, align 4
  br label %167

167:                                              ; preds = %144
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %138

170:                                              ; preds = %138
  br label %418

171:                                              ; preds = %3
  %172 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %173 = call i32 @smu7_get_current_pcie_speed(%struct.pp_hwmgr* %172)
  store i32 %173, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %174

174:                                              ; preds = %193, %171
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %177 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %196

180:                                              ; preds = %174
  %181 = load i32, i32* %18, align 4
  %182 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %183 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %182, i32 0, i32 1
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %181, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  br label %193

192:                                              ; preds = %180
  br label %196

193:                                              ; preds = %191
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %14, align 4
  br label %174

196:                                              ; preds = %192, %174
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %198

198:                                              ; preds = %255, %196
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %201 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %258

204:                                              ; preds = %198
  %205 = load i8*, i8** %6, align 8
  %206 = load i32, i32* %16, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i32, i32* %14, align 4
  %210 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %211 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %210, i32 0, i32 1
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %204
  br label %245

220:                                              ; preds = %204
  %221 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %222 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %221, i32 0, i32 1
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  br label %243

231:                                              ; preds = %220
  %232 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %10, align 8
  %233 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %232, i32 0, i32 1
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = load i32, i32* %14, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  br label %243

243:                                              ; preds = %231, %230
  %244 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %230 ], [ %242, %231 ]
  br label %245

245:                                              ; preds = %243, %219
  %246 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %219 ], [ %244, %243 ]
  %247 = load i32, i32* %14, align 4
  %248 = load i32, i32* %15, align 4
  %249 = icmp eq i32 %247, %248
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %252 = call i32 (i8*, i8*, ...) @sprintf(i8* %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %209, i8* %246, i8* %251)
  %253 = load i32, i32* %16, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %16, align 4
  br label %255

255:                                              ; preds = %245
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %14, align 4
  br label %198

258:                                              ; preds = %198
  br label %418

259:                                              ; preds = %3
  %260 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %261 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %303

264:                                              ; preds = %259
  %265 = load i8*, i8** %6, align 8
  %266 = call i32 (i8*, i8*, ...) @sprintf(i8* %265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %266, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %267

267:                                              ; preds = %299, %264
  %268 = load i32, i32* %14, align 4
  %269 = load %struct.phm_odn_clock_levels*, %struct.phm_odn_clock_levels** %12, align 8
  %270 = getelementptr inbounds %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %302

273:                                              ; preds = %267
  %274 = load i8*, i8** %6, align 8
  %275 = load i32, i32* %16, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = load i32, i32* %14, align 4
  %279 = load %struct.phm_odn_clock_levels*, %struct.phm_odn_clock_levels** %12, align 8
  %280 = getelementptr inbounds %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels* %279, i32 0, i32 1
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %280, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = sdiv i32 %286, 100
  %288 = load %struct.phm_odn_clock_levels*, %struct.phm_odn_clock_levels** %12, align 8
  %289 = getelementptr inbounds %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels* %288, i32 0, i32 1
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  %291 = load i32, i32* %14, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 (i8*, i8*, ...) @sprintf(i8* %277, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %278, i32 %287, i32 %295)
  %297 = load i32, i32* %16, align 4
  %298 = add nsw i32 %297, %296
  store i32 %298, i32* %16, align 4
  br label %299

299:                                              ; preds = %273
  %300 = load i32, i32* %14, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %14, align 4
  br label %267

302:                                              ; preds = %267
  br label %303

303:                                              ; preds = %302, %259
  br label %418

304:                                              ; preds = %3
  %305 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %306 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %348

309:                                              ; preds = %304
  %310 = load i8*, i8** %6, align 8
  %311 = call i32 (i8*, i8*, ...) @sprintf(i8* %310, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %311, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %312

312:                                              ; preds = %344, %309
  %313 = load i32, i32* %14, align 4
  %314 = load %struct.phm_odn_clock_levels*, %struct.phm_odn_clock_levels** %13, align 8
  %315 = getelementptr inbounds %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp slt i32 %313, %316
  br i1 %317, label %318, label %347

318:                                              ; preds = %312
  %319 = load i8*, i8** %6, align 8
  %320 = load i32, i32* %16, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = load i32, i32* %14, align 4
  %324 = load %struct.phm_odn_clock_levels*, %struct.phm_odn_clock_levels** %13, align 8
  %325 = getelementptr inbounds %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels* %324, i32 0, i32 1
  %326 = load %struct.TYPE_12__*, %struct.TYPE_12__** %325, align 8
  %327 = load i32, i32* %14, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = sdiv i32 %331, 100
  %333 = load %struct.phm_odn_clock_levels*, %struct.phm_odn_clock_levels** %13, align 8
  %334 = getelementptr inbounds %struct.phm_odn_clock_levels, %struct.phm_odn_clock_levels* %333, i32 0, i32 1
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %334, align 8
  %336 = load i32, i32* %14, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i32 (i8*, i8*, ...) @sprintf(i8* %322, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %323, i32 %332, i32 %340)
  %342 = load i32, i32* %16, align 4
  %343 = add nsw i32 %342, %341
  store i32 %343, i32* %16, align 4
  br label %344

344:                                              ; preds = %318
  %345 = load i32, i32* %14, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %14, align 4
  br label %312

347:                                              ; preds = %312
  br label %348

348:                                              ; preds = %347, %304
  br label %418

349:                                              ; preds = %3
  %350 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %351 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %416

354:                                              ; preds = %349
  %355 = load i8*, i8** %6, align 8
  %356 = call i32 (i8*, i8*, ...) @sprintf(i8* %355, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store i32 %356, i32* %16, align 4
  %357 = load i8*, i8** %6, align 8
  %358 = load i32, i32* %16, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %357, i64 %359
  %361 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %362 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i64 0
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = sdiv i32 %368, 100
  %370 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %371 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = sdiv i32 %374, 100
  %376 = call i32 (i8*, i8*, ...) @sprintf(i8* %360, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %369, i32 %375)
  %377 = load i32, i32* %16, align 4
  %378 = add nsw i32 %377, %376
  store i32 %378, i32* %16, align 4
  %379 = load i8*, i8** %6, align 8
  %380 = load i32, i32* %16, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %379, i64 %381
  %383 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %384 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i64 0
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = sdiv i32 %390, 100
  %392 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %393 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = sdiv i32 %396, 100
  %398 = call i32 (i8*, i8*, ...) @sprintf(i8* %382, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %391, i32 %397)
  %399 = load i32, i32* %16, align 4
  %400 = add nsw i32 %399, %398
  store i32 %400, i32* %16, align 4
  %401 = load i8*, i8** %6, align 8
  %402 = load i32, i32* %16, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i8, i8* %401, i64 %403
  %405 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %406 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %410 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.smu7_odn_dpm_table, %struct.smu7_odn_dpm_table* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = call i32 (i8*, i8*, ...) @sprintf(i8* %404, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %408, i32 %412)
  %414 = load i32, i32* %16, align 4
  %415 = add nsw i32 %414, %413
  store i32 %415, i32* %16, align 4
  br label %416

416:                                              ; preds = %354, %349
  br label %418

417:                                              ; preds = %3
  br label %418

418:                                              ; preds = %417, %416, %348, %303, %258, %170, %104
  %419 = load i32, i32* %16, align 4
  ret i32 %419
}

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @cgs_read_register(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @smu7_get_current_pcie_speed(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
