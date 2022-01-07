; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_print_clk_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_print_clk_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i64, %struct.smu_dpm_context, %struct.smu_table_context, %struct.amdgpu_device* }
%struct.smu_dpm_context = type { %struct.vega20_dpm_table* }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.smu_table_context = type { i64, i64 }
%struct.amdgpu_device = type { i32 }
%struct.pp_clock_levels_with_latency = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vega20_od8_settings = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32* }

@SMU_GFXCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Attempt to get current gfx clk Failed!\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Attempt to get gfx clk levels Failed!\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%d: %uMhz %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SMU_UCLK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Attempt to get current mclk Failed!\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Attempt to get memory clk levels Failed!\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Attempt to get current socclk Failed!\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Attempt to get socclk levels Failed!\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Attempt to get current fclk Failed!\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Attempt to get current dcefclk Failed!\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Attempt to get dcefclk levels Failed!\00", align 1
@smnPCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@PSWUSP0_PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE_MASK = common dso_local global i32 0, align 4
@PSWUSP0_PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE__SHIFT = common dso_local global i32 0, align 4
@smnPCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH_RD_MASK = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH_RD__SHIFT = common dso_local global i32 0, align 4
@NUM_LINK_LEVELS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"%d: %s %s %dMhz %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"2.5GT/s,\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"5.0GT/s,\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"8.0GT/s,\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"16.0GT/s,\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"x4\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"x8\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"x12\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"x16\00", align 1
@OD8_SETTING_GFXCLK_FMIN = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FMAX = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"OD_SCLK\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"0: %10uMhz\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"1: %10uMhz\0A\00", align 1
@OD8_SETTING_UCLK_FMAX = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [8 x i8] c"OD_MCLK\00", align 1
@OD8_SETTING_GFXCLK_FREQ1 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FREQ2 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_FREQ3 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_VOLTAGE1 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_VOLTAGE2 = common dso_local global i64 0, align 8
@OD8_SETTING_GFXCLK_VOLTAGE3 = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [14 x i8] c"OD_VDDC_CURVE\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"0: %10uMhz %10dmV\0A\00", align 1
@VOLTAGE_SCALE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [19 x i8] c"1: %10uMhz %10dmV\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"2: %10uMhz %10dmV\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"OD_RANGE\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"SCLK: %7uMhz %10uMhz\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"MCLK: %7uMhz %10uMhz\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"VDDC_CURVE_SCLK[0]: %7uMhz %10uMhz\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"VDDC_CURVE_VOLT[0]: %7dmV %11dmV\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"VDDC_CURVE_SCLK[1]: %7uMhz %10uMhz\0A\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"VDDC_CURVE_VOLT[1]: %7dmV %11dmV\0A\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"VDDC_CURVE_SCLK[2]: %7uMhz %10uMhz\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"VDDC_CURVE_VOLT[2]: %7dmV %11dmV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i8*)* @vega20_print_clk_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_print_clk_levels(%struct.smu_context* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_device*, align 8
  %15 = alloca %struct.pp_clock_levels_with_latency, align 8
  %16 = alloca %struct.vega20_single_dpm_table*, align 8
  %17 = alloca %struct.smu_table_context*, align 8
  %18 = alloca %struct.smu_dpm_context*, align 8
  %19 = alloca %struct.vega20_dpm_table*, align 8
  %20 = alloca %struct.vega20_od8_settings*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca %struct.TYPE_9__*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %24 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %23, i32 0, i32 3
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %24, align 8
  store %struct.amdgpu_device* %25, %struct.amdgpu_device** %14, align 8
  %26 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %27 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %26, i32 0, i32 2
  store %struct.smu_table_context* %27, %struct.smu_table_context** %17, align 8
  %28 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %29 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %28, i32 0, i32 1
  store %struct.smu_dpm_context* %29, %struct.smu_dpm_context** %18, align 8
  store %struct.vega20_dpm_table* null, %struct.vega20_dpm_table** %19, align 8
  %30 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %31 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.vega20_od8_settings*
  store %struct.vega20_od8_settings* %33, %struct.vega20_od8_settings** %20, align 8
  %34 = load %struct.smu_table_context*, %struct.smu_table_context** %17, align 8
  %35 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %21, align 8
  %38 = load %struct.smu_table_context*, %struct.smu_table_context** %17, align 8
  %39 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %22, align 8
  %42 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %18, align 8
  %43 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %42, i32 0, i32 0
  %44 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %43, align 8
  store %struct.vega20_dpm_table* %44, %struct.vega20_dpm_table** %19, align 8
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %940 [
    i32 129, label %46
    i32 135, label %105
    i32 128, label %164
    i32 136, label %222
    i32 137, label %273
    i32 130, label %331
    i32 132, label %507
    i32 134, label %549
    i32 131, label %572
    i32 133, label %675
  ]

