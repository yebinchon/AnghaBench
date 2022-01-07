; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_print_clock_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_print_clock_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_23__, i32, %struct.vega10_hwmgr* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.vega10_hwmgr = type { %struct.TYPE_24__, %struct.TYPE_21__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_24__ = type { i32, i32, %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table }
%struct.vega10_odn_clock_voltage_dependency_table = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.vega10_pcie_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table }
%struct.vega10_pcie_table = type { i32, i32* }
%struct.vega10_single_dpm_table = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@PPSMC_MSG_GetCurrentGfxclkIndex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%d: %uMhz %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PPSMC_MSG_GetCurrentUclkIndex = common dso_local global i32 0, align 4
@PPSMC_MSG_GetCurrentSocclkIndex = common dso_local global i32 0, align 4
@PPSMC_MSG_GetClockFreqMHz = common dso_local global i32 0, align 4
@CLK_DCEFCLK = common dso_local global i32 0, align 4
@PPSMC_MSG_GetCurrentLinkIndex = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"%d: %s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"2.5GT/s, x1\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"5.0GT/s, x16\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"8.0GT/s, x16\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"OD_SCLK\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%d: %10uMhz %10umV\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"OD_MCLK\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"OD_RANGE\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"SCLK: %7uMHz %10uMHz\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"MCLK: %7uMHz %10uMHz\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"VDDC: %7umV %11umV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i8*)* @vega10_print_clock_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_print_clock_levels(%struct.pp_hwmgr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vega10_hwmgr*, align 8
  %8 = alloca %struct.vega10_single_dpm_table*, align 8
  %9 = alloca %struct.vega10_single_dpm_table*, align 8
  %10 = alloca %struct.vega10_single_dpm_table*, align 8
  %11 = alloca %struct.vega10_single_dpm_table*, align 8
  %12 = alloca %struct.vega10_pcie_table*, align 8
  %13 = alloca %struct.vega10_odn_clock_voltage_dependency_table*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %18 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %17, i32 0, i32 2
  %19 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %18, align 8
  store %struct.vega10_hwmgr* %19, %struct.vega10_hwmgr** %7, align 8
  %20 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %21 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 4
  store %struct.vega10_single_dpm_table* %22, %struct.vega10_single_dpm_table** %8, align 8
  %23 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %24 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 3
  store %struct.vega10_single_dpm_table* %25, %struct.vega10_single_dpm_table** %9, align 8
  %26 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %27 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  store %struct.vega10_single_dpm_table* %28, %struct.vega10_single_dpm_table** %10, align 8
  %29 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %30 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  store %struct.vega10_single_dpm_table* %31, %struct.vega10_single_dpm_table** %11, align 8
  %32 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %33 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  store %struct.vega10_pcie_table* %34, %struct.vega10_pcie_table** %12, align 8
  store %struct.vega10_odn_clock_voltage_dependency_table* null, %struct.vega10_odn_clock_voltage_dependency_table** %13, align 8
  store i32 0, i32* %16, align 4
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %457 [
    i32 129, label %36
    i32 131, label %82
    i32 128, label %128
    i32 132, label %174
    i32 130, label %229
    i32 133, label %293
    i32 135, label %341
    i32 134, label %389
  ]

36:                                               ; preds = %3
  %37 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %38 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %458

43:                                               ; preds = %36
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %45 = load i32, i32* @PPSMC_MSG_GetCurrentGfxclkIndex, align 4
  %46 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %44, i32 %45)
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %48 = call i32 @smum_get_argument(%struct.pp_hwmgr* %47)
  store i32 %48, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %78, %43
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %52 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %8, align 8
  %62 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, 100
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %75 = call i32 (i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %69, i8* %74)
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %55
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %49

81:                                               ; preds = %49
  br label %458

82:                                               ; preds = %3
  %83 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %84 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %458

89:                                               ; preds = %82
  %90 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %91 = load i32, i32* @PPSMC_MSG_GetCurrentUclkIndex, align 4
  %92 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %90, i32 %91)
  %93 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %94 = call i32 @smum_get_argument(%struct.pp_hwmgr* %93)
  store i32 %94, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %124, %89
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %9, align 8
  %98 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %9, align 8
  %108 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %114, 100
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %121 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %115, i8* %120)
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %101
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %95

127:                                              ; preds = %95
  br label %458

128:                                              ; preds = %3
  %129 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %130 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %458

