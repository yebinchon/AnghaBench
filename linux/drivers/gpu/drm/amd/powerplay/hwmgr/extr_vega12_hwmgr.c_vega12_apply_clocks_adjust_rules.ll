; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_apply_clocks_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_apply_clocks_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i32 }
%struct.vega12_hwmgr = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table }
%struct.vega12_single_dpm_table = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@PHM_PlatformCaps_UMDPState = common dso_local global i32 0, align 4
@VEGA12_UMD_PSTATE_GFXCLK_LEVEL = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i64 0, align 8
@VEGA12_UMD_PSTATE_MCLK_LEVEL = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i64 0, align 8
@VEGA12_UMD_PSTATE_UVDCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA12_UMD_PSTATE_SOCCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA12_UMD_PSTATE_VCEMCLK_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega12_apply_clocks_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_apply_clocks_adjust_rules(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega12_hwmgr*, align 8
  %4 = alloca %struct.vega12_single_dpm_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.vega12_hwmgr*
  store %struct.vega12_hwmgr* %12, %struct.vega12_hwmgr** %3, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 1, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %21 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i1 [ true, %19 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %38 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 5
  store %struct.vega12_single_dpm_table* %39, %struct.vega12_single_dpm_table** %4, align 8
  %40 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %41 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %47 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %50 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %53 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %61 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %64 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %70 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %73 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %76 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %84 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %87 = call i64 @PP_CAP(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %178

89:                                               ; preds = %29
  %90 = load i64, i64* @VEGA12_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %91 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %92 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = icmp ult i64 %90, %94
  br i1 %95, label %96, label %117

96:                                               ; preds = %89
  %97 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %98 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load i64, i64* @VEGA12_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %105 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %108 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i64, i64* @VEGA12_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %115 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  br label %117

117:                                              ; preds = %96, %89
  %118 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %119 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %117
  %124 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %125 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %124, i32 0, i32 1
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %131 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %134 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %133, i32 0, i32 1
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %140 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %123, %117
  %143 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %144 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %177

148:                                              ; preds = %142
  %149 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %150 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %153 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %161 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  %163 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %164 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %163, i32 0, i32 1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %167 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %175 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  br label %177

177:                                              ; preds = %148, %142
  br label %178

178:                                              ; preds = %177, %29
  %179 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %180 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 4
  store %struct.vega12_single_dpm_table* %181, %struct.vega12_single_dpm_table** %4, align 8
  %182 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %183 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %182, i32 0, i32 1
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %189 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  store i32 %187, i32* %190, align 8
  %191 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %192 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %191, i32 0, i32 1
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %195 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %203 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  store i32 %201, i32* %204, align 4
  %205 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %206 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %205, i32 0, i32 1
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %212 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 2
  store i32 %210, i32* %213, align 8
  %214 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %215 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %214, i32 0, i32 1
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %215, align 8
  %217 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %218 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %226 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 3
  store i32 %224, i32* %227, align 4
  %228 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %229 = call i64 @PP_CAP(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %320

231:                                              ; preds = %178
  %232 = load i64, i64* @VEGA12_UMD_PSTATE_MCLK_LEVEL, align 8
  %233 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %234 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = icmp ult i64 %232, %236
  br i1 %237, label %238, label %259

238:                                              ; preds = %231
  %239 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %240 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %239, i32 0, i32 1
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load i64, i64* @VEGA12_UMD_PSTATE_MCLK_LEVEL, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %247 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  store i32 %245, i32* %248, align 8
  %249 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %250 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %249, i32 0, i32 1
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = load i64, i64* @VEGA12_UMD_PSTATE_MCLK_LEVEL, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %257 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  store i32 %255, i32* %258, align 4
  br label %259

259:                                              ; preds = %238, %231
  %260 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %261 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %284

265:                                              ; preds = %259
  %266 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %267 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %266, i32 0, i32 1
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i64 0
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %273 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  store i32 %271, i32* %274, align 8
  %275 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %276 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %275, i32 0, i32 1
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %282 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 1
  store i32 %280, i32* %283, align 4
  br label %284

284:                                              ; preds = %265, %259
  %285 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %286 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %319

290:                                              ; preds = %284
  %291 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %292 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %291, i32 0, i32 1
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %292, align 8
  %294 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %295 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %303 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 0
  store i32 %301, i32* %304, align 8
  %305 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %306 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %305, i32 0, i32 1
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %306, align 8
  %308 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %309 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = sub nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %317 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 1
  store i32 %315, i32* %318, align 4
  br label %319

319:                                              ; preds = %290, %284
  br label %320

320:                                              ; preds = %319, %178
  %321 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %322 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %326 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %325, i32 0, i32 1
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = sdiv i32 %329, 100
  %331 = icmp slt i32 %324, %330
  br i1 %331, label %332, label %342

332:                                              ; preds = %320
  %333 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %334 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %333, i32 0, i32 1
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = sdiv i32 %337, 100
  %339 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %340 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 2
  store i32 %338, i32* %341, align 8
  br label %342

342:                                              ; preds = %332, %320
  %343 = load i32, i32* %6, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %414

345:                                              ; preds = %342
  %346 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %347 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %346, i32 0, i32 1
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %347, align 8
  %349 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %350 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sub nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %358 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 2
  store i32 %356, i32* %359, align 8
  store i32 0, i32* %7, align 4
  br label %360

360:                                              ; preds = %410, %345
  %361 = load i32, i32* %7, align 4
  %362 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %363 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = sub nsw i32 %365, 1
  %367 = icmp slt i32 %361, %366
  br i1 %367, label %368, label %413

368:                                              ; preds = %360
  %369 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %370 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %371, align 8
  %373 = load i32, i32* %7, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %8, align 4
  %379 = icmp sle i32 %377, %378
  br i1 %379, label %380, label %409

380:                                              ; preds = %368
  %381 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %382 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %381, i32 0, i32 1
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %382, align 8
  %384 = load i32, i32* %7, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %390 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %389, i32 0, i32 1
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = sdiv i32 %393, 100
  %395 = icmp sge i32 %388, %394
  br i1 %395, label %396, label %408

396:                                              ; preds = %380
  %397 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %398 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %397, i32 0, i32 1
  %399 = load %struct.TYPE_12__*, %struct.TYPE_12__** %398, align 8
  %400 = load i32, i32* %7, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %406 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 2
  store i32 %404, i32* %407, align 8
  br label %413

408:                                              ; preds = %380
  br label %409

409:                                              ; preds = %408, %368
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %7, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %7, align 4
  br label %360

413:                                              ; preds = %396, %360
  br label %414

414:                                              ; preds = %413, %342
  %415 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %416 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %415, i32 0, i32 1
  %417 = load %struct.TYPE_9__*, %struct.TYPE_9__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 3
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %436

421:                                              ; preds = %414
  %422 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %423 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %422, i32 0, i32 1
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** %423, align 8
  %425 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %426 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = sub nsw i32 %427, 1
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %434 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %433, i32 0, i32 2
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 2
  store i32 %432, i32* %435, align 8
  br label %436

436:                                              ; preds = %421, %414
  %437 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %438 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 3
  store %struct.vega12_single_dpm_table* %439, %struct.vega12_single_dpm_table** %4, align 8
  %440 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %441 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %440, i32 0, i32 1
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i64 0
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %447 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 0
  store i32 %445, i32* %448, align 8
  %449 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %450 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %449, i32 0, i32 1
  %451 = load %struct.TYPE_12__*, %struct.TYPE_12__** %450, align 8
  %452 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %453 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = sub nsw i32 %454, 1
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %461 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 1
  store i32 %459, i32* %462, align 4
  %463 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %464 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %463, i32 0, i32 1
  %465 = load %struct.TYPE_12__*, %struct.TYPE_12__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %465, i64 0
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %470 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %469, i32 0, i32 2
  %471 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %470, i32 0, i32 2
  store i32 %468, i32* %471, align 8
  %472 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %473 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %472, i32 0, i32 1
  %474 = load %struct.TYPE_12__*, %struct.TYPE_12__** %473, align 8
  %475 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %476 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = sub nsw i32 %477, 1
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %484 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %483, i32 0, i32 2
  %485 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %484, i32 0, i32 3
  store i32 %482, i32* %485, align 4
  %486 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %487 = call i64 @PP_CAP(i32 %486)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %553

489:                                              ; preds = %436
  %490 = load i64, i64* @VEGA12_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %491 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %492 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = sext i32 %493 to i64
  %495 = icmp ult i64 %490, %494
  br i1 %495, label %496, label %517

496:                                              ; preds = %489
  %497 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %498 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %497, i32 0, i32 1
  %499 = load %struct.TYPE_12__*, %struct.TYPE_12__** %498, align 8
  %500 = load i64, i64* @VEGA12_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %501 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %499, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %505 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %505, i32 0, i32 0
  store i32 %503, i32* %506, align 8
  %507 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %508 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %507, i32 0, i32 1
  %509 = load %struct.TYPE_12__*, %struct.TYPE_12__** %508, align 8
  %510 = load i64, i64* @VEGA12_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %509, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %515 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 1
  store i32 %513, i32* %516, align 4
  br label %517

517:                                              ; preds = %496, %489
  %518 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %519 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %522 = icmp eq i64 %520, %521
  br i1 %522, label %523, label %552

523:                                              ; preds = %517
  %524 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %525 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %524, i32 0, i32 1
  %526 = load %struct.TYPE_12__*, %struct.TYPE_12__** %525, align 8
  %527 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %528 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = sub nsw i32 %529, 1
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %526, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %536 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %535, i32 0, i32 2
  %537 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %536, i32 0, i32 0
  store i32 %534, i32* %537, align 8
  %538 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %539 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %538, i32 0, i32 1
  %540 = load %struct.TYPE_12__*, %struct.TYPE_12__** %539, align 8
  %541 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %542 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %541, i32 0, i32 0
  %543 = load i32, i32* %542, align 8
  %544 = sub nsw i32 %543, 1
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %540, i64 %545
  %547 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %550 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %549, i32 0, i32 2
  %551 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %550, i32 0, i32 1
  store i32 %548, i32* %551, align 4
  br label %552

552:                                              ; preds = %523, %517
  br label %553

553:                                              ; preds = %552, %436
  %554 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %555 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %555, i32 0, i32 2
  store %struct.vega12_single_dpm_table* %556, %struct.vega12_single_dpm_table** %4, align 8
  %557 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %558 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %557, i32 0, i32 1
  %559 = load %struct.TYPE_12__*, %struct.TYPE_12__** %558, align 8
  %560 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %559, i64 0
  %561 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 4
  %563 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %564 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %563, i32 0, i32 2
  %565 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %564, i32 0, i32 0
  store i32 %562, i32* %565, align 8
  %566 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %567 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %566, i32 0, i32 1
  %568 = load %struct.TYPE_12__*, %struct.TYPE_12__** %567, align 8
  %569 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %570 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = sub nsw i32 %571, 1
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %568, i64 %573
  %575 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 4
  %577 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %578 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %577, i32 0, i32 2
  %579 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %578, i32 0, i32 1
  store i32 %576, i32* %579, align 4
  %580 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %581 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %580, i32 0, i32 1
  %582 = load %struct.TYPE_12__*, %struct.TYPE_12__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %582, i64 0
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %587 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %586, i32 0, i32 2
  %588 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %587, i32 0, i32 2
  store i32 %585, i32* %588, align 8
  %589 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %590 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %589, i32 0, i32 1
  %591 = load %struct.TYPE_12__*, %struct.TYPE_12__** %590, align 8
  %592 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %593 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = sub nsw i32 %594, 1
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %591, i64 %596
  %598 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 4
  %600 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %601 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %600, i32 0, i32 2
  %602 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %601, i32 0, i32 3
  store i32 %599, i32* %602, align 4
  %603 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %604 = call i64 @PP_CAP(i32 %603)
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %606, label %670

606:                                              ; preds = %553
  %607 = load i64, i64* @VEGA12_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %608 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %609 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = sext i32 %610 to i64
  %612 = icmp ult i64 %607, %611
  br i1 %612, label %613, label %634

613:                                              ; preds = %606
  %614 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %615 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %614, i32 0, i32 1
  %616 = load %struct.TYPE_12__*, %struct.TYPE_12__** %615, align 8
  %617 = load i64, i64* @VEGA12_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %618 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %616, i64 %617
  %619 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 4
  %621 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %622 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %621, i32 0, i32 2
  %623 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %622, i32 0, i32 0
  store i32 %620, i32* %623, align 8
  %624 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %625 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %624, i32 0, i32 1
  %626 = load %struct.TYPE_12__*, %struct.TYPE_12__** %625, align 8
  %627 = load i64, i64* @VEGA12_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %628 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %626, i64 %627
  %629 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %632 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %631, i32 0, i32 2
  %633 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %632, i32 0, i32 1
  store i32 %630, i32* %633, align 4
  br label %634

634:                                              ; preds = %613, %606
  %635 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %636 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %635, i32 0, i32 0
  %637 = load i64, i64* %636, align 8
  %638 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %639 = icmp eq i64 %637, %638
  br i1 %639, label %640, label %669

640:                                              ; preds = %634
  %641 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %642 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %641, i32 0, i32 1
  %643 = load %struct.TYPE_12__*, %struct.TYPE_12__** %642, align 8
  %644 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %645 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %644, i32 0, i32 0
  %646 = load i32, i32* %645, align 8
  %647 = sub nsw i32 %646, 1
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %643, i64 %648
  %650 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 4
  %652 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %653 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %652, i32 0, i32 2
  %654 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %653, i32 0, i32 0
  store i32 %651, i32* %654, align 8
  %655 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %656 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %655, i32 0, i32 1
  %657 = load %struct.TYPE_12__*, %struct.TYPE_12__** %656, align 8
  %658 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %659 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 8
  %661 = sub nsw i32 %660, 1
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %657, i64 %662
  %664 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 4
  %666 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %667 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %666, i32 0, i32 2
  %668 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %667, i32 0, i32 1
  store i32 %665, i32* %668, align 4
  br label %669

669:                                              ; preds = %640, %634
  br label %670

670:                                              ; preds = %669, %553
  %671 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %672 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %671, i32 0, i32 0
  %673 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %672, i32 0, i32 1
  store %struct.vega12_single_dpm_table* %673, %struct.vega12_single_dpm_table** %4, align 8
  %674 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %675 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %674, i32 0, i32 1
  %676 = load %struct.TYPE_12__*, %struct.TYPE_12__** %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %676, i64 0
  %678 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 4
  %680 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %681 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %680, i32 0, i32 2
  %682 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %681, i32 0, i32 0
  store i32 %679, i32* %682, align 8
  %683 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %684 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %683, i32 0, i32 1
  %685 = load %struct.TYPE_12__*, %struct.TYPE_12__** %684, align 8
  %686 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %687 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %686, i32 0, i32 0
  %688 = load i32, i32* %687, align 8
  %689 = sub nsw i32 %688, 1
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %685, i64 %690
  %692 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 4
  %694 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %695 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %694, i32 0, i32 2
  %696 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %695, i32 0, i32 1
  store i32 %693, i32* %696, align 4
  %697 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %698 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %697, i32 0, i32 1
  %699 = load %struct.TYPE_12__*, %struct.TYPE_12__** %698, align 8
  %700 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %699, i64 0
  %701 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %700, i32 0, i32 0
  %702 = load i32, i32* %701, align 4
  %703 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %704 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %703, i32 0, i32 2
  %705 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %704, i32 0, i32 2
  store i32 %702, i32* %705, align 8
  %706 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %707 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %706, i32 0, i32 1
  %708 = load %struct.TYPE_12__*, %struct.TYPE_12__** %707, align 8
  %709 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %710 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 8
  %712 = sub nsw i32 %711, 1
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %708, i64 %713
  %715 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %714, i32 0, i32 0
  %716 = load i32, i32* %715, align 4
  %717 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %718 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %717, i32 0, i32 2
  %719 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %718, i32 0, i32 3
  store i32 %716, i32* %719, align 4
  %720 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %721 = call i64 @PP_CAP(i32 %720)
  %722 = icmp ne i64 %721, 0
  br i1 %722, label %723, label %787

723:                                              ; preds = %670
  %724 = load i64, i64* @VEGA12_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %725 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %726 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %725, i32 0, i32 0
  %727 = load i32, i32* %726, align 8
  %728 = sext i32 %727 to i64
  %729 = icmp ult i64 %724, %728
  br i1 %729, label %730, label %751

730:                                              ; preds = %723
  %731 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %732 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %731, i32 0, i32 1
  %733 = load %struct.TYPE_12__*, %struct.TYPE_12__** %732, align 8
  %734 = load i64, i64* @VEGA12_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %735 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %733, i64 %734
  %736 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %735, i32 0, i32 0
  %737 = load i32, i32* %736, align 4
  %738 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %739 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %738, i32 0, i32 2
  %740 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %739, i32 0, i32 0
  store i32 %737, i32* %740, align 8
  %741 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %742 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %741, i32 0, i32 1
  %743 = load %struct.TYPE_12__*, %struct.TYPE_12__** %742, align 8
  %744 = load i64, i64* @VEGA12_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %745 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %743, i64 %744
  %746 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %745, i32 0, i32 0
  %747 = load i32, i32* %746, align 4
  %748 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %749 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %748, i32 0, i32 2
  %750 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %749, i32 0, i32 1
  store i32 %747, i32* %750, align 4
  br label %751

751:                                              ; preds = %730, %723
  %752 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %753 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %752, i32 0, i32 0
  %754 = load i64, i64* %753, align 8
  %755 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %756 = icmp eq i64 %754, %755
  br i1 %756, label %757, label %786

757:                                              ; preds = %751
  %758 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %759 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %758, i32 0, i32 1
  %760 = load %struct.TYPE_12__*, %struct.TYPE_12__** %759, align 8
  %761 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %762 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %761, i32 0, i32 0
  %763 = load i32, i32* %762, align 8
  %764 = sub nsw i32 %763, 1
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %760, i64 %765
  %767 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %766, i32 0, i32 0
  %768 = load i32, i32* %767, align 4
  %769 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %770 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %769, i32 0, i32 2
  %771 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %770, i32 0, i32 0
  store i32 %768, i32* %771, align 8
  %772 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %773 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %772, i32 0, i32 1
  %774 = load %struct.TYPE_12__*, %struct.TYPE_12__** %773, align 8
  %775 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %776 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %775, i32 0, i32 0
  %777 = load i32, i32* %776, align 8
  %778 = sub nsw i32 %777, 1
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %774, i64 %779
  %781 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %780, i32 0, i32 0
  %782 = load i32, i32* %781, align 4
  %783 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %784 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %783, i32 0, i32 2
  %785 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %784, i32 0, i32 1
  store i32 %782, i32* %785, align 4
  br label %786

786:                                              ; preds = %757, %751
  br label %787

787:                                              ; preds = %786, %670
  %788 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %3, align 8
  %789 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %788, i32 0, i32 0
  %790 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %789, i32 0, i32 0
  store %struct.vega12_single_dpm_table* %790, %struct.vega12_single_dpm_table** %4, align 8
  %791 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %792 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %791, i32 0, i32 1
  %793 = load %struct.TYPE_12__*, %struct.TYPE_12__** %792, align 8
  %794 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %793, i64 0
  %795 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %794, i32 0, i32 0
  %796 = load i32, i32* %795, align 4
  %797 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %798 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %797, i32 0, i32 2
  %799 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %798, i32 0, i32 0
  store i32 %796, i32* %799, align 8
  %800 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %801 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %800, i32 0, i32 1
  %802 = load %struct.TYPE_12__*, %struct.TYPE_12__** %801, align 8
  %803 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %804 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %803, i32 0, i32 0
  %805 = load i32, i32* %804, align 8
  %806 = sub nsw i32 %805, 1
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %802, i64 %807
  %809 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %808, i32 0, i32 0
  %810 = load i32, i32* %809, align 4
  %811 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %812 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %811, i32 0, i32 2
  %813 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %812, i32 0, i32 1
  store i32 %810, i32* %813, align 4
  %814 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %815 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %814, i32 0, i32 1
  %816 = load %struct.TYPE_12__*, %struct.TYPE_12__** %815, align 8
  %817 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %816, i64 0
  %818 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %817, i32 0, i32 0
  %819 = load i32, i32* %818, align 4
  %820 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %821 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %820, i32 0, i32 2
  %822 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %821, i32 0, i32 2
  store i32 %819, i32* %822, align 8
  %823 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %824 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %823, i32 0, i32 1
  %825 = load %struct.TYPE_12__*, %struct.TYPE_12__** %824, align 8
  %826 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %827 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %826, i32 0, i32 0
  %828 = load i32, i32* %827, align 8
  %829 = sub nsw i32 %828, 1
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %825, i64 %830
  %832 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %831, i32 0, i32 0
  %833 = load i32, i32* %832, align 4
  %834 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %835 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %834, i32 0, i32 2
  %836 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %835, i32 0, i32 3
  store i32 %833, i32* %836, align 4
  %837 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %838 = call i64 @PP_CAP(i32 %837)
  %839 = icmp ne i64 %838, 0
  br i1 %839, label %840, label %904

840:                                              ; preds = %787
  %841 = load i64, i64* @VEGA12_UMD_PSTATE_VCEMCLK_LEVEL, align 8
  %842 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %843 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %842, i32 0, i32 0
  %844 = load i32, i32* %843, align 8
  %845 = sext i32 %844 to i64
  %846 = icmp ult i64 %841, %845
  br i1 %846, label %847, label %868

847:                                              ; preds = %840
  %848 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %849 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %848, i32 0, i32 1
  %850 = load %struct.TYPE_12__*, %struct.TYPE_12__** %849, align 8
  %851 = load i64, i64* @VEGA12_UMD_PSTATE_VCEMCLK_LEVEL, align 8
  %852 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %850, i64 %851
  %853 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %852, i32 0, i32 0
  %854 = load i32, i32* %853, align 4
  %855 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %856 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %855, i32 0, i32 2
  %857 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %856, i32 0, i32 0
  store i32 %854, i32* %857, align 8
  %858 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %859 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %858, i32 0, i32 1
  %860 = load %struct.TYPE_12__*, %struct.TYPE_12__** %859, align 8
  %861 = load i64, i64* @VEGA12_UMD_PSTATE_VCEMCLK_LEVEL, align 8
  %862 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %860, i64 %861
  %863 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %862, i32 0, i32 0
  %864 = load i32, i32* %863, align 4
  %865 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %866 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %865, i32 0, i32 2
  %867 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %866, i32 0, i32 1
  store i32 %864, i32* %867, align 4
  br label %868

868:                                              ; preds = %847, %840
  %869 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %870 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %869, i32 0, i32 0
  %871 = load i64, i64* %870, align 8
  %872 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %873 = icmp eq i64 %871, %872
  br i1 %873, label %874, label %903

874:                                              ; preds = %868
  %875 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %876 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %875, i32 0, i32 1
  %877 = load %struct.TYPE_12__*, %struct.TYPE_12__** %876, align 8
  %878 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %879 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %878, i32 0, i32 0
  %880 = load i32, i32* %879, align 8
  %881 = sub nsw i32 %880, 1
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %877, i64 %882
  %884 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %883, i32 0, i32 0
  %885 = load i32, i32* %884, align 4
  %886 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %887 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %886, i32 0, i32 2
  %888 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %887, i32 0, i32 0
  store i32 %885, i32* %888, align 8
  %889 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %890 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %889, i32 0, i32 1
  %891 = load %struct.TYPE_12__*, %struct.TYPE_12__** %890, align 8
  %892 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %893 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %892, i32 0, i32 0
  %894 = load i32, i32* %893, align 8
  %895 = sub nsw i32 %894, 1
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %891, i64 %896
  %898 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %897, i32 0, i32 0
  %899 = load i32, i32* %898, align 4
  %900 = load %struct.vega12_single_dpm_table*, %struct.vega12_single_dpm_table** %4, align 8
  %901 = getelementptr inbounds %struct.vega12_single_dpm_table, %struct.vega12_single_dpm_table* %900, i32 0, i32 2
  %902 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %901, i32 0, i32 1
  store i32 %899, i32* %902, align 4
  br label %903

903:                                              ; preds = %874, %868
  br label %904

904:                                              ; preds = %903, %787
  ret i32 0
}

declare dso_local i64 @PP_CAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