46:                                               ; preds = %3
  %47 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %48 = load i32, i32* @SMU_GFXCLK, align 4
  %49 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %47, i32 %48, i32* %9)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %943

55:                                               ; preds = %46
  %56 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %19, align 8
  %57 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %56, i32 0, i32 4
  store %struct.vega20_single_dpm_table* %57, %struct.vega20_single_dpm_table** %16, align 8
  %58 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %59 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %16, align 8
  %60 = call i32 @vega20_get_clk_table(%struct.smu_context* %58, %struct.pp_clock_levels_with_latency* %15, %struct.vega20_single_dpm_table* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %943

66:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %101, %66
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %8, align 4
  %78 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 1000
  %86 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = mul nsw i32 %93, 10
  %95 = icmp eq i32 %92, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %85, i8* %97)
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %72
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %67

104:                                              ; preds = %67
  br label %941

105:                                              ; preds = %3
  %106 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %107 = load i32, i32* @SMU_UCLK, align 4
  %108 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %106, i32 %107, i32* %9)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %4, align 4
  br label %943

114:                                              ; preds = %105
  %115 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %19, align 8
  %116 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %115, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %116, %struct.vega20_single_dpm_table** %16, align 8
  %117 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %118 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %16, align 8
  %119 = call i32 @vega20_get_clk_table(%struct.smu_context* %117, %struct.pp_clock_levels_with_latency* %15, %struct.vega20_single_dpm_table* %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %4, align 4
  br label %943

125:                                              ; preds = %114
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %160, %125
  %127 = load i32, i32* %8, align 4
  %128 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %163

131:                                              ; preds = %126
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i32, i32* %8, align 4
  %137 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 1
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %143, 1000
  %145 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %9, align 4
  %153 = mul nsw i32 %152, 10
  %154 = icmp eq i32 %151, %153
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %157 = call i32 (i8*, i8*, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32 %144, i8* %156)
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %131
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %126

163:                                              ; preds = %126
  br label %941

164:                                              ; preds = %3
  %165 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %166 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %165, i32 128, i32* %9)
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %4, align 4
  br label %943

172:                                              ; preds = %164
  %173 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %19, align 8
  %174 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %173, i32 0, i32 3
  store %struct.vega20_single_dpm_table* %174, %struct.vega20_single_dpm_table** %16, align 8
  %175 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %176 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %16, align 8
  %177 = call i32 @vega20_get_clk_table(%struct.smu_context* %175, %struct.pp_clock_levels_with_latency* %15, %struct.vega20_single_dpm_table* %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %4, align 4
  br label %943

183:                                              ; preds = %172
  store i32 0, i32* %8, align 4
  br label %184

184:                                              ; preds = %218, %183
  %185 = load i32, i32* %8, align 4
  %186 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %189, label %221

189:                                              ; preds = %184
  %190 = load i8*, i8** %7, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i32, i32* %8, align 4
  %195 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 1
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = sdiv i32 %201, 1000
  %203 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 1
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %9, align 4
  %211 = mul nsw i32 %210, 10
  %212 = icmp eq i32 %209, %211
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %215 = call i32 (i8*, i8*, ...) @sprintf(i8* %193, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %194, i32 %202, i8* %214)
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %10, align 4
  br label %218

218:                                              ; preds = %189
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %184

221:                                              ; preds = %184
  br label %941

222:                                              ; preds = %3
  %223 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %224 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %223, i32 136, i32* %9)
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %229 = load i32, i32* %11, align 4
  store i32 %229, i32* %4, align 4
  br label %943

230:                                              ; preds = %222
  %231 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %19, align 8
  %232 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %231, i32 0, i32 2
  store %struct.vega20_single_dpm_table* %232, %struct.vega20_single_dpm_table** %16, align 8
  store i32 0, i32* %8, align 4
  br label %233

233:                                              ; preds = %269, %230
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %16, align 8
  %236 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %272

239:                                              ; preds = %233
  %240 = load i8*, i8** %7, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i32, i32* %8, align 4
  %245 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %16, align 8
  %246 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %245, i32 0, i32 1
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %16, align 8
  %254 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %253, i32 0, i32 1
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %9, align 4
  %262 = sdiv i32 %261, 100
  %263 = icmp eq i32 %260, %262
  %264 = zext i1 %263 to i64
  %265 = select i1 %263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %266 = call i32 (i8*, i8*, ...) @sprintf(i8* %243, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %244, i32 %252, i8* %265)
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %10, align 4
  br label %269