135:                                              ; preds = %128
  %136 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %137 = load i32, i32* @PPSMC_MSG_GetCurrentSocclkIndex, align 4
  %138 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %136, i32 %137)
  %139 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %140 = call i32 @smum_get_argument(%struct.pp_hwmgr* %139)
  store i32 %140, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %170, %135
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %10, align 8
  %144 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %173

147:                                              ; preds = %141
  %148 = load i8*, i8** %6, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %10, align 8
  %154 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %153, i32 0, i32 1
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %160, 100
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %161, i8* %166)
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %147
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  br label %141

173:                                              ; preds = %141
  br label %458

174:                                              ; preds = %3
  %175 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %176 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %458

181:                                              ; preds = %174
  %182 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %183 = load i32, i32* @PPSMC_MSG_GetClockFreqMHz, align 4
  %184 = load i32, i32* @CLK_DCEFCLK, align 4
  %185 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %182, i32 %183, i32 %184)
  %186 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %187 = call i32 @smum_get_argument(%struct.pp_hwmgr* %186)
  store i32 %187, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %188

188:                                              ; preds = %225, %181
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %11, align 8
  %191 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %228

194:                                              ; preds = %188
  %195 = load i8*, i8** %6, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %11, align 8
  %201 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %200, i32 0, i32 1
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = sdiv i32 %207, 100
  %209 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %11, align 8
  %210 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %209, i32 0, i32 1
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = sdiv i32 %216, 100
  %218 = load i32, i32* %15, align 4
  %219 = icmp eq i32 %217, %218
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %222 = call i32 (i8*, i8*, ...) @sprintf(i8* %198, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %199, i32 %208, i8* %221)
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %16, align 4
  br label %225

225:                                              ; preds = %194
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  br label %188

228:                                              ; preds = %188
  br label %458

229:                                              ; preds = %3
  %230 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %231 = load i32, i32* @PPSMC_MSG_GetCurrentLinkIndex, align 4
  %232 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %230, i32 %231)
  %233 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %234 = call i32 @smum_get_argument(%struct.pp_hwmgr* %233)
  store i32 %234, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %235

235:                                              ; preds = %289, %229
  %236 = load i32, i32* %14, align 4
  %237 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %12, align 8
  %238 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %292

241:                                              ; preds = %235
  %242 = load i8*, i8** %6, align 8
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load i32, i32* %14, align 4
  %247 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %12, align 8
  %248 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %247, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %241
  br label %279

256:                                              ; preds = %241
  %257 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %12, align 8
  %258 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %266

265:                                              ; preds = %256
  br label %277

266:                                              ; preds = %256
  %267 = load %struct.vega10_pcie_table*, %struct.vega10_pcie_table** %12, align 8
  %268 = getelementptr inbounds %struct.vega10_pcie_table, %struct.vega10_pcie_table* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %14, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  br label %277

277:                                              ; preds = %266, %265
  %278 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %265 ], [ %276, %266 ]
  br label %279

279:                                              ; preds = %277, %255
  %280 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %255 ], [ %278, %277 ]
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* %15, align 4
  %283 = icmp eq i32 %281, %282
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %286 = call i32 (i8*, i8*, ...) @sprintf(i8* %245, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %246, i8* %280, i8* %285)
  %287 = load i32, i32* %16, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %16, align 4
  br label %289

289:                                              ; preds = %279
  %290 = load i32, i32* %14, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %14, align 4
  br label %235

292:                                              ; preds = %235
  br label %458

293:                                              ; preds = %3
  %294 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %295 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %340

