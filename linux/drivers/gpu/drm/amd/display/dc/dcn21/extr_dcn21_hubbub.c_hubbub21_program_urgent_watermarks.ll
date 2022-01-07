; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_program_urgent_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_program_urgent_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn_watermark_set = type { %struct.TYPE_16__, %struct.TYPE_11__, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.dcn20_hubbub = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_10__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_URGENCY_WATERMARK_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"URGENCY_WATERMARK_A calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_FRAC_URG_BW_FLIP_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_FRAC_URG_BW_NOM_A = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_URGENCY_WATERMARK_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"URGENCY_WATERMARK_B calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_FRAC_URG_BW_FLIP_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_FRAC_URG_BW_NOM_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_URGENCY_WATERMARK_C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"URGENCY_WATERMARK_C calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_FRAC_URG_BW_FLIP_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_FRAC_URG_BW_NOM_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_URGENCY_WATERMARK_D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"URGENCY_WATERMARK_D calculated =%d\0AHW register value = 0x%x\0A\00", align 1
@DCHUBBUB_ARB_FRAC_URG_BW_FLIP_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_FRAC_URG_BW_NOM_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hubbub*, %struct.dcn_watermark_set*, i32, i32)* @hubbub21_program_urgent_watermarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hubbub21_program_urgent_watermarks(%struct.hubbub* %0, %struct.dcn_watermark_set* %1, i32 %2, i32 %3) #0 {
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
  br i1 %14, label %26, label %15

15:                                               ; preds = %4
  %16 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %17 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %21 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %19, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %15, %4
  %27 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %28 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %32 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  store i64 %30, i64* %34, align 8
  %35 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %36 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @convert_and_clamp(i64 %38, i32 %39, i32 2097151)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A, align 4
  %42 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_A, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_URGENCY_WATERMARK_A, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @REG_SET_2(i32 %41, i32 0, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %48 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %50, i32 %51)
  br label %53

53:                                               ; preds = %26, %15
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %58 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %62 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %60, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %56, %53
  %68 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %69 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %73 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  store i64 %71, i64* %75, align 8
  %76 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_FLIP_A, align 4
  %77 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_FLIP_A, align 4
  %78 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %79 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @REG_SET(i32 %76, i32 0, i32 %77, i64 %81)
  br label %83

83:                                               ; preds = %67, %56
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %83
  %87 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %88 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %92 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %90, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %86, %83
  %98 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %99 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %103 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  store i64 %101, i64* %105, align 8
  %106 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_NOM_A, align 4
  %107 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_NOM_A, align 4
  %108 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %109 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @REG_SET(i32 %106, i32 0, i32 %107, i64 %111)
  br label %113

113:                                              ; preds = %97, %86
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %113
  %117 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %118 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %122 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %120, %125
  br i1 %126, label %127, label %154

127:                                              ; preds = %116, %113
  %128 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %129 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %133 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  store i64 %131, i64* %135, align 8
  %136 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %137 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @convert_and_clamp(i64 %139, i32 %140, i32 2097151)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B, align 4
  %143 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_B, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_URGENCY_WATERMARK_B, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @REG_SET_2(i32 %142, i32 0, i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %149 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %151, i32 %152)
  br label %154

154:                                              ; preds = %127, %116
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %168, label %157

157:                                              ; preds = %154
  %158 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %159 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %163 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %161, %166
  br i1 %167, label %168, label %184

168:                                              ; preds = %157, %154
  %169 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %170 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %174 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  store i64 %172, i64* %176, align 8
  %177 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_FLIP_B, align 4
  %178 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_FLIP_B, align 4
  %179 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %180 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @REG_SET(i32 %177, i32 0, i32 %178, i64 %182)
  br label %184

184:                                              ; preds = %168, %157
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %198, label %187

187:                                              ; preds = %184
  %188 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %189 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %193 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp sgt i64 %191, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %187, %184
  %199 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %200 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %204 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 2
  store i64 %202, i64* %206, align 8
  %207 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_NOM_B, align 4
  %208 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_NOM_B, align 4
  %209 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %210 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @REG_SET(i32 %207, i32 0, i32 %208, i64 %212)
  br label %214

214:                                              ; preds = %198, %187
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %228, label %217

217:                                              ; preds = %214
  %218 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %219 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %223 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %221, %226
  br i1 %227, label %228, label %255

