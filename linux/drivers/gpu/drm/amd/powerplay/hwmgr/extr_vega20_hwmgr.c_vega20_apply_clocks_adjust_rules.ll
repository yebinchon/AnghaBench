; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_apply_clocks_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_apply_clocks_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i32 }
%struct.vega20_hwmgr = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i64, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@VG20_CLOCK_MAX_DEFAULT = common dso_local global i8* null, align 8
@PHM_PlatformCaps_UMDPState = common dso_local global i32 0, align 4
@VEGA20_UMD_PSTATE_GFXCLK_LEVEL = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_MCLK_LEVEL = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_UVDCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_SOCCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_VCEMCLK_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega20_apply_clocks_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_apply_clocks_adjust_rules(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega20_hwmgr*, align 8
  %4 = alloca %struct.vega20_single_dpm_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.vega20_hwmgr*
  store %struct.vega20_hwmgr* %13, %struct.vega20_hwmgr** %3, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 1, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi i1 [ true, %20 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %34 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 6
  store %struct.vega20_single_dpm_table* %40, %struct.vega20_single_dpm_table** %4, align 8
  %41 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %42 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %41, i32 0, i32 1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %48 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %53 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %56 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %62 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %65 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %66 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %69 = call i64 @PP_CAP(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %157

71:                                               ; preds = %30
  %72 = load i64, i64* @VEGA20_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %73 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %74 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %79 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i64, i64* @VEGA20_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %86 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %89 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = load i64, i64* @VEGA20_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %96 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %77, %71
  %99 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %100 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %106 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %105, i32 0, i32 1
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %112 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %115 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %121 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %104, %98
  %124 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %125 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %123
  %130 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %131 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %130, i32 0, i32 1
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %134 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %135, 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %141 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %144 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %147 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = sub i64 %148, 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %154 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  br label %156

156:                                              ; preds = %129, %123
  br label %157

157:                                              ; preds = %156, %30
  %158 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %159 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 5
  store %struct.vega20_single_dpm_table* %160, %struct.vega20_single_dpm_table** %4, align 8
  %161 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %162 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %168 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 8
  %170 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %173 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 4
  %175 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %176 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %175, i32 0, i32 1
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %182 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 8
  %184 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %185 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %186 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  store i8* %184, i8** %187, align 8
  %188 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %189 = call i64 @PP_CAP(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %277

191:                                              ; preds = %157
  %192 = load i64, i64* @VEGA20_UMD_PSTATE_MCLK_LEVEL, align 8
  %193 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %194 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ult i64 %192, %195
  br i1 %196, label %197, label %218

197:                                              ; preds = %191
  %198 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %199 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %198, i32 0, i32 1
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %199, align 8
  %201 = load i64, i64* @VEGA20_UMD_PSTATE_MCLK_LEVEL, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %206 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %209 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %208, i32 0, i32 1
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = load i64, i64* @VEGA20_UMD_PSTATE_MCLK_LEVEL, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %216 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 4
  br label %218

218:                                              ; preds = %197, %191
  %219 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %220 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %243

224:                                              ; preds = %218
  %225 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %226 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %225, i32 0, i32 1
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %232 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  %234 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %235 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %234, i32 0, i32 1
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i64 0
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %241 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 1
  store i32 %239, i32* %242, align 4
  br label %243

243:                                              ; preds = %224, %218
  %244 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %245 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %276

249:                                              ; preds = %243
  %250 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %251 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %250, i32 0, i32 1
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %254 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = sub i64 %255, 1
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %261 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  store i32 %259, i32* %262, align 8
  %263 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %264 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %263, i32 0, i32 1
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %264, align 8
  %266 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %267 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = sub i64 %268, 1
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %274 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  store i32 %272, i32* %275, align 4
  br label %276

276:                                              ; preds = %249, %243
  br label %277

277:                                              ; preds = %276, %157
  %278 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %279 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %283 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %282, i32 0, i32 1
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = sdiv i32 %286, 100
  %288 = icmp slt i32 %281, %287
  br i1 %288, label %289, label %299

289:                                              ; preds = %277
  %290 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %291 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %290, i32 0, i32 1
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = sdiv i32 %294, 100
  %296 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %297 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 2
  store i32 %295, i32* %298, align 8
  br label %299

299:                                              ; preds = %289, %277
  %300 = load i32, i32* %6, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %370

302:                                              ; preds = %299
  %303 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %304 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %303, i32 0, i32 1
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %304, align 8
  %306 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %307 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = sub i64 %308, 1
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %314 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 2
  store i32 %312, i32* %315, align 8
  store i32 0, i32* %8, align 4
  br label %316

316:                                              ; preds = %366, %302
  %317 = load i32, i32* %8, align 4
  %318 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %319 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sub nsw i32 %321, 1
  %323 = icmp slt i32 %317, %322
  br i1 %323, label %324, label %369

324:                                              ; preds = %316
  %325 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %326 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = load i32, i32* %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %9, align 4
  %335 = icmp sle i32 %333, %334
  br i1 %335, label %336, label %365

336:                                              ; preds = %324
  %337 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %338 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %337, i32 0, i32 1
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %346 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %345, i32 0, i32 1
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = sdiv i32 %349, 100
  %351 = icmp sge i32 %344, %350
  br i1 %351, label %352, label %364

352:                                              ; preds = %336
  %353 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %354 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %353, i32 0, i32 1
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %362 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 2
  store i32 %360, i32* %363, align 8
  br label %369

364:                                              ; preds = %336
  br label %365

365:                                              ; preds = %364, %324
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %8, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %8, align 4
  br label %316

369:                                              ; preds = %352, %316
  br label %370

370:                                              ; preds = %369, %299
  %371 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %372 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %371, i32 0, i32 1
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 3
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %391

377:                                              ; preds = %370
  %378 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %379 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %378, i32 0, i32 1
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %379, align 8
  %381 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %382 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = sub i64 %383, 1
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %389 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i32 0, i32 2
  store i32 %387, i32* %390, align 8
  br label %391

391:                                              ; preds = %377, %370
  %392 = load i32, i32* %6, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %410

394:                                              ; preds = %391
  %395 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %396 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %400 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %399, i32 0, i32 1
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %400, align 8
  %402 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %403 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = sub i64 %404, 1
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %398, %408
  br i1 %409, label %428, label %410

410:                                              ; preds = %394, %391
  %411 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %412 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %411, i32 0, i32 1
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = sdiv i32 %415, 100
  %417 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %418 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %417, i32 0, i32 1
  %419 = load %struct.TYPE_12__*, %struct.TYPE_12__** %418, align 8
  %420 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %421 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = sub i64 %422, 1
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = icmp sge i32 %416, %426
  br i1 %427, label %428, label %429

428:                                              ; preds = %410, %394
  store i32 1, i32* %7, align 4
  br label %430

429:                                              ; preds = %410
  store i32 0, i32* %7, align 4
  br label %430

430:                                              ; preds = %429, %428
  %431 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %432 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 4
  store %struct.vega20_single_dpm_table* %433, %struct.vega20_single_dpm_table** %4, align 8
  %434 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %435 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %434, i32 0, i32 1
  %436 = load %struct.TYPE_12__*, %struct.TYPE_12__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i64 0
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %441 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %440, i32 0, i32 2
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %441, i32 0, i32 0
  store i32 %439, i32* %442, align 8
  %443 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %444 = ptrtoint i8* %443 to i32
  %445 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %446 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %445, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i32 0, i32 1
  store i32 %444, i32* %447, align 4
  %448 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %449 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %448, i32 0, i32 1
  %450 = load %struct.TYPE_12__*, %struct.TYPE_12__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i64 0
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %455 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 2
  store i32 %453, i32* %456, align 8
  %457 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %458 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %459 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %458, i32 0, i32 2
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %459, i32 0, i32 3
  store i8* %457, i8** %460, align 8
  %461 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %462 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %461, i32 0, i32 1
  %463 = load %struct.TYPE_9__*, %struct.TYPE_9__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %463, i32 0, i32 3
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %470, label %467

467:                                              ; preds = %430
  %468 = load i32, i32* %7, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %484

470:                                              ; preds = %467, %430
  %471 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %472 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %471, i32 0, i32 1
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %472, align 8
  %474 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %475 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = sub i64 %476, 1
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %482 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %481, i32 0, i32 2
  %483 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %482, i32 0, i32 0
  store i32 %480, i32* %483, align 8
  br label %484

484:                                              ; preds = %470, %467
  %485 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %486 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %486, i32 0, i32 3
  store %struct.vega20_single_dpm_table* %487, %struct.vega20_single_dpm_table** %4, align 8
  %488 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %489 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %488, i32 0, i32 1
  %490 = load %struct.TYPE_12__*, %struct.TYPE_12__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %490, i64 0
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %495 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %494, i32 0, i32 2
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i32 0, i32 0
  store i32 %493, i32* %496, align 8
  %497 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %498 = ptrtoint i8* %497 to i32
  %499 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %500 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %499, i32 0, i32 2
  %501 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %500, i32 0, i32 1
  store i32 %498, i32* %501, align 4
  %502 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %503 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %502, i32 0, i32 1
  %504 = load %struct.TYPE_12__*, %struct.TYPE_12__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %504, i64 0
  %506 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %509 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %509, i32 0, i32 2
  store i32 %507, i32* %510, align 8
  %511 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %512 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %513 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %512, i32 0, i32 2
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %513, i32 0, i32 3
  store i8* %511, i8** %514, align 8
  %515 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %516 = call i64 @PP_CAP(i32 %515)
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %579

518:                                              ; preds = %484
  %519 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %520 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %521 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = icmp ult i64 %519, %522
  br i1 %523, label %524, label %545

524:                                              ; preds = %518
  %525 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %526 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %525, i32 0, i32 1
  %527 = load %struct.TYPE_12__*, %struct.TYPE_12__** %526, align 8
  %528 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %529 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %533 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %532, i32 0, i32 2
  %534 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %533, i32 0, i32 0
  store i32 %531, i32* %534, align 8
  %535 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %536 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %535, i32 0, i32 1
  %537 = load %struct.TYPE_12__*, %struct.TYPE_12__** %536, align 8
  %538 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %539 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %543 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %542, i32 0, i32 2
  %544 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %543, i32 0, i32 1
  store i32 %541, i32* %544, align 4
  br label %545

545:                                              ; preds = %524, %518
  %546 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %547 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %550 = icmp eq i64 %548, %549
  br i1 %550, label %551, label %578

551:                                              ; preds = %545
  %552 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %553 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %552, i32 0, i32 1
  %554 = load %struct.TYPE_12__*, %struct.TYPE_12__** %553, align 8
  %555 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %556 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %555, i32 0, i32 0
  %557 = load i64, i64* %556, align 8
  %558 = sub i64 %557, 1
  %559 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %554, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 4
  %562 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %563 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %562, i32 0, i32 2
  %564 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %563, i32 0, i32 0
  store i32 %561, i32* %564, align 8
  %565 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %566 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %565, i32 0, i32 1
  %567 = load %struct.TYPE_12__*, %struct.TYPE_12__** %566, align 8
  %568 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %569 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %568, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = sub i64 %570, 1
  %572 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %567, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %576 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %575, i32 0, i32 2
  %577 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %576, i32 0, i32 1
  store i32 %574, i32* %577, align 4
  br label %578

578:                                              ; preds = %551, %545
  br label %579

579:                                              ; preds = %578, %484
  %580 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %581 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %581, i32 0, i32 2
  store %struct.vega20_single_dpm_table* %582, %struct.vega20_single_dpm_table** %4, align 8
  %583 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %584 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %583, i32 0, i32 1
  %585 = load %struct.TYPE_12__*, %struct.TYPE_12__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %585, i64 0
  %587 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %590 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %589, i32 0, i32 2
  %591 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %590, i32 0, i32 0
  store i32 %588, i32* %591, align 8
  %592 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %593 = ptrtoint i8* %592 to i32
  %594 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %595 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %594, i32 0, i32 2
  %596 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %595, i32 0, i32 1
  store i32 %593, i32* %596, align 4
  %597 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %598 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %597, i32 0, i32 1
  %599 = load %struct.TYPE_12__*, %struct.TYPE_12__** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %599, i64 0
  %601 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 4
  %603 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %604 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %603, i32 0, i32 2
  %605 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %604, i32 0, i32 2
  store i32 %602, i32* %605, align 8
  %606 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %607 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %608 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %607, i32 0, i32 2
  %609 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %608, i32 0, i32 3
  store i8* %606, i8** %609, align 8
  %610 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %611 = call i64 @PP_CAP(i32 %610)
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %674

613:                                              ; preds = %579
  %614 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %615 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %616 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %615, i32 0, i32 0
  %617 = load i64, i64* %616, align 8
  %618 = icmp ult i64 %614, %617
  br i1 %618, label %619, label %640

619:                                              ; preds = %613
  %620 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %621 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %620, i32 0, i32 1
  %622 = load %struct.TYPE_12__*, %struct.TYPE_12__** %621, align 8
  %623 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %624 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %622, i64 %623
  %625 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %624, i32 0, i32 0
  %626 = load i32, i32* %625, align 4
  %627 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %628 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %627, i32 0, i32 2
  %629 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %628, i32 0, i32 0
  store i32 %626, i32* %629, align 8
  %630 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %631 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %630, i32 0, i32 1
  %632 = load %struct.TYPE_12__*, %struct.TYPE_12__** %631, align 8
  %633 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %634 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %632, i64 %633
  %635 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %634, i32 0, i32 0
  %636 = load i32, i32* %635, align 4
  %637 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %638 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %637, i32 0, i32 2
  %639 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %638, i32 0, i32 1
  store i32 %636, i32* %639, align 4
  br label %640

640:                                              ; preds = %619, %613
  %641 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %642 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %641, i32 0, i32 0
  %643 = load i64, i64* %642, align 8
  %644 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %645 = icmp eq i64 %643, %644
  br i1 %645, label %646, label %673

646:                                              ; preds = %640
  %647 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %648 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %647, i32 0, i32 1
  %649 = load %struct.TYPE_12__*, %struct.TYPE_12__** %648, align 8
  %650 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %651 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %650, i32 0, i32 0
  %652 = load i64, i64* %651, align 8
  %653 = sub i64 %652, 1
  %654 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %649, i64 %653
  %655 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %654, i32 0, i32 0
  %656 = load i32, i32* %655, align 4
  %657 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %658 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %657, i32 0, i32 2
  %659 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %658, i32 0, i32 0
  store i32 %656, i32* %659, align 8
  %660 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %661 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %660, i32 0, i32 1
  %662 = load %struct.TYPE_12__*, %struct.TYPE_12__** %661, align 8
  %663 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %664 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %663, i32 0, i32 0
  %665 = load i64, i64* %664, align 8
  %666 = sub i64 %665, 1
  %667 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %662, i64 %666
  %668 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %667, i32 0, i32 0
  %669 = load i32, i32* %668, align 4
  %670 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %671 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %670, i32 0, i32 2
  %672 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %671, i32 0, i32 1
  store i32 %669, i32* %672, align 4
  br label %673

673:                                              ; preds = %646, %640
  br label %674

674:                                              ; preds = %673, %579
  %675 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %676 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %675, i32 0, i32 0
  %677 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %676, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %677, %struct.vega20_single_dpm_table** %4, align 8
  %678 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %679 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %678, i32 0, i32 1
  %680 = load %struct.TYPE_12__*, %struct.TYPE_12__** %679, align 8
  %681 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %680, i64 0
  %682 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %681, i32 0, i32 0
  %683 = load i32, i32* %682, align 4
  %684 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %685 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %684, i32 0, i32 2
  %686 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %685, i32 0, i32 0
  store i32 %683, i32* %686, align 8
  %687 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %688 = ptrtoint i8* %687 to i32
  %689 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %690 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %689, i32 0, i32 2
  %691 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %690, i32 0, i32 1
  store i32 %688, i32* %691, align 4
  %692 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %693 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %692, i32 0, i32 1
  %694 = load %struct.TYPE_12__*, %struct.TYPE_12__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %694, i64 0
  %696 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %695, i32 0, i32 0
  %697 = load i32, i32* %696, align 4
  %698 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %699 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %698, i32 0, i32 2
  %700 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %699, i32 0, i32 2
  store i32 %697, i32* %700, align 8
  %701 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %702 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %703 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %702, i32 0, i32 2
  %704 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %703, i32 0, i32 3
  store i8* %701, i8** %704, align 8
  %705 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %706 = call i64 @PP_CAP(i32 %705)
  %707 = icmp ne i64 %706, 0
  br i1 %707, label %708, label %769

708:                                              ; preds = %674
  %709 = load i64, i64* @VEGA20_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %710 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %711 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %710, i32 0, i32 0
  %712 = load i64, i64* %711, align 8
  %713 = icmp ult i64 %709, %712
  br i1 %713, label %714, label %735

714:                                              ; preds = %708
  %715 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %716 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %715, i32 0, i32 1
  %717 = load %struct.TYPE_12__*, %struct.TYPE_12__** %716, align 8
  %718 = load i64, i64* @VEGA20_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %719 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %717, i64 %718
  %720 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %719, i32 0, i32 0
  %721 = load i32, i32* %720, align 4
  %722 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %723 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %722, i32 0, i32 2
  %724 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %723, i32 0, i32 0
  store i32 %721, i32* %724, align 8
  %725 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %726 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %725, i32 0, i32 1
  %727 = load %struct.TYPE_12__*, %struct.TYPE_12__** %726, align 8
  %728 = load i64, i64* @VEGA20_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %729 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %727, i64 %728
  %730 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %729, i32 0, i32 0
  %731 = load i32, i32* %730, align 4
  %732 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %733 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %732, i32 0, i32 2
  %734 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %733, i32 0, i32 1
  store i32 %731, i32* %734, align 4
  br label %735

735:                                              ; preds = %714, %708
  %736 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %737 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %736, i32 0, i32 0
  %738 = load i64, i64* %737, align 8
  %739 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %740 = icmp eq i64 %738, %739
  br i1 %740, label %741, label %768

741:                                              ; preds = %735
  %742 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %743 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %742, i32 0, i32 1
  %744 = load %struct.TYPE_12__*, %struct.TYPE_12__** %743, align 8
  %745 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %746 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %745, i32 0, i32 0
  %747 = load i64, i64* %746, align 8
  %748 = sub i64 %747, 1
  %749 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %744, i64 %748
  %750 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %749, i32 0, i32 0
  %751 = load i32, i32* %750, align 4
  %752 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %753 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %752, i32 0, i32 2
  %754 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %753, i32 0, i32 0
  store i32 %751, i32* %754, align 8
  %755 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %756 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %755, i32 0, i32 1
  %757 = load %struct.TYPE_12__*, %struct.TYPE_12__** %756, align 8
  %758 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %759 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %758, i32 0, i32 0
  %760 = load i64, i64* %759, align 8
  %761 = sub i64 %760, 1
  %762 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %757, i64 %761
  %763 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %762, i32 0, i32 0
  %764 = load i32, i32* %763, align 4
  %765 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %766 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %765, i32 0, i32 2
  %767 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %766, i32 0, i32 1
  store i32 %764, i32* %767, align 4
  br label %768

768:                                              ; preds = %741, %735
  br label %769

769:                                              ; preds = %768, %674
  %770 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %771 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %770, i32 0, i32 0
  %772 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %771, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %772, %struct.vega20_single_dpm_table** %4, align 8
  %773 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %774 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %773, i32 0, i32 1
  %775 = load %struct.TYPE_12__*, %struct.TYPE_12__** %774, align 8
  %776 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %775, i64 0
  %777 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %776, i32 0, i32 0
  %778 = load i32, i32* %777, align 4
  %779 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %780 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %779, i32 0, i32 2
  %781 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %780, i32 0, i32 0
  store i32 %778, i32* %781, align 8
  %782 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %783 = ptrtoint i8* %782 to i32
  %784 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %785 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %784, i32 0, i32 2
  %786 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %785, i32 0, i32 1
  store i32 %783, i32* %786, align 4
  %787 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %788 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %787, i32 0, i32 1
  %789 = load %struct.TYPE_12__*, %struct.TYPE_12__** %788, align 8
  %790 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %789, i64 0
  %791 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %790, i32 0, i32 0
  %792 = load i32, i32* %791, align 4
  %793 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %794 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %793, i32 0, i32 2
  %795 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %794, i32 0, i32 2
  store i32 %792, i32* %795, align 8
  %796 = load i8*, i8** @VG20_CLOCK_MAX_DEFAULT, align 8
  %797 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %798 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %797, i32 0, i32 2
  %799 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %798, i32 0, i32 3
  store i8* %796, i8** %799, align 8
  %800 = load i32, i32* @PHM_PlatformCaps_UMDPState, align 4
  %801 = call i64 @PP_CAP(i32 %800)
  %802 = icmp ne i64 %801, 0
  br i1 %802, label %803, label %864

803:                                              ; preds = %769
  %804 = load i64, i64* @VEGA20_UMD_PSTATE_VCEMCLK_LEVEL, align 8
  %805 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %806 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %805, i32 0, i32 0
  %807 = load i64, i64* %806, align 8
  %808 = icmp ult i64 %804, %807
  br i1 %808, label %809, label %830

809:                                              ; preds = %803
  %810 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %811 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %810, i32 0, i32 1
  %812 = load %struct.TYPE_12__*, %struct.TYPE_12__** %811, align 8
  %813 = load i64, i64* @VEGA20_UMD_PSTATE_VCEMCLK_LEVEL, align 8
  %814 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %812, i64 %813
  %815 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %814, i32 0, i32 0
  %816 = load i32, i32* %815, align 4
  %817 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %818 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %817, i32 0, i32 2
  %819 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %818, i32 0, i32 0
  store i32 %816, i32* %819, align 8
  %820 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %821 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %820, i32 0, i32 1
  %822 = load %struct.TYPE_12__*, %struct.TYPE_12__** %821, align 8
  %823 = load i64, i64* @VEGA20_UMD_PSTATE_VCEMCLK_LEVEL, align 8
  %824 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %822, i64 %823
  %825 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %824, i32 0, i32 0
  %826 = load i32, i32* %825, align 4
  %827 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %828 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %827, i32 0, i32 2
  %829 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %828, i32 0, i32 1
  store i32 %826, i32* %829, align 4
  br label %830

830:                                              ; preds = %809, %803
  %831 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %832 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %831, i32 0, i32 0
  %833 = load i64, i64* %832, align 8
  %834 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %835 = icmp eq i64 %833, %834
  br i1 %835, label %836, label %863

836:                                              ; preds = %830
  %837 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %838 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %837, i32 0, i32 1
  %839 = load %struct.TYPE_12__*, %struct.TYPE_12__** %838, align 8
  %840 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %841 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %840, i32 0, i32 0
  %842 = load i64, i64* %841, align 8
  %843 = sub i64 %842, 1
  %844 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %839, i64 %843
  %845 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %844, i32 0, i32 0
  %846 = load i32, i32* %845, align 4
  %847 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %848 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %847, i32 0, i32 2
  %849 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %848, i32 0, i32 0
  store i32 %846, i32* %849, align 8
  %850 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %851 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %850, i32 0, i32 1
  %852 = load %struct.TYPE_12__*, %struct.TYPE_12__** %851, align 8
  %853 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %854 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %853, i32 0, i32 0
  %855 = load i64, i64* %854, align 8
  %856 = sub i64 %855, 1
  %857 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %852, i64 %856
  %858 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %857, i32 0, i32 0
  %859 = load i32, i32* %858, align 4
  %860 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %861 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %860, i32 0, i32 2
  %862 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %861, i32 0, i32 1
  store i32 %859, i32* %862, align 4
  br label %863

863:                                              ; preds = %836, %830
  br label %864

864:                                              ; preds = %863, %769
  ret i32 0
}

declare dso_local i64 @PP_CAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