298:                                              ; preds = %293
  %299 = load i8*, i8** %6, align 8
  %300 = call i32 (i8*, i8*, ...) @sprintf(i8* %299, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 %300, i32* %16, align 4
  %301 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %302 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 3
  store %struct.vega10_odn_clock_voltage_dependency_table* %303, %struct.vega10_odn_clock_voltage_dependency_table** %13, align 8
  store i32 0, i32* %14, align 4
  br label %304

304:                                              ; preds = %336, %298
  %305 = load i32, i32* %14, align 4
  %306 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %13, align 8
  %307 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp slt i32 %305, %308
  br i1 %309, label %310, label %339

310:                                              ; preds = %304
  %311 = load i8*, i8** %6, align 8
  %312 = load i32, i32* %16, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %311, i64 %313
  %315 = load i32, i32* %14, align 4
  %316 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %13, align 8
  %317 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %316, i32 0, i32 1
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %317, align 8
  %319 = load i32, i32* %14, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = sdiv i32 %323, 100
  %325 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %13, align 8
  %326 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %325, i32 0, i32 1
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %326, align 8
  %328 = load i32, i32* %14, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (i8*, i8*, ...) @sprintf(i8* %314, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %315, i32 %324, i32 %332)
  %334 = load i32, i32* %16, align 4
  %335 = add nsw i32 %334, %333
  store i32 %335, i32* %16, align 4
  br label %336

336:                                              ; preds = %310
  %337 = load i32, i32* %14, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %14, align 4
  br label %304

339:                                              ; preds = %304
  br label %340

340:                                              ; preds = %339, %293
  br label %458

341:                                              ; preds = %3
  %342 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %343 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %388

346:                                              ; preds = %341
  %347 = load i8*, i8** %6, align 8
  %348 = call i32 (i8*, i8*, ...) @sprintf(i8* %347, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %348, i32* %16, align 4
  %349 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %350 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 2
  store %struct.vega10_odn_clock_voltage_dependency_table* %351, %struct.vega10_odn_clock_voltage_dependency_table** %13, align 8
  store i32 0, i32* %14, align 4
  br label %352

352:                                              ; preds = %384, %346
  %353 = load i32, i32* %14, align 4
  %354 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %13, align 8
  %355 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %358, label %387

358:                                              ; preds = %352
  %359 = load i8*, i8** %6, align 8
  %360 = load i32, i32* %16, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %359, i64 %361
  %363 = load i32, i32* %14, align 4
  %364 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %13, align 8
  %365 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %364, i32 0, i32 1
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %365, align 8
  %367 = load i32, i32* %14, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = sdiv i32 %371, 100
  %373 = load %struct.vega10_odn_clock_voltage_dependency_table*, %struct.vega10_odn_clock_voltage_dependency_table** %13, align 8
  %374 = getelementptr inbounds %struct.vega10_odn_clock_voltage_dependency_table, %struct.vega10_odn_clock_voltage_dependency_table* %373, i32 0, i32 1
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %374, align 8
  %376 = load i32, i32* %14, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = call i32 (i8*, i8*, ...) @sprintf(i8* %362, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %363, i32 %372, i32 %380)
  %382 = load i32, i32* %16, align 4
  %383 = add nsw i32 %382, %381
  store i32 %383, i32* %16, align 4
  br label %384

384:                                              ; preds = %358
  %385 = load i32, i32* %14, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %14, align 4
  br label %352

387:                                              ; preds = %352
  br label %388

388:                                              ; preds = %387, %341
  br label %458

389:                                              ; preds = %3
  %390 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %391 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 8
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %456

394:                                              ; preds = %389
  %395 = load i8*, i8** %6, align 8
  %396 = call i32 (i8*, i8*, ...) @sprintf(i8* %395, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store i32 %396, i32* %16, align 4
  %397 = load i8*, i8** %6, align 8
  %398 = load i32, i32* %16, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %397, i64 %399
  %401 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %402 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_17__*, %struct.TYPE_17__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i64 0
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = sdiv i32 %408, 100
  %410 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %411 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = sdiv i32 %414, 100
  %416 = call i32 (i8*, i8*, ...) @sprintf(i8* %400, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %409, i32 %415)
  %417 = load i32, i32* %16, align 4
  %418 = add nsw i32 %417, %416
  store i32 %418, i32* %16, align 4
  %419 = load i8*, i8** %6, align 8
  %420 = load i32, i32* %16, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8, i8* %419, i64 %421
  %423 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %424 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i64 0
  %429 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = sdiv i32 %430, 100
  %432 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %433 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = sdiv i32 %436, 100
  %438 = call i32 (i8*, i8*, ...) @sprintf(i8* %422, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %431, i32 %437)
  %439 = load i32, i32* %16, align 4
  %440 = add nsw i32 %439, %438
  store i32 %440, i32* %16, align 4
  %441 = load i8*, i8** %6, align 8
  %442 = load i32, i32* %16, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8, i8* %441, i64 %443
  %445 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %446 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %7, align 8
  %450 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = call i32 (i8*, i8*, ...) @sprintf(i8* %444, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %448, i32 %452)
  %454 = load i32, i32* %16, align 4
  %455 = add nsw i32 %454, %453
  store i32 %455, i32* %16, align 4
  br label %456

456:                                              ; preds = %394, %389
  br label %458

457:                                              ; preds = %3
  br label %458

458:                                              ; preds = %457, %456, %388, %340, %292, %228, %180, %173, %134, %127, %88, %81, %42
  %459 = load i32, i32* %16, align 4
  ret i32 %459
}

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smum_get_argument(%struct.pp_hwmgr*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