269:                                              ; preds = %239
  %270 = load i32, i32* %8, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %8, align 4
  br label %233

272:                                              ; preds = %233
  br label %941

273:                                              ; preds = %3
  %274 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %275 = call i32 @smu_get_current_clk_freq(%struct.smu_context* %274, i32 137, i32* %9)
  store i32 %275, i32* %11, align 4
  %276 = load i32, i32* %11, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %273
  %279 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %280 = load i32, i32* %11, align 4
  store i32 %280, i32* %4, align 4
  br label %943

281:                                              ; preds = %273
  %282 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %19, align 8
  %283 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %282, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %283, %struct.vega20_single_dpm_table** %16, align 8
  %284 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %285 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %16, align 8
  %286 = call i32 @vega20_get_clk_table(%struct.smu_context* %284, %struct.pp_clock_levels_with_latency* %15, %struct.vega20_single_dpm_table* %285)
  store i32 %286, i32* %11, align 4
  %287 = load i32, i32* %11, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %281
  %290 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %291 = load i32, i32* %11, align 4
  store i32 %291, i32* %4, align 4
  br label %943

292:                                              ; preds = %281
  store i32 0, i32* %8, align 4
  br label %293

293:                                              ; preds = %327, %292
  %294 = load i32, i32* %8, align 4
  %295 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp slt i32 %294, %296
  br i1 %297, label %298, label %330

298:                                              ; preds = %293
  %299 = load i8*, i8** %7, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i32, i32* %8, align 4
  %304 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 1
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = sdiv i32 %310, 1000
  %312 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 1
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %9, align 4
  %320 = mul nsw i32 %319, 10
  %321 = icmp eq i32 %318, %320
  %322 = zext i1 %321 to i64
  %323 = select i1 %321, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %324 = call i32 (i8*, i8*, ...) @sprintf(i8* %302, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %303, i32 %311, i8* %323)
  %325 = load i32, i32* %10, align 4
  %326 = add nsw i32 %325, %324
  store i32 %326, i32* %10, align 4
  br label %327

327:                                              ; preds = %298
  %328 = load i32, i32* %8, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %8, align 4
  br label %293

330:                                              ; preds = %293
  br label %941

331:                                              ; preds = %3
  %332 = load i32, i32* @smnPCIE_LC_SPEED_CNTL, align 4
  %333 = call i32 @RREG32_PCIE(i32 %332)
  %334 = load i32, i32* @PSWUSP0_PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE_MASK, align 4
  %335 = and i32 %333, %334
  %336 = load i32, i32* @PSWUSP0_PCIE_LC_SPEED_CNTL__LC_CURRENT_DATA_RATE__SHIFT, align 4
  %337 = ashr i32 %335, %336
  store i32 %337, i32* %12, align 4
  %338 = load i32, i32* @smnPCIE_LC_LINK_WIDTH_CNTL, align 4
  %339 = call i32 @RREG32_PCIE(i32 %338)
  %340 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH_RD_MASK, align 4
  %341 = and i32 %339, %340
  %342 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL__LC_LINK_WIDTH_RD__SHIFT, align 4
  %343 = ashr i32 %341, %342
  store i32 %343, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %344

344:                                              ; preds = %503, %331
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* @NUM_LINK_LEVELS, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %506

348:                                              ; preds = %344
  %349 = load i8*, i8** %7, align 8
  %350 = load i32, i32* %10, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %349, i64 %351
  %353 = load i32, i32* %8, align 4
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %348
  br label %398

363:                                              ; preds = %348
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %8, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %373

372:                                              ; preds = %363
  br label %396

373:                                              ; preds = %363
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %8, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = icmp eq i32 %380, 2
  br i1 %381, label %382, label %383

382:                                              ; preds = %373
  br label %394

383:                                              ; preds = %373
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 0
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 3
  %392 = zext i1 %391 to i64
  %393 = select i1 %391, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  br label %394

394:                                              ; preds = %383, %382
  %395 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), %382 ], [ %393, %383 ]
  br label %396

396:                                              ; preds = %394, %372
  %397 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), %372 ], [ %395, %394 ]
  br label %398

398:                                              ; preds = %396, %362
  %399 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), %362 ], [ %397, %396 ]
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %8, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %408, label %409

408:                                              ; preds = %398
  br label %468

409:                                              ; preds = %398
  %410 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 1
  %412 = load i32*, i32** %411, align 8
  %413 = load i32, i32* %8, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = icmp eq i32 %416, 2
  br i1 %417, label %418, label %419

