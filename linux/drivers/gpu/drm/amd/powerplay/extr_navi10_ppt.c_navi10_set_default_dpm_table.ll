; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_set_default_dpm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_set_default_dpm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context, %struct.smu_dpm_context }
%struct.smu_table_context = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.smu_dpm_context = type { %struct.smu_11_0_dpm_context* }
%struct.smu_11_0_dpm_context = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@NUM_SOCCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@NUM_GFXCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@NUM_UCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@NUM_VCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@NUM_DCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@NUM_DCEFCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@NUM_PIXCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@NUM_DISPCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@NUM_PHYCLK_DPM_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @navi10_set_default_dpm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_set_default_dpm_table(%struct.smu_context* %0) #0 {
  %2 = alloca %struct.smu_context*, align 8
  %3 = alloca %struct.smu_dpm_context*, align 8
  %4 = alloca %struct.smu_table_context*, align 8
  %5 = alloca %struct.smu_11_0_dpm_context*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %2, align 8
  %7 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %8 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %7, i32 0, i32 1
  store %struct.smu_dpm_context* %8, %struct.smu_dpm_context** %3, align 8
  %9 = load %struct.smu_context*, %struct.smu_context** %2, align 8
  %10 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %9, i32 0, i32 0
  store %struct.smu_table_context* %10, %struct.smu_table_context** %4, align 8
  %11 = load %struct.smu_dpm_context*, %struct.smu_dpm_context** %3, align 8
  %12 = getelementptr inbounds %struct.smu_dpm_context, %struct.smu_dpm_context* %11, i32 0, i32 0
  %13 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %12, align 8
  store %struct.smu_11_0_dpm_context* %13, %struct.smu_11_0_dpm_context** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.smu_table_context*, %struct.smu_table_context** %4, align 8
  %15 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %23 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @NUM_SOCCLK_DPM_LEVELS, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %35 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %44 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @NUM_GFXCLK_DPM_LEVELS, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %56 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %65 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @NUM_UCLK_DPM_LEVELS, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %77 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %86 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @NUM_VCLK_DPM_LEVELS, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %98 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %107 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* @NUM_DCLK_DPM_LEVELS, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %119 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %128 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @NUM_DCEFCLK_DPM_LEVELS, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %140 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %149 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @NUM_PIXCLK_DPM_LEVELS, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %161 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  store i32 %159, i32* %163, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %170 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  store i32 %168, i32* %172, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* @NUM_DISPCLK_DPM_LEVELS, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %182 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 0
  store i32 %180, i32* %184, align 4
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %191 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 1
  store i32 %189, i32* %193, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* @NUM_PHYCLK_DPM_LEVELS, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.smu_11_0_dpm_context*, %struct.smu_11_0_dpm_context** %5, align 8
  %203 = getelementptr inbounds %struct.smu_11_0_dpm_context, %struct.smu_11_0_dpm_context* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  store i32 %201, i32* %205, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
