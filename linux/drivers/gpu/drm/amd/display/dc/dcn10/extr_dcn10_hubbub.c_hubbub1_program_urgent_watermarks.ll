; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_program_urgent_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_program_urgent_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn_watermark_set = type { %struct.TYPE_18__, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.dcn10_hubbub = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"URGENCY_WATERMARK_A calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"PTE_META_URGENCY_WATERMARK_A calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"URGENCY_WATERMARK_B calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"PTE_META_URGENCY_WATERMARK_B calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"URGENCY_WATERMARK_C calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_C = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [70 x i8] c"PTE_META_URGENCY_WATERMARK_C calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"URGENCY_WATERMARK_D calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_D = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [70 x i8] c"PTE_META_URGENCY_WATERMARK_D calculated =%d\0AHW register value = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub1_program_urgent_watermarks(%struct.hubbub* %0, %struct.dcn_watermark_set* %1, i32 %2, i32 %3) #0 {
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
  br i1 %14, label %26, label %15

15:                                               ; preds = %4
  %16 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %17 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %21 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %19, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %15, %4
  %27 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %28 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %32 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  %35 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %36 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @convert_and_clamp(i64 %38, i32 %39, i32 2097151)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A, align 4
  %42 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @REG_SET(i32 %41, i32 0, i32 %42, i32 %43)
  %45 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %46 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %26, %15
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51
  %55 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %56 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %60 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %58, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %54, %51
  %66 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %67 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %71 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i64 %69, i64* %73, align 8
  %74 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %75 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @convert_and_clamp(i64 %77, i32 %78, i32 2097151)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_A, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @REG_WRITE(i32 %80, i32 %81)
  %83 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %84 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %65, %54
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %89
  %93 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %94 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %98 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %96, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %92, %89
  %104 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %105 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %109 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  %112 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %113 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @convert_and_clamp(i64 %115, i32 %116, i32 2097151)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B, align 4
  %119 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @REG_SET(i32 %118, i32 0, i32 %119, i32 %120)
  %122 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %123 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %125, i32 %126)
  br label %128

128:                                              ; preds = %103, %92
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %128
  %132 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %133 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %137 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %135, %140
  br i1 %141, label %142, label %166

142:                                              ; preds = %131, %128
  %143 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %144 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %148 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  store i64 %146, i64* %150, align 8
  %151 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %152 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @convert_and_clamp(i64 %154, i32 %155, i32 2097151)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_B, align 4
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @REG_WRITE(i32 %157, i32 %158)
  %160 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %161 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i64 %163, i32 %164)
  br label %166

166:                                              ; preds = %142, %131
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %180, label %169

169:                                              ; preds = %166
  %170 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %171 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %175 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %173, %178
  br i1 %179, label %180, label %205

180:                                              ; preds = %169, %166
  %181 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %182 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %186 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  store i64 %184, i64* %188, align 8
  %189 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %190 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @convert_and_clamp(i64 %192, i32 %193, i32 2097151)
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C, align 4
  %196 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C, align 4
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @REG_SET(i32 %195, i32 0, i32 %196, i32 %197)
  %199 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %200 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %202, i32 %203)
  br label %205

205:                                              ; preds = %180, %169
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %219, label %208

208:                                              ; preds = %205
  %209 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %210 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %214 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp sgt i64 %212, %217
  br i1 %218, label %219, label %243

219:                                              ; preds = %208, %205
  %220 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %221 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %225 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 1
  store i64 %223, i64* %227, align 8
  %228 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %229 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @convert_and_clamp(i64 %231, i32 %232, i32 2097151)
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_C, align 4
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @REG_WRITE(i32 %234, i32 %235)
  %237 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %238 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i64 %240, i32 %241)
  br label %243

243:                                              ; preds = %219, %208
  %244 = load i32, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %257, label %246

246:                                              ; preds = %243
  %247 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %248 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %252 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = icmp sgt i64 %250, %255
  br i1 %256, label %257, label %282

257:                                              ; preds = %246, %243
  %258 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %259 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %263 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  store i64 %261, i64* %265, align 8
  %266 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %267 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @convert_and_clamp(i64 %269, i32 %270, i32 2097151)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D, align 4
  %273 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D, align 4
  %274 = load i32, i32* %10, align 4
  %275 = call i32 @REG_SET(i32 %272, i32 0, i32 %273, i32 %274)
  %276 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %277 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i64 %279, i32 %280)
  br label %282

282:                                              ; preds = %257, %246
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %296, label %285

285:                                              ; preds = %282
  %286 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %287 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %291 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = icmp sgt i64 %289, %294
  br i1 %295, label %296, label %320

296:                                              ; preds = %285, %282
  %297 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %298 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %9, align 8
  %302 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 1
  store i64 %300, i64* %304, align 8
  %305 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %306 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load i32, i32* %7, align 4
  %310 = call i32 @convert_and_clamp(i64 %308, i32 %309, i32 2097151)
  store i32 %310, i32* %10, align 4
  %311 = load i32, i32* @DCHUBBUB_ARB_PTE_META_URGENCY_WATERMARK_D, align 4
  %312 = load i32, i32* %10, align 4
  %313 = call i32 @REG_WRITE(i32 %311, i32 %312)
  %314 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %315 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load i32, i32* %10, align 4
  %319 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), i64 %317, i32 %318)
  br label %320

320:                                              ; preds = %296, %285
  ret void
}

declare dso_local %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @convert_and_clamp(i64, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @DC_LOG_BANDWIDTH_CALCS(i8*, i64, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