418:                                              ; preds = %409
  br label %466

419:                                              ; preds = %409
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 1
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %8, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = icmp eq i32 %426, 3
  br i1 %427, label %428, label %429

428:                                              ; preds = %419
  br label %464

429:                                              ; preds = %419
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 1
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %8, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = icmp eq i32 %436, 4
  br i1 %437, label %438, label %439

438:                                              ; preds = %429
  br label %462

439:                                              ; preds = %429
  %440 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 1
  %442 = load i32*, i32** %441, align 8
  %443 = load i32, i32* %8, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = icmp eq i32 %446, 5
  br i1 %447, label %448, label %449

448:                                              ; preds = %439
  br label %460

449:                                              ; preds = %439
  %450 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %451 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %450, i32 0, i32 1
  %452 = load i32*, i32** %451, align 8
  %453 = load i32, i32* %8, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %452, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = icmp eq i32 %456, 6
  %458 = zext i1 %457 to i64
  %459 = select i1 %457, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  br label %460

460:                                              ; preds = %449, %448
  %461 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), %448 ], [ %459, %449 ]
  br label %462

462:                                              ; preds = %460, %438
  %463 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %438 ], [ %461, %460 ]
  br label %464

464:                                              ; preds = %462, %428
  %465 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), %428 ], [ %463, %462 ]
  br label %466

466:                                              ; preds = %464, %418
  %467 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), %418 ], [ %465, %464 ]
  br label %468

468:                                              ; preds = %466, %408
  %469 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %408 ], [ %467, %466 ]
  %470 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 2
  %472 = load i32*, i32** %471, align 8
  %473 = load i32, i32* %8, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %12, align 4
  %478 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 0
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %8, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = icmp eq i32 %477, %484
  br i1 %485, label %486, label %496

486:                                              ; preds = %468
  %487 = load i32, i32* %13, align 4
  %488 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 1
  %490 = load i32*, i32** %489, align 8
  %491 = load i32, i32* %8, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = icmp eq i32 %487, %494
  br label %496

496:                                              ; preds = %486, %468
  %497 = phi i1 [ false, %468 ], [ %495, %486 ]
  %498 = zext i1 %497 to i64
  %499 = select i1 %497, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %500 = call i32 (i8*, i8*, ...) @sprintf(i8* %352, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %353, i8* %399, i8* %469, i32 %476, i8* %499)
  %501 = load i32, i32* %10, align 4
  %502 = add nsw i32 %501, %500
  store i32 %502, i32* %10, align 4
  br label %503

503:                                              ; preds = %496
  %504 = load i32, i32* %8, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %8, align 4
  br label %344

506:                                              ; preds = %344
  br label %941

507:                                              ; preds = %3
  %508 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %509 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %508, i32 0, i32 0
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** %509, align 8
  %511 = load i64, i64* @OD8_SETTING_GFXCLK_FMIN, align 8
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i64 %511
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i32 0, i32 2
  %514 = load i32, i32* %513, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %548

516:                                              ; preds = %507
  %517 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %518 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %517, i32 0, i32 0
  %519 = load %struct.TYPE_8__*, %struct.TYPE_8__** %518, align 8
  %520 = load i64, i64* @OD8_SETTING_GFXCLK_FMAX, align 8
  %521 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %519, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %548

