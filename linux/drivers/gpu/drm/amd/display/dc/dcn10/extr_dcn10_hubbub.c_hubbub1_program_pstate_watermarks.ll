; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_program_pstate_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_program_pstate_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn_watermark_set = type { %struct.TYPE_25__, %struct.TYPE_20__, %struct.TYPE_33__, %struct.TYPE_29__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.dcn10_hubbub = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_31__, %struct.TYPE_27__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }

@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"DRAM_CLK_CHANGE_WATERMARK_A calculated =%d\0AHW register value = 0x%x\0A\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"DRAM_CLK_CHANGE_WATERMARK_B calculated =%d\0AHW register value = 0x%x\0A\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"DRAM_CLK_CHANGE_WATERMARK_C calculated =%d\0AHW register value = 0x%x\0A\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"DRAM_CLK_CHANGE_WATERMARK_D calculated =%d\0AHW register value = 0x%x\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub1_program_pstate_watermarks(%struct.hubbub* %0, %struct.dcn_watermark_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hubbub*, align 8
  %6 = alloca %struct.dcn_watermark_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn10_hubbub*, align 8
  %10 = alloca i32, align 4
  store %struct.hubbub* %0, %struct.hubbub** %5, align 8
  store %struct.dcn_watermark_set* %1, %struct.dcn_watermark_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %12 = call %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub* %11)
  store %struct.dcn10_hubbub* %12, %struct.dcn10_hubbub** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %4
  %16 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %17 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %22 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %20, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %15, %4
  %29 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %30 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %35 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  store i64 %33, i64* %38, align 8
  %39 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %40 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @convert_and_clamp(i64 %43, i32 %44, i32 2097151)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A, align 4
  %47 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @REG_SET(i32 %46, i32 0, i32 %47, i32 %48)
  %50 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %51 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %28, %15
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %57
  %61 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %62 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %67 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %65, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %60, %57
  %74 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %75 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %80 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 0
  store i64 %78, i64* %83, align 8
  %84 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %85 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @convert_and_clamp(i64 %88, i32 %89, i32 2097151)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B, align 4
  %92 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @REG_SET(i32 %91, i32 0, i32 %92, i32 %93)
  %95 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %96 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %73, %60
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %107 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %112 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %110, %116
  br i1 %117, label %118, label %147

118:                                              ; preds = %105, %102
  %119 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %120 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %125 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i32 0, i32 0
  store i64 %123, i64* %128, align 8
  %129 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %130 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @convert_and_clamp(i64 %133, i32 %134, i32 2097151)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C, align 4
  %137 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @REG_SET(i32 %136, i32 0, i32 %137, i32 %138)
  %140 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %141 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %144, i32 %145)
  br label %147

147:                                              ; preds = %118, %105
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %147
  %151 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %152 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %157 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %155, %161
  br i1 %162, label %163, label %192

163:                                              ; preds = %150, %147
  %164 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %165 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %170 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  store i64 %168, i64* %173, align 8
  %174 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %175 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @convert_and_clamp(i64 %178, i32 %179, i32 2097151)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D, align 4
  %182 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @REG_SET(i32 %181, i32 0, i32 %182, i32 %183)
  %185 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %186 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i64 %189, i32 %190)
  br label %192

192:                                              ; preds = %163, %150
  ret void
}

declare dso_local %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @convert_and_clamp(i64, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @DC_LOG_BANDWIDTH_CALCS(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
