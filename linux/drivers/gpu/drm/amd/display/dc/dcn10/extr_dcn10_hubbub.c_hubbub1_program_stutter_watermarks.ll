; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_program_stutter_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_program_stutter_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn_watermark_set = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_18__, %struct.TYPE_31__ }
%struct.TYPE_24__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, i64 }
%struct.dcn10_hubbub = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_27__, %struct.TYPE_20__, %struct.TYPE_33__, %struct.TYPE_29__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, i64 }

@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"SR_ENTER_EXIT_WATERMARK_A calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"SR_EXIT_WATERMARK_A calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"SR_ENTER_EXIT_WATERMARK_B calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"SR_EXIT_WATERMARK_B calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"SR_ENTER_EXIT_WATERMARK_C calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"SR_EXIT_WATERMARK_C calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"SR_ENTER_EXIT_WATERMARK_D calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"SR_EXIT_WATERMARK_D calculated =%d\0AHW register value = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub1_program_stutter_watermarks(%struct.hubbub* %0, %struct.dcn_watermark_set* %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %22 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %20, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %15, %4
  %29 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %30 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %35 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  store i64 %33, i64* %38, align 8
  %39 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %40 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @convert_and_clamp(i64 %43, i32 %44, i32 2097151)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %47 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @REG_SET(i32 %46, i32 0, i32 %47, i32 %48)
  %50 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %51 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %54, i32 %55)
  br label %57

57:                                               ; preds = %28, %15
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %57
  %61 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %62 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %67 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %65, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %60, %57
  %74 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %75 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %80 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 1
  store i64 %78, i64* %83, align 8
  %84 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %85 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @convert_and_clamp(i64 %88, i32 %89, i32 2097151)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %92 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @REG_SET(i32 %91, i32 0, i32 %92, i32 %93)
  %95 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %96 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %73, %60
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %107 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %112 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %110, %116
  br i1 %117, label %118, label %147

118:                                              ; preds = %105, %102
  %119 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %120 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %125 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 0
  store i64 %123, i64* %128, align 8
  %129 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %130 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @convert_and_clamp(i64 %133, i32 %134, i32 2097151)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %137 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @REG_SET(i32 %136, i32 0, i32 %137, i32 %138)
  %140 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %141 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %144, i32 %145)
  br label %147

147:                                              ; preds = %118, %105
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %147
  %151 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %152 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %157 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %155, %161
  br i1 %162, label %163, label %192

163:                                              ; preds = %150, %147
  %164 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %165 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %170 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 1
  store i64 %168, i64* %173, align 8
  %174 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %175 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @convert_and_clamp(i64 %178, i32 %179, i32 2097151)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B, align 4
  %182 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @REG_SET(i32 %181, i32 0, i32 %182, i32 %183)
  %185 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %186 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %189, i32 %190)
  br label %192

192:                                              ; preds = %163, %150
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %192
  %196 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %197 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %202 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %200, %206
  br i1 %207, label %208, label %237

208:                                              ; preds = %195, %192
  %209 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %210 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %215 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  store i64 %213, i64* %218, align 8
  %219 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %220 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @convert_and_clamp(i64 %223, i32 %224, i32 2097151)
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %227 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @REG_SET(i32 %226, i32 0, i32 %227, i32 %228)
  %230 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %231 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i64 %234, i32 %235)
  br label %237

237:                                              ; preds = %208, %195
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %253, label %240

240:                                              ; preds = %237
  %241 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %242 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %247 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp sgt i64 %245, %251
  br i1 %252, label %253, label %282

253:                                              ; preds = %240, %237
  %254 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %255 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %260 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  store i64 %258, i64* %263, align 8
  %264 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %265 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @convert_and_clamp(i64 %268, i32 %269, i32 2097151)
  store i32 %270, i32* %10, align 4
  %271 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C, align 4
  %272 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C, align 4
  %273 = load i32, i32* %10, align 4
  %274 = call i32 @REG_SET(i32 %271, i32 0, i32 %272, i32 %273)
  %275 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %276 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %279, i32 %280)
  br label %282

282:                                              ; preds = %253, %240
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %298, label %285

285:                                              ; preds = %282
  %286 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %287 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %292 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp sgt i64 %290, %296
  br i1 %297, label %298, label %327

298:                                              ; preds = %285, %282
  %299 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %300 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %305 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 0
  store i64 %303, i64* %308, align 8
  %309 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %310 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i32, i32* %7, align 4
  %315 = call i32 @convert_and_clamp(i64 %313, i32 %314, i32 2097151)
  store i32 %315, i32* %10, align 4
  %316 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %317 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %318 = load i32, i32* %10, align 4
  %319 = call i32 @REG_SET(i32 %316, i32 0, i32 %317, i32 %318)
  %320 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %321 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i32, i32* %10, align 4
  %326 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i64 %324, i32 %325)
  br label %327

327:                                              ; preds = %298, %285
  %328 = load i32, i32* %8, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %343, label %330

330:                                              ; preds = %327
  %331 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %332 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %337 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp sgt i64 %335, %341
  br i1 %342, label %343, label %372

343:                                              ; preds = %330, %327
  %344 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %345 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %350 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %352, i32 0, i32 1
  store i64 %348, i64* %353, align 8
  %354 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %355 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load i32, i32* %7, align 4
  %360 = call i32 @convert_and_clamp(i64 %358, i32 %359, i32 2097151)
  store i32 %360, i32* %10, align 4
  %361 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D, align 4
  %362 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D, align 4
  %363 = load i32, i32* %10, align 4
  %364 = call i32 @REG_SET(i32 %361, i32 0, i32 %362, i32 %363)
  %365 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %366 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = load i32, i32* %10, align 4
  %371 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i64 %369, i32 %370)
  br label %372

372:                                              ; preds = %343, %330
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
