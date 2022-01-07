; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_program_stutter_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_program_stutter_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn_watermark_set = type { %struct.TYPE_29__, %struct.TYPE_25__, %struct.TYPE_20__, %struct.TYPE_33__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, i64 }
%struct.dcn20_hubbub = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_27__, %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_31__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, i64 }

@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_ALLOW_SR_ENTER_WATERMARK_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"SR_ENTER_EXIT_WATERMARK_A calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_ALLOW_SR_EXIT_WATERMARK_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"SR_EXIT_WATERMARK_A calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_ALLOW_SR_ENTER_WATERMARK_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"SR_ENTER_EXIT_WATERMARK_B calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"SR_EXIT_WATERMARK_B calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_ALLOW_SR_ENTER_WATERMARK_C = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"SR_ENTER_EXIT_WATERMARK_C calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"SR_EXIT_WATERMARK_C calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_ALLOW_SR_ENTER_WATERMARK_D = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"SR_ENTER_EXIT_WATERMARK_D calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"SR_EXIT_WATERMARK_D calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hubbub*, %struct.dcn_watermark_set*, i32, i32)* @hubbub21_program_stutter_watermarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hubbub21_program_stutter_watermarks(%struct.hubbub* %0, %struct.dcn_watermark_set* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hubbub*, align 8
  %6 = alloca %struct.dcn_watermark_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn20_hubbub*, align 8
  %10 = alloca i32, align 4
  store %struct.hubbub* %0, %struct.hubbub** %5, align 8
  store %struct.dcn_watermark_set* %1, %struct.dcn_watermark_set** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %12 = call %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub* %11)
  store %struct.dcn20_hubbub* %12, %struct.dcn20_hubbub** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %4
  %16 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %17 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %22 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %20, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %15, %4
  %29 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %30 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %35 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 0
  store i64 %33, i64* %38, align 8
  %39 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %40 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @convert_and_clamp(i64 %43, i32 %44, i32 2097151)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %47 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_SR_ENTER_WATERMARK_A, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @REG_SET_2(i32 %46, i32 0, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %53 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %28, %15
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %59
  %63 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %64 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %69 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %67, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %62, %59
  %76 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %77 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %82 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 1
  store i64 %80, i64* %85, align 8
  %86 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %87 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @convert_and_clamp(i64 %90, i32 %91, i32 2097151)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %94 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @REG_SET_2(i32 %93, i32 0, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %100 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %103, i32 %104)
  br label %106

106:                                              ; preds = %75, %62
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %106
  %110 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %111 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %116 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %114, %120
  br i1 %121, label %122, label %153

122:                                              ; preds = %109, %106
  %123 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %124 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %129 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 0
  store i64 %127, i64* %132, align 8
  %133 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %134 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @convert_and_clamp(i64 %137, i32 %138, i32 2097151)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %141 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_SR_ENTER_WATERMARK_B, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @REG_SET_2(i32 %140, i32 0, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %147 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %150, i32 %151)
  br label %153

153:                                              ; preds = %122, %109
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %169, label %156

156:                                              ; preds = %153
  %157 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %158 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %163 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %161, %167
  br i1 %168, label %169, label %200

169:                                              ; preds = %156, %153
  %170 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %171 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %176 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 1
  store i64 %174, i64* %179, align 8
  %180 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %181 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @convert_and_clamp(i64 %184, i32 %185, i32 2097151)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B, align 4
  %188 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_B, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @REG_SET_2(i32 %187, i32 0, i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %194 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %197, i32 %198)
  br label %200

200:                                              ; preds = %169, %156
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %216, label %203

203:                                              ; preds = %200
  %204 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %205 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %210 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %208, %214
  br i1 %215, label %216, label %247

216:                                              ; preds = %203, %200
  %217 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %218 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %223 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  store i64 %221, i64* %226, align 8
  %227 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %228 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @convert_and_clamp(i64 %231, i32 %232, i32 2097151)
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %235 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_SR_ENTER_WATERMARK_C, align 4
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @REG_SET_2(i32 %234, i32 0, i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %241 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i64 %244, i32 %245)
  br label %247

247:                                              ; preds = %216, %203
  %248 = load i32, i32* %8, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %263, label %250

250:                                              ; preds = %247
  %251 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %252 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %257 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp sgt i64 %255, %261
  br i1 %262, label %263, label %294

263:                                              ; preds = %250, %247
  %264 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %265 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %270 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 1
  store i64 %268, i64* %273, align 8
  %274 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %275 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = call i32 @convert_and_clamp(i64 %278, i32 %279, i32 2097151)
  store i32 %280, i32* %10, align 4
  %281 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C, align 4
  %282 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_C, align 4
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %285 = load i32, i32* %10, align 4
  %286 = call i32 @REG_SET_2(i32 %281, i32 0, i32 %282, i32 %283, i32 %284, i32 %285)
  %287 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %288 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i32, i32* %10, align 4
  %293 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %291, i32 %292)
  br label %294

294:                                              ; preds = %263, %250
  %295 = load i32, i32* %8, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %310, label %297

297:                                              ; preds = %294
  %298 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %299 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %304 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = icmp sgt i64 %302, %308
  br i1 %309, label %310, label %341

310:                                              ; preds = %297, %294
  %311 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %312 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %317 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %319, i32 0, i32 0
  store i64 %315, i64* %320, align 8
  %321 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %322 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* %7, align 4
  %327 = call i32 @convert_and_clamp(i64 %325, i32 %326, i32 2097151)
  store i32 %327, i32* %10, align 4
  %328 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %329 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %330 = load i32, i32* %10, align 4
  %331 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_SR_ENTER_WATERMARK_D, align 4
  %332 = load i32, i32* %10, align 4
  %333 = call i32 @REG_SET_2(i32 %328, i32 0, i32 %329, i32 %330, i32 %331, i32 %332)
  %334 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %335 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load i32, i32* %10, align 4
  %340 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i64 %338, i32 %339)
  br label %341

341:                                              ; preds = %310, %297
  %342 = load i32, i32* %8, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %357, label %344

344:                                              ; preds = %341
  %345 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %346 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %351 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = icmp sgt i64 %349, %355
  br i1 %356, label %357, label %388

357:                                              ; preds = %344, %341
  %358 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %359 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %364 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %366, i32 0, i32 1
  store i64 %362, i64* %367, align 8
  %368 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %369 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load i32, i32* %7, align 4
  %374 = call i32 @convert_and_clamp(i64 %372, i32 %373, i32 2097151)
  store i32 %374, i32* %10, align 4
  %375 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D, align 4
  %376 = load i32, i32* @DCHUBBUB_ARB_ALLOW_SR_EXIT_WATERMARK_D, align 4
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_SR_EXIT_WATERMARK_A, align 4
  %379 = load i32, i32* %10, align 4
  %380 = call i32 @REG_SET_2(i32 %375, i32 0, i32 %376, i32 %377, i32 %378, i32 %379)
  %381 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %382 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = load i32, i32* %10, align 4
  %387 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i64 %385, i32 %386)
  br label %388

388:                                              ; preds = %357, %344
  ret void
}

declare dso_local %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @convert_and_clamp(i64, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DC_LOG_BANDWIDTH_CALCS(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