228:                                              ; preds = %217, %214
  %229 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %230 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %234 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  store i64 %232, i64* %236, align 8
  %237 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %238 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @convert_and_clamp(i64 %240, i32 %241, i32 2097151)
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C, align 4
  %244 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_C, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_URGENCY_WATERMARK_C, align 4
  %247 = load i32, i32* %10, align 4
  %248 = call i32 @REG_SET_2(i32 %243, i32 0, i32 %244, i32 %245, i32 %246, i32 %247)
  %249 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %250 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %252, i32 %253)
  br label %255

255:                                              ; preds = %228, %217
  %256 = load i32, i32* %8, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %269, label %258

258:                                              ; preds = %255
  %259 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %260 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %264 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp sgt i64 %262, %267
  br i1 %268, label %269, label %285

269:                                              ; preds = %258, %255
  %270 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %271 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %275 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 1
  store i64 %273, i64* %277, align 8
  %278 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_FLIP_C, align 4
  %279 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_FLIP_C, align 4
  %280 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %281 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @REG_SET(i32 %278, i32 0, i32 %279, i64 %283)
  br label %285

285:                                              ; preds = %269, %258
  %286 = load i32, i32* %8, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %299, label %288

288:                                              ; preds = %285
  %289 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %290 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %294 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = icmp sgt i64 %292, %297
  br i1 %298, label %299, label %315

299:                                              ; preds = %288, %285
  %300 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %301 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %305 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 2
  store i64 %303, i64* %307, align 8
  %308 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_NOM_C, align 4
  %309 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_NOM_C, align 4
  %310 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %311 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @REG_SET(i32 %308, i32 0, i32 %309, i64 %313)
  br label %315

315:                                              ; preds = %299, %288
  %316 = load i32, i32* %8, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %329, label %318

318:                                              ; preds = %315
  %319 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %320 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %324 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = icmp sgt i64 %322, %327
  br i1 %328, label %329, label %356

329:                                              ; preds = %318, %315
  %330 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %331 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %335 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 0
  store i64 %333, i64* %337, align 8
  %338 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %339 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i32, i32* %7, align 4
  %343 = call i32 @convert_and_clamp(i64 %341, i32 %342, i32 2097151)
  store i32 %343, i32* %10, align 4
  %344 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D, align 4
  %345 = load i32, i32* @DCHUBBUB_ARB_DATA_URGENCY_WATERMARK_D, align 4
  %346 = load i32, i32* %10, align 4
  %347 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_URGENCY_WATERMARK_D, align 4
  %348 = load i32, i32* %10, align 4
  %349 = call i32 @REG_SET_2(i32 %344, i32 0, i32 %345, i32 %346, i32 %347, i32 %348)
  %350 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %351 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %353, i32 %354)
  br label %356

356:                                              ; preds = %329, %318
  %357 = load i32, i32* %8, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %370, label %359

359:                                              ; preds = %356
  %360 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %361 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %365 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = icmp sgt i64 %363, %368
  br i1 %369, label %370, label %386

370:                                              ; preds = %359, %356
  %371 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %372 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %376 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 1
  store i64 %374, i64* %378, align 8
  %379 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_FLIP_D, align 4
  %380 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_FLIP_D, align 4
  %381 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %382 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = call i32 @REG_SET(i32 %379, i32 0, i32 %380, i64 %384)
  br label %386

386:                                              ; preds = %370, %359
  %387 = load i32, i32* %8, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %400, label %389

389:                                              ; preds = %386
  %390 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %391 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %395 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 2
  %398 = load i64, i64* %397, align 8
  %399 = icmp sgt i64 %393, %398
  br i1 %399, label %400, label %416

400:                                              ; preds = %389, %386
  %401 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %402 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %406 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %407, i32 0, i32 2
  store i64 %404, i64* %408, align 8
  %409 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_NOM_D, align 4
  %410 = load i32, i32* @DCHUBBUB_ARB_FRAC_URG_BW_NOM_D, align 4
  %411 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %412 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 2
  %414 = load i64, i64* %413, align 8
  %415 = call i32 @REG_SET(i32 %409, i32 0, i32 %410, i64 %414)
  br label %416

416:                                              ; preds = %400, %389
  ret void
}

declare dso_local %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @convert_and_clamp(i64, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DC_LOG_BANDWIDTH_CALCS(i8*, i64, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