525:                                              ; preds = %516
  %526 = load i8*, i8** %7, align 8
  %527 = call i32 (i8*, i8*, ...) @sprintf(i8* %526, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  store i32 %527, i32* %10, align 4
  %528 = load i8*, i8** %7, align 8
  %529 = load i32, i32* %10, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i8, i8* %528, i64 %530
  %532 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = call i32 (i8*, i8*, ...) @sprintf(i8* %531, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i32 %534)
  %536 = load i32, i32* %10, align 4
  %537 = add nsw i32 %536, %535
  store i32 %537, i32* %10, align 4
  %538 = load i8*, i8** %7, align 8
  %539 = load i32, i32* %10, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8, i8* %538, i64 %540
  %542 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = call i32 (i8*, i8*, ...) @sprintf(i8* %541, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 %544)
  %546 = load i32, i32* %10, align 4
  %547 = add nsw i32 %546, %545
  store i32 %547, i32* %10, align 4
  br label %548

548:                                              ; preds = %525, %516, %507
  br label %941

549:                                              ; preds = %3
  %550 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %551 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %550, i32 0, i32 0
  %552 = load %struct.TYPE_8__*, %struct.TYPE_8__** %551, align 8
  %553 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %554 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %571

558:                                              ; preds = %549
  %559 = load i8*, i8** %7, align 8
  %560 = call i32 (i8*, i8*, ...) @sprintf(i8* %559, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  store i32 %560, i32* %10, align 4
  %561 = load i8*, i8** %7, align 8
  %562 = load i32, i32* %10, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8, i8* %561, i64 %563
  %565 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 4
  %568 = call i32 (i8*, i8*, ...) @sprintf(i8* %564, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 %567)
  %569 = load i32, i32* %10, align 4
  %570 = add nsw i32 %569, %568
  store i32 %570, i32* %10, align 4
  br label %571

571:                                              ; preds = %558, %549
  br label %941

572:                                              ; preds = %3
  %573 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %574 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %573, i32 0, i32 0
  %575 = load %struct.TYPE_8__*, %struct.TYPE_8__** %574, align 8
  %576 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ1, align 8
  %577 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %575, i64 %576
  %578 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %674

581:                                              ; preds = %572
  %582 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %583 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %582, i32 0, i32 0
  %584 = load %struct.TYPE_8__*, %struct.TYPE_8__** %583, align 8
  %585 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ2, align 8
  %586 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %584, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %586, i32 0, i32 2
  %588 = load i32, i32* %587, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %674

590:                                              ; preds = %581
  %591 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %592 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %591, i32 0, i32 0
  %593 = load %struct.TYPE_8__*, %struct.TYPE_8__** %592, align 8
  %594 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ3, align 8
  %595 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %593, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %674

599:                                              ; preds = %590
  %600 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %601 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %600, i32 0, i32 0
  %602 = load %struct.TYPE_8__*, %struct.TYPE_8__** %601, align 8
  %603 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE1, align 8
  %604 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %602, i64 %603
  %605 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %674

608:                                              ; preds = %599
  %609 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %610 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %609, i32 0, i32 0
  %611 = load %struct.TYPE_8__*, %struct.TYPE_8__** %610, align 8
  %612 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE2, align 8
  %613 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %611, i64 %612
  %614 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %613, i32 0, i32 2
  %615 = load i32, i32* %614, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %674

617:                                              ; preds = %608
  %618 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %619 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %618, i32 0, i32 0
  %620 = load %struct.TYPE_8__*, %struct.TYPE_8__** %619, align 8
  %621 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE3, align 8
  %622 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %620, i64 %621
  %623 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %622, i32 0, i32 2
  %624 = load i32, i32* %623, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %674

626:                                              ; preds = %617
  %627 = load i8*, i8** %7, align 8
  %628 = call i32 (i8*, i8*, ...) @sprintf(i8* %627, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  store i32 %628, i32* %10, align 4
  %629 = load i8*, i8** %7, align 8
  %630 = load i32, i32* %10, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i8, i8* %629, i64 %631
  %633 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %634 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %633, i32 0, i32 3
  %635 = load i32, i32* %634, align 4
  %636 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %637 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %636, i32 0, i32 4
  %638 = load i32, i32* %637, align 4
  %639 = load i32, i32* @VOLTAGE_SCALE, align 4
  %640 = sdiv i32 %638, %639
  %641 = call i32 (i8*, i8*, ...) @sprintf(i8* %632, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32 %635, i32 %640)
  %642 = load i32, i32* %10, align 4
  %643 = add nsw i32 %642, %641
  store i32 %643, i32* %10, align 4
  %644 = load i8*, i8** %7, align 8
  %645 = load i32, i32* %10, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i8, i8* %644, i64 %646
  %648 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %649 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %648, i32 0, i32 5
  %650 = load i32, i32* %649, align 4
  %651 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %652 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %651, i32 0, i32 6
  %653 = load i32, i32* %652, align 4
  %654 = load i32, i32* @VOLTAGE_SCALE, align 4
  %655 = sdiv i32 %653, %654
  %656 = call i32 (i8*, i8*, ...) @sprintf(i8* %647, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32 %650, i32 %655)
  %657 = load i32, i32* %10, align 4
  %658 = add nsw i32 %657, %656
  store i32 %658, i32* %10, align 4
  %659 = load i8*, i8** %7, align 8
  %660 = load i32, i32* %10, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i8, i8* %659, i64 %661
  %663 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %664 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %663, i32 0, i32 7
  %665 = load i32, i32* %664, align 4
  %666 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %667 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %666, i32 0, i32 8
  %668 = load i32, i32* %667, align 4
  %669 = load i32, i32* @VOLTAGE_SCALE, align 4
  %670 = sdiv i32 %668, %669
  %671 = call i32 (i8*, i8*, ...) @sprintf(i8* %662, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %665, i32 %670)
  %672 = load i32, i32* %10, align 4
  %673 = add nsw i32 %672, %671
  store i32 %673, i32* %10, align 4
  br label %674

674:                                              ; preds = %626, %617, %608, %599, %590, %581, %572
  br label %941

675:                                              ; preds = %3
  %676 = load i8*, i8** %7, align 8
  %677 = call i32 (i8*, i8*, ...) @sprintf(i8* %676, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  store i32 %677, i32* %10, align 4
  %678 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %679 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %678, i32 0, i32 0
  %680 = load %struct.TYPE_8__*, %struct.TYPE_8__** %679, align 8
  %681 = load i64, i64* @OD8_SETTING_GFXCLK_FMIN, align 8
  %682 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %680, i64 %681
  %683 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %682, i32 0, i32 2
  %684 = load i32, i32* %683, align 4
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %717

686:                                              ; preds = %675
  %687 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %688 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %687, i32 0, i32 0
  %689 = load %struct.TYPE_8__*, %struct.TYPE_8__** %688, align 8
  %690 = load i64, i64* @OD8_SETTING_GFXCLK_FMAX, align 8
  %691 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %689, i64 %690
  %692 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %691, i32 0, i32 2
  %693 = load i32, i32* %692, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %717

695:                                              ; preds = %686
  %696 = load i8*, i8** %7, align 8
  %697 = load i32, i32* %10, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i8, i8* %696, i64 %698
  %700 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %701 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %700, i32 0, i32 0
  %702 = load %struct.TYPE_8__*, %struct.TYPE_8__** %701, align 8
  %703 = load i64, i64* @OD8_SETTING_GFXCLK_FMIN, align 8
  %704 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %702, i64 %703
  %705 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 4
  %707 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %708 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %707, i32 0, i32 0
  %709 = load %struct.TYPE_8__*, %struct.TYPE_8__** %708, align 8
  %710 = load i64, i64* @OD8_SETTING_GFXCLK_FMAX, align 8
  %711 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %709, i64 %710
  %712 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %711, i32 0, i32 1
  %713 = load i32, i32* %712, align 4
  %714 = call i32 (i8*, i8*, ...) @sprintf(i8* %699, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i32 %706, i32 %713)
  %715 = load i32, i32* %10, align 4
  %716 = add nsw i32 %715, %714
  store i32 %716, i32* %10, align 4
  br label %717

717:                                              ; preds = %695, %686, %675
  %718 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %719 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %718, i32 0, i32 0
  %720 = load %struct.TYPE_8__*, %struct.TYPE_8__** %719, align 8
  %721 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %722 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %720, i64 %721
  %723 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %722, i32 0, i32 2
  %724 = load i32, i32* %723, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %758

726:                                              ; preds = %717
  %727 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %19, align 8
  %728 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %727, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %728, %struct.vega20_single_dpm_table** %16, align 8
  %729 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %730 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %16, align 8
  %731 = call i32 @vega20_get_clk_table(%struct.smu_context* %729, %struct.pp_clock_levels_with_latency* %15, %struct.vega20_single_dpm_table* %730)
  store i32 %731, i32* %11, align 4
  %732 = load i32, i32* %11, align 4
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %737

734:                                              ; preds = %726
  %735 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %736 = load i32, i32* %11, align 4
  store i32 %736, i32* %4, align 4
  br label %943

737:                                              ; preds = %726
  %738 = load i8*, i8** %7, align 8
  %739 = load i32, i32* %10, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i8, i8* %738, i64 %740
  %742 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %15, i32 0, i32 1
  %743 = load %struct.TYPE_7__*, %struct.TYPE_7__** %742, align 8
  %744 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %743, i64 0
  %745 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %744, i32 0, i32 0
  %746 = load i32, i32* %745, align 4
  %747 = sdiv i32 %746, 1000
  %748 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %749 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %748, i32 0, i32 0
  %750 = load %struct.TYPE_8__*, %struct.TYPE_8__** %749, align 8
  %751 = load i64, i64* @OD8_SETTING_UCLK_FMAX, align 8
  %752 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %750, i64 %751
  %753 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %752, i32 0, i32 1
  %754 = load i32, i32* %753, align 4
  %755 = call i32 (i8*, i8*, ...) @sprintf(i8* %741, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i32 %747, i32 %754)
  %756 = load i32, i32* %10, align 4
  %757 = add nsw i32 %756, %755
  store i32 %757, i32* %10, align 4
  br label %758

758:                                              ; preds = %737, %717
  %759 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %760 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %759, i32 0, i32 0
  %761 = load %struct.TYPE_8__*, %struct.TYPE_8__** %760, align 8
  %762 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ1, align 8
  %763 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %761, i64 %762
  %764 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %763, i32 0, i32 2
  %765 = load i32, i32* %764, align 4
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %939

767:                                              ; preds = %758
  %768 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %769 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %768, i32 0, i32 0
  %770 = load %struct.TYPE_8__*, %struct.TYPE_8__** %769, align 8
  %771 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ2, align 8
  %772 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %770, i64 %771
  %773 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %772, i32 0, i32 2
  %774 = load i32, i32* %773, align 4
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %939

776:                                              ; preds = %767
  %777 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %778 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %777, i32 0, i32 0
  %779 = load %struct.TYPE_8__*, %struct.TYPE_8__** %778, align 8
  %780 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ3, align 8
  %781 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %779, i64 %780
  %782 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %781, i32 0, i32 2
  %783 = load i32, i32* %782, align 4
  %784 = icmp ne i32 %783, 0
  br i1 %784, label %785, label %939

785:                                              ; preds = %776
  %786 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %787 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %786, i32 0, i32 0
  %788 = load %struct.TYPE_8__*, %struct.TYPE_8__** %787, align 8
  %789 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE1, align 8
  %790 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %788, i64 %789
  %791 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %790, i32 0, i32 2
  %792 = load i32, i32* %791, align 4
  %793 = icmp ne i32 %792, 0
  br i1 %793, label %794, label %939

794:                                              ; preds = %785
  %795 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %796 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %795, i32 0, i32 0
  %797 = load %struct.TYPE_8__*, %struct.TYPE_8__** %796, align 8
  %798 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE2, align 8
  %799 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %797, i64 %798
  %800 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %799, i32 0, i32 2
  %801 = load i32, i32* %800, align 4
  %802 = icmp ne i32 %801, 0
  br i1 %802, label %803, label %939

803:                                              ; preds = %794
  %804 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %805 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %804, i32 0, i32 0
  %806 = load %struct.TYPE_8__*, %struct.TYPE_8__** %805, align 8
  %807 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE3, align 8
  %808 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %806, i64 %807
  %809 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %808, i32 0, i32 2
  %810 = load i32, i32* %809, align 4
  %811 = icmp ne i32 %810, 0
  br i1 %811, label %812, label %939

812:                                              ; preds = %803
  %813 = load i8*, i8** %7, align 8
  %814 = load i32, i32* %10, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds i8, i8* %813, i64 %815
  %817 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %818 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %817, i32 0, i32 0
  %819 = load %struct.TYPE_8__*, %struct.TYPE_8__** %818, align 8
  %820 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ1, align 8
  %821 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %819, i64 %820
  %822 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %821, i32 0, i32 0
  %823 = load i32, i32* %822, align 4
  %824 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %825 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %824, i32 0, i32 0
  %826 = load %struct.TYPE_8__*, %struct.TYPE_8__** %825, align 8
  %827 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ1, align 8
  %828 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %826, i64 %827
  %829 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %828, i32 0, i32 1
  %830 = load i32, i32* %829, align 4
  %831 = call i32 (i8*, i8*, ...) @sprintf(i8* %816, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i32 %823, i32 %830)
  %832 = load i32, i32* %10, align 4
  %833 = add nsw i32 %832, %831
  store i32 %833, i32* %10, align 4
  %834 = load i8*, i8** %7, align 8
  %835 = load i32, i32* %10, align 4
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds i8, i8* %834, i64 %836
  %838 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %839 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %838, i32 0, i32 0
  %840 = load %struct.TYPE_8__*, %struct.TYPE_8__** %839, align 8
  %841 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE1, align 8
  %842 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %840, i64 %841
  %843 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %842, i32 0, i32 0
  %844 = load i32, i32* %843, align 4
  %845 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %846 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %845, i32 0, i32 0
  %847 = load %struct.TYPE_8__*, %struct.TYPE_8__** %846, align 8
  %848 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE1, align 8
  %849 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %847, i64 %848
  %850 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %849, i32 0, i32 1
  %851 = load i32, i32* %850, align 4
  %852 = call i32 (i8*, i8*, ...) @sprintf(i8* %837, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i64 0, i64 0), i32 %844, i32 %851)
  %853 = load i32, i32* %10, align 4
  %854 = add nsw i32 %853, %852
  store i32 %854, i32* %10, align 4
  %855 = load i8*, i8** %7, align 8
  %856 = load i32, i32* %10, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds i8, i8* %855, i64 %857
  %859 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %860 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %859, i32 0, i32 0
  %861 = load %struct.TYPE_8__*, %struct.TYPE_8__** %860, align 8
  %862 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ2, align 8
  %863 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %861, i64 %862
  %864 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %863, i32 0, i32 0
  %865 = load i32, i32* %864, align 4
  %866 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %867 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %866, i32 0, i32 0
  %868 = load %struct.TYPE_8__*, %struct.TYPE_8__** %867, align 8
  %869 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ2, align 8
  %870 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %868, i64 %869
  %871 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %870, i32 0, i32 1
  %872 = load i32, i32* %871, align 4
  %873 = call i32 (i8*, i8*, ...) @sprintf(i8* %858, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), i32 %865, i32 %872)
  %874 = load i32, i32* %10, align 4
  %875 = add nsw i32 %874, %873
  store i32 %875, i32* %10, align 4
  %876 = load i8*, i8** %7, align 8
  %877 = load i32, i32* %10, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds i8, i8* %876, i64 %878
  %880 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %881 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %880, i32 0, i32 0
  %882 = load %struct.TYPE_8__*, %struct.TYPE_8__** %881, align 8
  %883 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE2, align 8
  %884 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %882, i64 %883
  %885 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %884, i32 0, i32 0
  %886 = load i32, i32* %885, align 4
  %887 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %888 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %887, i32 0, i32 0
  %889 = load %struct.TYPE_8__*, %struct.TYPE_8__** %888, align 8
  %890 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE2, align 8
  %891 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %889, i64 %890
  %892 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %891, i32 0, i32 1
  %893 = load i32, i32* %892, align 4
  %894 = call i32 (i8*, i8*, ...) @sprintf(i8* %879, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0), i32 %886, i32 %893)
  %895 = load i32, i32* %10, align 4
  %896 = add nsw i32 %895, %894
  store i32 %896, i32* %10, align 4
  %897 = load i8*, i8** %7, align 8
  %898 = load i32, i32* %10, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds i8, i8* %897, i64 %899
  %901 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %902 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %901, i32 0, i32 0
  %903 = load %struct.TYPE_8__*, %struct.TYPE_8__** %902, align 8
  %904 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ3, align 8
  %905 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %903, i64 %904
  %906 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %905, i32 0, i32 0
  %907 = load i32, i32* %906, align 4
  %908 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %909 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %908, i32 0, i32 0
  %910 = load %struct.TYPE_8__*, %struct.TYPE_8__** %909, align 8
  %911 = load i64, i64* @OD8_SETTING_GFXCLK_FREQ3, align 8
  %912 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %910, i64 %911
  %913 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %912, i32 0, i32 1
  %914 = load i32, i32* %913, align 4
  %915 = call i32 (i8*, i8*, ...) @sprintf(i8* %900, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0), i32 %907, i32 %914)
  %916 = load i32, i32* %10, align 4
  %917 = add nsw i32 %916, %915
  store i32 %917, i32* %10, align 4
  %918 = load i8*, i8** %7, align 8
  %919 = load i32, i32* %10, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds i8, i8* %918, i64 %920
  %922 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %923 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %922, i32 0, i32 0
  %924 = load %struct.TYPE_8__*, %struct.TYPE_8__** %923, align 8
  %925 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE3, align 8
  %926 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %924, i64 %925
  %927 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %926, i32 0, i32 0
  %928 = load i32, i32* %927, align 4
  %929 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %20, align 8
  %930 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %929, i32 0, i32 0
  %931 = load %struct.TYPE_8__*, %struct.TYPE_8__** %930, align 8
  %932 = load i64, i64* @OD8_SETTING_GFXCLK_VOLTAGE3, align 8
  %933 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %931, i64 %932
  %934 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %933, i32 0, i32 1
  %935 = load i32, i32* %934, align 4
  %936 = call i32 (i8*, i8*, ...) @sprintf(i8* %921, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0), i32 %928, i32 %935)
  %937 = load i32, i32* %10, align 4
  %938 = add nsw i32 %937, %936
  store i32 %938, i32* %10, align 4
  br label %939

939:                                              ; preds = %812, %803, %794, %785, %776, %767, %758
  br label %941

940:                                              ; preds = %3
  br label %941

941:                                              ; preds = %940, %939, %674, %571, %548, %506, %330, %272, %221, %163, %104
  %942 = load i32, i32* %10, align 4
  store i32 %942, i32* %4, align 4
  br label %943

943:                                              ; preds = %941, %734, %289, %278, %227, %180, %169, %122, %111, %63, %52
  %944 = load i32, i32* %4, align 4
  ret i32 %944
}

declare dso_local i32 @smu_get_current_clk_freq(%struct.smu_context*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vega20_get_clk_table(%struct.smu_context*, %struct.pp_clock_levels_with_latency*, %struct.vega20_single_dpm_table*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
