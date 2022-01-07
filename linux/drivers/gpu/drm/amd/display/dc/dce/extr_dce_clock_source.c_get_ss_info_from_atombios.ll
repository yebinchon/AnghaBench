; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_get_ss_info_from_atombios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_get_ss_info_from_atombios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce110_clk_src = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32, i64, %struct.spread_spectrum_info*)* }
%struct.spread_spectrum_info = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.spread_spectrum_data = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32 }

@BP_RESULT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Invalid entry !!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid array pointer!!!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid ATOMBIOS SS Table!!!\0A\00", align 1
@AS_SIGNAL_TYPE_HDMI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid SS percentage \00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"for HDMI in ATOMBIOS info Table!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce110_clk_src*, i32, %struct.spread_spectrum_data**, i64*)* @get_ss_info_from_atombios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_ss_info_from_atombios(%struct.dce110_clk_src* %0, i32 %1, %struct.spread_spectrum_data** %2, i64* %3) #0 {
  %5 = alloca %struct.dce110_clk_src*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spread_spectrum_data**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.spread_spectrum_info*, align 8
  %11 = alloca %struct.spread_spectrum_data*, align 8
  %12 = alloca %struct.spread_spectrum_info*, align 8
  %13 = alloca %struct.spread_spectrum_data*, align 8
  %14 = alloca i64, align 8
  store %struct.dce110_clk_src* %0, %struct.dce110_clk_src** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.spread_spectrum_data** %2, %struct.spread_spectrum_data*** %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load i32, i32* @BP_RESULT_FAILURE, align 4
  store i32 %15, i32* %9, align 4
  %16 = call i32 (...) @DC_LOGGER_INIT()
  %17 = load i64*, i64** %8, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = call i32 @DC_LOG_SYNC(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %198

21:                                               ; preds = %4
  %22 = load %struct.spread_spectrum_data**, %struct.spread_spectrum_data*** %7, align 8
  %23 = icmp eq %struct.spread_spectrum_data** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @DC_LOG_SYNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %198

26:                                               ; preds = %21
  %27 = load %struct.spread_spectrum_data**, %struct.spread_spectrum_data*** %7, align 8
  %28 = getelementptr inbounds %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %27, i64 0
  store %struct.spread_spectrum_data* null, %struct.spread_spectrum_data** %28, align 8
  %29 = load i64*, i64** %8, align 8
  store i64 0, i64* %29, align 8
  %30 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %31 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64 (%struct.TYPE_9__*, i32)*, i64 (%struct.TYPE_9__*, i32)** %35, align 8
  %37 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %38 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 %36(%struct.TYPE_9__* %39, i32 %40)
  %42 = load i64*, i64** %8, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %26
  br label %198

47:                                               ; preds = %26
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.spread_spectrum_info* @kcalloc(i64 %49, i32 64, i32 %50)
  store %struct.spread_spectrum_info* %51, %struct.spread_spectrum_info** %10, align 8
  %52 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %10, align 8
  store %struct.spread_spectrum_info* %52, %struct.spread_spectrum_info** %12, align 8
  %53 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %10, align 8
  %54 = icmp eq %struct.spread_spectrum_info* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %198

56:                                               ; preds = %47
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.spread_spectrum_info* @kcalloc(i64 %58, i32 64, i32 %59)
  %61 = bitcast %struct.spread_spectrum_info* %60 to %struct.spread_spectrum_data*
  store %struct.spread_spectrum_data* %61, %struct.spread_spectrum_data** %11, align 8
  %62 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %11, align 8
  %63 = icmp eq %struct.spread_spectrum_data* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %195

65:                                               ; preds = %56
  store i64 0, i64* %14, align 8
  %66 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %10, align 8
  store %struct.spread_spectrum_info* %66, %struct.spread_spectrum_info** %12, align 8
  br label %67

67:                                               ; preds = %92, %65
  %68 = load i64, i64* %14, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %67
  %73 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %74 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_9__*, i32, i64, %struct.spread_spectrum_info*)*, i32 (%struct.TYPE_9__*, i32, i64, %struct.spread_spectrum_info*)** %78, align 8
  %80 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %81 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i64, i64* %14, align 8
  %85 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %86 = call i32 %79(%struct.TYPE_9__* %82, i32 %83, i64 %84, %struct.spread_spectrum_info* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @BP_RESULT_OK, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  br label %190

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %14, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %14, align 8
  %95 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %96 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %95, i32 1
  store %struct.spread_spectrum_info* %96, %struct.spread_spectrum_info** %12, align 8
  br label %67

97:                                               ; preds = %67
  store i64 0, i64* %14, align 8
  %98 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %10, align 8
  store %struct.spread_spectrum_info* %98, %struct.spread_spectrum_info** %12, align 8
  %99 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %11, align 8
  store %struct.spread_spectrum_data* %99, %struct.spread_spectrum_data** %13, align 8
  br label %100

100:                                              ; preds = %178, %97
  %101 = load i64, i64* %14, align 8
  %102 = load i64*, i64** %8, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %105, label %185

105:                                              ; preds = %100
  %106 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %107 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 @DC_LOG_SYNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %190

113:                                              ; preds = %105
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @AS_SIGNAL_TYPE_HDMI, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %119 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %120, 6
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = call i32 @DC_LOG_SYNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %124 = call i32 @DC_LOG_SYNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %178

125:                                              ; preds = %117, %113
  %126 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %127 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1000
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %132 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sdiv i32 %133, 10
  store i32 %134, i32* %132, align 8
  %135 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %136 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %135, i32 0, i32 1
  store i32 100, i32* %136, align 4
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %139 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %13, align 8
  %142 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %141, i32 0, i32 9
  store i32 %140, i32* %142, align 4
  %143 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %144 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %13, align 8
  %147 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %149 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %13, align 8
  %152 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %154 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %13, align 8
  %157 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %159 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %137
  %164 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %13, align 8
  %165 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %163, %137
  %168 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %169 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %167
  %174 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %13, align 8
  %175 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  store i32 1, i32* %176, align 4
  br label %177

177:                                              ; preds = %173, %167
  br label %178

178:                                              ; preds = %177, %122
  %179 = load i64, i64* %14, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %14, align 8
  %181 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %12, align 8
  %182 = getelementptr inbounds %struct.spread_spectrum_info, %struct.spread_spectrum_info* %181, i32 1
  store %struct.spread_spectrum_info* %182, %struct.spread_spectrum_info** %12, align 8
  %183 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %13, align 8
  %184 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %183, i32 1
  store %struct.spread_spectrum_data* %184, %struct.spread_spectrum_data** %13, align 8
  br label %100

185:                                              ; preds = %100
  %186 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %11, align 8
  %187 = load %struct.spread_spectrum_data**, %struct.spread_spectrum_data*** %7, align 8
  store %struct.spread_spectrum_data* %186, %struct.spread_spectrum_data** %187, align 8
  %188 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %10, align 8
  %189 = call i32 @kfree(%struct.spread_spectrum_info* %188)
  br label %198

190:                                              ; preds = %111, %90
  %191 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %11, align 8
  %192 = bitcast %struct.spread_spectrum_data* %191 to %struct.spread_spectrum_info*
  %193 = call i32 @kfree(%struct.spread_spectrum_info* %192)
  %194 = load i64*, i64** %8, align 8
  store i64 0, i64* %194, align 8
  br label %195

195:                                              ; preds = %190, %64
  %196 = load %struct.spread_spectrum_info*, %struct.spread_spectrum_info** %10, align 8
  %197 = call i32 @kfree(%struct.spread_spectrum_info* %196)
  br label %198

198:                                              ; preds = %195, %185, %55, %46, %24, %19
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(...) #1

declare dso_local i32 @DC_LOG_SYNC(i8*) #1

declare dso_local %struct.spread_spectrum_info* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.spread_spectrum_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
