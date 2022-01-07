; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_apply_clocks_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_apply_clocks_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.TYPE_8__*, %struct.smu_dpm_context }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 }
%struct.smu_dpm_context = type { i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.vega20_dpm_table = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@VEGA20_UMD_PSTATE_GFXCLK_LEVEL = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_PEAK = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_MCLK_LEVEL = common dso_local global i64 0, align 8
@AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_UVDCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_SOCCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_VCEMCLK_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @vega20_apply_clocks_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_apply_clocks_adjust_rules(%struct.smu_context* %0) #0 {
  %2 = alloca %struct.smu_context*, align 8
  %3 = alloca %struct.smu_dpm_context*, align 8
  %4 = alloca %struct.vega20_dpm_table*, align 8
  %5 = alloca %struct.vega20_single_dpm_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %2, align 8
  %10 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %11 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %10, i32 0, i32 1
  store %struct.smu_dpm_context* %11, %struct.smu_dpm_context** %3, align 8
  %12 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %13 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.vega20_dpm_table*
  store %struct.vega20_dpm_table* %15, %struct.vega20_dpm_table** %4, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %17 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 1, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %24 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %1
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi i1 [ true, %22 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %36 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %4, align 8
  %41 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %40, i32 0, i32 5
  store %struct.vega20_single_dpm_table* %41, %struct.vega20_single_dpm_table** %5, align 8
  %42 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %43 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %49 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %52 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %55 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %63 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %66 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %72 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %75 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %78 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %86 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load i64, i64* @VEGA20_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %89 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %90 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %88, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %32
  %95 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %96 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i64, i64* @VEGA20_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %103 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %106 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i64, i64* @VEGA20_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %113 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  br label %115

115:                                              ; preds = %94, %32
  %116 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %117 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %115
  %122 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %123 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %129 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %132 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %138 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %121, %115
  %141 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %142 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %140
  %147 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %148 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %151 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %159 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 8
  %161 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %162 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %161, i32 0, i32 1
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %165 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %173 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 4
  br label %175

175:                                              ; preds = %146, %140
  %176 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %4, align 8
  %177 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %176, i32 0, i32 4
  store %struct.vega20_single_dpm_table* %177, %struct.vega20_single_dpm_table** %5, align 8
  %178 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %179 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %178, i32 0, i32 1
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %185 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  %187 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %188 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %187, i32 0, i32 1
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %191 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %199 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  %201 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %202 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %201, i32 0, i32 1
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %208 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 2
  store i32 %206, i32* %209, align 8
  %210 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %211 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %210, i32 0, i32 1
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %211, align 8
  %213 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %214 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sub nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %222 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 3
  store i32 %220, i32* %223, align 4
  %224 = load i64, i64* @VEGA20_UMD_PSTATE_MCLK_LEVEL, align 8
  %225 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %226 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = icmp ult i64 %224, %228
  br i1 %229, label %230, label %251

230:                                              ; preds = %175
  %231 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %232 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %231, i32 0, i32 1
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = load i64, i64* @VEGA20_UMD_PSTATE_MCLK_LEVEL, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %239 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 8
  %241 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %242 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %241, i32 0, i32 1
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = load i64, i64* @VEGA20_UMD_PSTATE_MCLK_LEVEL, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %249 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  store i32 %247, i32* %250, align 4
  br label %251

251:                                              ; preds = %230, %175
  %252 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %253 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %276

257:                                              ; preds = %251
  %258 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %259 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %258, i32 0, i32 1
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %265 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  store i32 %263, i32* %266, align 8
  %267 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %268 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %267, i32 0, i32 1
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i64 0
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %274 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 1
  store i32 %272, i32* %275, align 4
  br label %276

276:                                              ; preds = %257, %251
  %277 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %278 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %311

282:                                              ; preds = %276
  %283 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %284 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %283, i32 0, i32 1
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %284, align 8
  %286 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %287 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sub nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %295 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  store i32 %293, i32* %296, align 8
  %297 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %298 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %297, i32 0, i32 1
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %298, align 8
  %300 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %301 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sub nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %309 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 1
  store i32 %307, i32* %310, align 4
  br label %311

311:                                              ; preds = %282, %276
  %312 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %313 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %317 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %316, i32 0, i32 0
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = sdiv i32 %320, 100
  %322 = icmp slt i32 %315, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %311
  %324 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %325 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %324, i32 0, i32 0
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = sdiv i32 %328, 100
  %330 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %331 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 2
  store i32 %329, i32* %332, align 8
  br label %333

333:                                              ; preds = %323, %311
  %334 = load i32, i32* %7, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %407

336:                                              ; preds = %333
  %337 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %338 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %337, i32 0, i32 1
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %338, align 8
  %340 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %341 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %349 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 2
  store i32 %347, i32* %350, align 8
  store i32 0, i32* %8, align 4
  br label %351

351:                                              ; preds = %403, %336
  %352 = load i32, i32* %8, align 4
  %353 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %354 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %353, i32 0, i32 1
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = sub nsw i32 %357, 1
  %359 = icmp slt i32 %352, %358
  br i1 %359, label %360, label %406

360:                                              ; preds = %351
  %361 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %362 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %361, i32 0, i32 1
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 1
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %364, align 8
  %366 = load i32, i32* %8, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %9, align 4
  %372 = icmp sle i32 %370, %371
  br i1 %372, label %373, label %402

373:                                              ; preds = %360
  %374 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %375 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %374, i32 0, i32 1
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %375, align 8
  %377 = load i32, i32* %8, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %383 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %382, i32 0, i32 0
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = sdiv i32 %386, 100
  %388 = icmp sge i32 %381, %387
  br i1 %388, label %389, label %401

389:                                              ; preds = %373
  %390 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %391 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %390, i32 0, i32 1
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %391, align 8
  %393 = load i32, i32* %8, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %399 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %398, i32 0, i32 2
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 2
  store i32 %397, i32* %400, align 8
  br label %406

401:                                              ; preds = %373
  br label %402

402:                                              ; preds = %401, %360
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %8, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %8, align 4
  br label %351

406:                                              ; preds = %389, %351
  br label %407

407:                                              ; preds = %406, %333
  %408 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %409 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %408, i32 0, i32 0
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 3
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %429

414:                                              ; preds = %407
  %415 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %416 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %415, i32 0, i32 1
  %417 = load %struct.TYPE_10__*, %struct.TYPE_10__** %416, align 8
  %418 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %419 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = sub nsw i32 %420, 1
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %427 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 2
  store i32 %425, i32* %428, align 8
  br label %429

429:                                              ; preds = %414, %407
  %430 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %4, align 8
  %431 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %430, i32 0, i32 3
  store %struct.vega20_single_dpm_table* %431, %struct.vega20_single_dpm_table** %5, align 8
  %432 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %433 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %432, i32 0, i32 1
  %434 = load %struct.TYPE_10__*, %struct.TYPE_10__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i64 0
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %439 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %438, i32 0, i32 2
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 0
  store i32 %437, i32* %440, align 8
  %441 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %442 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %441, i32 0, i32 1
  %443 = load %struct.TYPE_10__*, %struct.TYPE_10__** %442, align 8
  %444 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %445 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = sub nsw i32 %446, 1
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %453 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %452, i32 0, i32 2
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 1
  store i32 %451, i32* %454, align 4
  %455 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %456 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %455, i32 0, i32 1
  %457 = load %struct.TYPE_10__*, %struct.TYPE_10__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i64 0
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %462 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %461, i32 0, i32 2
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 2
  store i32 %460, i32* %463, align 8
  %464 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %465 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %464, i32 0, i32 1
  %466 = load %struct.TYPE_10__*, %struct.TYPE_10__** %465, align 8
  %467 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %468 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = sub nsw i32 %469, 1
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %466, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %476 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %475, i32 0, i32 2
  %477 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %476, i32 0, i32 3
  store i32 %474, i32* %477, align 4
  %478 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %479 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %480 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = sext i32 %481 to i64
  %483 = icmp ult i64 %478, %482
  br i1 %483, label %484, label %505

484:                                              ; preds = %429
  %485 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %486 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %485, i32 0, i32 1
  %487 = load %struct.TYPE_10__*, %struct.TYPE_10__** %486, align 8
  %488 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %489 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %487, i64 %488
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %493 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %492, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i32 0, i32 0
  store i32 %491, i32* %494, align 8
  %495 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %496 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %495, i32 0, i32 1
  %497 = load %struct.TYPE_10__*, %struct.TYPE_10__** %496, align 8
  %498 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %499 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %503 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %502, i32 0, i32 2
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %503, i32 0, i32 1
  store i32 %501, i32* %504, align 4
  br label %505

505:                                              ; preds = %484, %429
  %506 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %507 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %506, i32 0, i32 0
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %540

511:                                              ; preds = %505
  %512 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %513 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %512, i32 0, i32 1
  %514 = load %struct.TYPE_10__*, %struct.TYPE_10__** %513, align 8
  %515 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %516 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = sub nsw i32 %517, 1
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %524 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %523, i32 0, i32 2
  %525 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %524, i32 0, i32 0
  store i32 %522, i32* %525, align 8
  %526 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %527 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %526, i32 0, i32 1
  %528 = load %struct.TYPE_10__*, %struct.TYPE_10__** %527, align 8
  %529 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %530 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = sub nsw i32 %531, 1
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %528, i64 %533
  %535 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %538 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %538, i32 0, i32 1
  store i32 %536, i32* %539, align 4
  br label %540

540:                                              ; preds = %511, %505
  %541 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %4, align 8
  %542 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %541, i32 0, i32 2
  store %struct.vega20_single_dpm_table* %542, %struct.vega20_single_dpm_table** %5, align 8
  %543 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %544 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %543, i32 0, i32 1
  %545 = load %struct.TYPE_10__*, %struct.TYPE_10__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i64 0
  %547 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %550 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %549, i32 0, i32 2
  %551 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %550, i32 0, i32 0
  store i32 %548, i32* %551, align 8
  %552 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %553 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %552, i32 0, i32 1
  %554 = load %struct.TYPE_10__*, %struct.TYPE_10__** %553, align 8
  %555 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %556 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = sub nsw i32 %557, 1
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i64 %559
  %561 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 4
  %563 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %564 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %563, i32 0, i32 2
  %565 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %564, i32 0, i32 1
  store i32 %562, i32* %565, align 4
  %566 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %567 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %566, i32 0, i32 1
  %568 = load %struct.TYPE_10__*, %struct.TYPE_10__** %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %568, i64 0
  %570 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  %572 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %573 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %572, i32 0, i32 2
  %574 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %573, i32 0, i32 2
  store i32 %571, i32* %574, align 8
  %575 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %576 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %575, i32 0, i32 1
  %577 = load %struct.TYPE_10__*, %struct.TYPE_10__** %576, align 8
  %578 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %579 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %578, i32 0, i32 0
  %580 = load i32, i32* %579, align 8
  %581 = sub nsw i32 %580, 1
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %577, i64 %582
  %584 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %587 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %586, i32 0, i32 2
  %588 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %587, i32 0, i32 3
  store i32 %585, i32* %588, align 4
  %589 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %590 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %591 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 8
  %593 = sext i32 %592 to i64
  %594 = icmp ult i64 %589, %593
  br i1 %594, label %595, label %616

595:                                              ; preds = %540
  %596 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %597 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %596, i32 0, i32 1
  %598 = load %struct.TYPE_10__*, %struct.TYPE_10__** %597, align 8
  %599 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %600 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %598, i64 %599
  %601 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 4
  %603 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %604 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %603, i32 0, i32 2
  %605 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %604, i32 0, i32 0
  store i32 %602, i32* %605, align 8
  %606 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %607 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %606, i32 0, i32 1
  %608 = load %struct.TYPE_10__*, %struct.TYPE_10__** %607, align 8
  %609 = load i64, i64* @VEGA20_UMD_PSTATE_UVDCLK_LEVEL, align 8
  %610 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %608, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 4
  %613 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %614 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %613, i32 0, i32 2
  %615 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %614, i32 0, i32 1
  store i32 %612, i32* %615, align 4
  br label %616

616:                                              ; preds = %595, %540
  %617 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %618 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %617, i32 0, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %621 = icmp eq i64 %619, %620
  br i1 %621, label %622, label %651

622:                                              ; preds = %616
  %623 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %624 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %623, i32 0, i32 1
  %625 = load %struct.TYPE_10__*, %struct.TYPE_10__** %624, align 8
  %626 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %627 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 8
  %629 = sub nsw i32 %628, 1
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %625, i64 %630
  %632 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %631, i32 0, i32 0
  %633 = load i32, i32* %632, align 4
  %634 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %635 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %634, i32 0, i32 2
  %636 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %635, i32 0, i32 0
  store i32 %633, i32* %636, align 8
  %637 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %638 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %637, i32 0, i32 1
  %639 = load %struct.TYPE_10__*, %struct.TYPE_10__** %638, align 8
  %640 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %641 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = sub nsw i32 %642, 1
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %639, i64 %644
  %646 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 4
  %648 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %649 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %648, i32 0, i32 2
  %650 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %649, i32 0, i32 1
  store i32 %647, i32* %650, align 4
  br label %651

651:                                              ; preds = %622, %616
  %652 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %4, align 8
  %653 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %652, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %653, %struct.vega20_single_dpm_table** %5, align 8
  %654 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %655 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %654, i32 0, i32 1
  %656 = load %struct.TYPE_10__*, %struct.TYPE_10__** %655, align 8
  %657 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %656, i64 0
  %658 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 4
  %660 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %661 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %660, i32 0, i32 2
  %662 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %661, i32 0, i32 0
  store i32 %659, i32* %662, align 8
  %663 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %664 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %663, i32 0, i32 1
  %665 = load %struct.TYPE_10__*, %struct.TYPE_10__** %664, align 8
  %666 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %667 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 8
  %669 = sub nsw i32 %668, 1
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %665, i64 %670
  %672 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %671, i32 0, i32 0
  %673 = load i32, i32* %672, align 4
  %674 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %675 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %674, i32 0, i32 2
  %676 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %675, i32 0, i32 1
  store i32 %673, i32* %676, align 4
  %677 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %678 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %677, i32 0, i32 1
  %679 = load %struct.TYPE_10__*, %struct.TYPE_10__** %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %679, i64 0
  %681 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %680, i32 0, i32 0
  %682 = load i32, i32* %681, align 4
  %683 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %684 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %683, i32 0, i32 2
  %685 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %684, i32 0, i32 2
  store i32 %682, i32* %685, align 8
  %686 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %687 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %686, i32 0, i32 1
  %688 = load %struct.TYPE_10__*, %struct.TYPE_10__** %687, align 8
  %689 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %690 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 8
  %692 = sub nsw i32 %691, 1
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %688, i64 %693
  %695 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %694, i32 0, i32 0
  %696 = load i32, i32* %695, align 4
  %697 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %698 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %697, i32 0, i32 2
  %699 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %698, i32 0, i32 3
  store i32 %696, i32* %699, align 4
  %700 = load i64, i64* @VEGA20_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %701 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %702 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 8
  %704 = sext i32 %703 to i64
  %705 = icmp ult i64 %700, %704
  br i1 %705, label %706, label %727

706:                                              ; preds = %651
  %707 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %708 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %707, i32 0, i32 1
  %709 = load %struct.TYPE_10__*, %struct.TYPE_10__** %708, align 8
  %710 = load i64, i64* @VEGA20_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %711 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %709, i64 %710
  %712 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %711, i32 0, i32 0
  %713 = load i32, i32* %712, align 4
  %714 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %715 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %714, i32 0, i32 2
  %716 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %715, i32 0, i32 0
  store i32 %713, i32* %716, align 8
  %717 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %718 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %717, i32 0, i32 1
  %719 = load %struct.TYPE_10__*, %struct.TYPE_10__** %718, align 8
  %720 = load i64, i64* @VEGA20_UMD_PSTATE_SOCCLK_LEVEL, align 8
  %721 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %719, i64 %720
  %722 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 4
  %724 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %725 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %724, i32 0, i32 2
  %726 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %725, i32 0, i32 1
  store i32 %723, i32* %726, align 4
  br label %727

727:                                              ; preds = %706, %651
  %728 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %729 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %728, i32 0, i32 0
  %730 = load i64, i64* %729, align 8
  %731 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %732 = icmp eq i64 %730, %731
  br i1 %732, label %733, label %762

733:                                              ; preds = %727
  %734 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %735 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %734, i32 0, i32 1
  %736 = load %struct.TYPE_10__*, %struct.TYPE_10__** %735, align 8
  %737 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %738 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 8
  %740 = sub nsw i32 %739, 1
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %736, i64 %741
  %743 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 4
  %745 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %746 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %745, i32 0, i32 2
  %747 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %746, i32 0, i32 0
  store i32 %744, i32* %747, align 8
  %748 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %749 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %748, i32 0, i32 1
  %750 = load %struct.TYPE_10__*, %struct.TYPE_10__** %749, align 8
  %751 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %752 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %751, i32 0, i32 0
  %753 = load i32, i32* %752, align 8
  %754 = sub nsw i32 %753, 1
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %750, i64 %755
  %757 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %756, i32 0, i32 0
  %758 = load i32, i32* %757, align 4
  %759 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %760 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %759, i32 0, i32 2
  %761 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %760, i32 0, i32 1
  store i32 %758, i32* %761, align 4
  br label %762

762:                                              ; preds = %733, %727
  %763 = load %struct.vega20_dpm_table*, %struct.vega20_dpm_table** %4, align 8
  %764 = getelementptr inbounds %struct.vega20_dpm_table, %struct.vega20_dpm_table* %763, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %764, %struct.vega20_single_dpm_table** %5, align 8
  %765 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %766 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %765, i32 0, i32 1
  %767 = load %struct.TYPE_10__*, %struct.TYPE_10__** %766, align 8
  %768 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %767, i64 0
  %769 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %768, i32 0, i32 0
  %770 = load i32, i32* %769, align 4
  %771 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %772 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %771, i32 0, i32 2
  %773 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %772, i32 0, i32 0
  store i32 %770, i32* %773, align 8
  %774 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %775 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %774, i32 0, i32 1
  %776 = load %struct.TYPE_10__*, %struct.TYPE_10__** %775, align 8
  %777 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %778 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %777, i32 0, i32 0
  %779 = load i32, i32* %778, align 8
  %780 = sub nsw i32 %779, 1
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %776, i64 %781
  %783 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %782, i32 0, i32 0
  %784 = load i32, i32* %783, align 4
  %785 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %786 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %785, i32 0, i32 2
  %787 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %786, i32 0, i32 1
  store i32 %784, i32* %787, align 4
  %788 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %789 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %788, i32 0, i32 1
  %790 = load %struct.TYPE_10__*, %struct.TYPE_10__** %789, align 8
  %791 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %790, i64 0
  %792 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %791, i32 0, i32 0
  %793 = load i32, i32* %792, align 4
  %794 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %795 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %794, i32 0, i32 2
  %796 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %795, i32 0, i32 2
  store i32 %793, i32* %796, align 8
  %797 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %798 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %797, i32 0, i32 1
  %799 = load %struct.TYPE_10__*, %struct.TYPE_10__** %798, align 8
  %800 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %801 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %800, i32 0, i32 0
  %802 = load i32, i32* %801, align 8
  %803 = sub nsw i32 %802, 1
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %799, i64 %804
  %806 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %805, i32 0, i32 0
  %807 = load i32, i32* %806, align 4
  %808 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %809 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %808, i32 0, i32 2
  %810 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %809, i32 0, i32 3
  store i32 %807, i32* %810, align 4
  %811 = load i64, i64* @VEGA20_UMD_PSTATE_VCEMCLK_LEVEL, align 8
  %812 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %813 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %812, i32 0, i32 0
  %814 = load i32, i32* %813, align 8
  %815 = sext i32 %814 to i64
  %816 = icmp ult i64 %811, %815
  br i1 %816, label %817, label %838

817:                                              ; preds = %762
  %818 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %819 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %818, i32 0, i32 1
  %820 = load %struct.TYPE_10__*, %struct.TYPE_10__** %819, align 8
  %821 = load i64, i64* @VEGA20_UMD_PSTATE_VCEMCLK_LEVEL, align 8
  %822 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %820, i64 %821
  %823 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %822, i32 0, i32 0
  %824 = load i32, i32* %823, align 4
  %825 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %826 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %825, i32 0, i32 2
  %827 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %826, i32 0, i32 0
  store i32 %824, i32* %827, align 8
  %828 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %829 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %828, i32 0, i32 1
  %830 = load %struct.TYPE_10__*, %struct.TYPE_10__** %829, align 8
  %831 = load i64, i64* @VEGA20_UMD_PSTATE_VCEMCLK_LEVEL, align 8
  %832 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %830, i64 %831
  %833 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %832, i32 0, i32 0
  %834 = load i32, i32* %833, align 4
  %835 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %836 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %835, i32 0, i32 2
  %837 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %836, i32 0, i32 1
  store i32 %834, i32* %837, align 4
  br label %838

838:                                              ; preds = %817, %762
  %839 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %840 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %839, i32 0, i32 0
  %841 = load i64, i64* %840, align 8
  %842 = load i64, i64* @AMD_DPM_FORCED_LEVEL_PROFILE_PEAK, align 8
  %843 = icmp eq i64 %841, %842
  br i1 %843, label %844, label %873

844:                                              ; preds = %838
  %845 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %846 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %845, i32 0, i32 1
  %847 = load %struct.TYPE_10__*, %struct.TYPE_10__** %846, align 8
  %848 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %849 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %848, i32 0, i32 0
  %850 = load i32, i32* %849, align 8
  %851 = sub nsw i32 %850, 1
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %847, i64 %852
  %854 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %853, i32 0, i32 0
  %855 = load i32, i32* %854, align 4
  %856 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %857 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %856, i32 0, i32 2
  %858 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %857, i32 0, i32 0
  store i32 %855, i32* %858, align 8
  %859 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %860 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %859, i32 0, i32 1
  %861 = load %struct.TYPE_10__*, %struct.TYPE_10__** %860, align 8
  %862 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %863 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %862, i32 0, i32 0
  %864 = load i32, i32* %863, align 8
  %865 = sub nsw i32 %864, 1
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %861, i64 %866
  %868 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %867, i32 0, i32 0
  %869 = load i32, i32* %868, align 4
  %870 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %871 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %870, i32 0, i32 2
  %872 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %871, i32 0, i32 1
  store i32 %869, i32* %872, align 4
  br label %873

873:                                              ; preds = %844, %838
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
