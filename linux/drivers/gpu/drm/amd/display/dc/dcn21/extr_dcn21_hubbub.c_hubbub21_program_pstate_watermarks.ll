; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_program_pstate_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_program_pstate_watermarks.c"
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
%struct.dcn20_hubbub = type { %struct.TYPE_23__ }
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
@DCHUBBUB_ARB_VM_ROW_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"DRAM_CLK_CHANGE_WATERMARK_A calculated =%d\0AHW register value = 0x%x\0A\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"DRAM_CLK_CHANGE_WATERMARK_B calculated =%d\0AHW register value = 0x%x\0A\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"DRAM_CLK_CHANGE_WATERMARK_C calculated =%d\0AHW register value = 0x%x\0A\0A\00", align 1
@DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D = common dso_local global i32 0, align 4
@DCHUBBUB_ARB_VM_ROW_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"DRAM_CLK_CHANGE_WATERMARK_D calculated =%d\0AHW register value = 0x%x\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hubbub*, %struct.dcn_watermark_set*, i32, i32)* @hubbub21_program_pstate_watermarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hubbub21_program_pstate_watermarks(%struct.hubbub* %0, %struct.dcn_watermark_set* %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %22 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %20, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %15, %4
  %29 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %30 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %35 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %34, i32 0, i32 0
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
  %49 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_DRAM_CLK_CHANGE_WATERMARK_A, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @REG_SET_2(i32 %46, i32 0, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %53 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %28, %15
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %59
  %63 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %64 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %69 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %67, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %62, %59
  %76 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %77 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %82 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 0
  store i64 %80, i64* %85, align 8
  %86 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %87 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @convert_and_clamp(i64 %90, i32 %91, i32 2097151)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B, align 4
  %94 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_DRAM_CLK_CHANGE_WATERMARK_B, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @REG_SET_2(i32 %93, i32 0, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %100 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %103, i32 %104)
  br label %106

106:                                              ; preds = %75, %62
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %106
  %110 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %111 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %116 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %114, %120
  br i1 %121, label %122, label %153

122:                                              ; preds = %109, %106
  %123 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %124 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %129 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 0
  store i64 %127, i64* %132, align 8
  %133 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %134 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @convert_and_clamp(i64 %137, i32 %138, i32 2097151)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C, align 4
  %141 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_DRAM_CLK_CHANGE_WATERMARK_C, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @REG_SET_2(i32 %140, i32 0, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %147 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %150, i32 %151)
  br label %153

153:                                              ; preds = %122, %109
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %169, label %156

156:                                              ; preds = %153
  %157 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %158 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %163 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %161, %167
  br i1 %168, label %169, label %200

169:                                              ; preds = %156, %153
  %170 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %171 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %9, align 8
  %176 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  store i64 %174, i64* %179, align 8
  %180 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %181 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @convert_and_clamp(i64 %184, i32 %185, i32 2097151)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D, align 4
  %188 = load i32, i32* @DCHUBBUB_ARB_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @DCHUBBUB_ARB_VM_ROW_ALLOW_DRAM_CLK_CHANGE_WATERMARK_D, align 4
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @REG_SET_2(i32 %187, i32 0, i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load %struct.dcn_watermark_set*, %struct.dcn_watermark_set** %6, align 8
  %194 = getelementptr inbounds %struct.dcn_watermark_set, %struct.dcn_watermark_set* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @DC_LOG_BANDWIDTH_CALCS(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i64 %197, i32 %198)
  br label %200

200:                                              ; preds = %169, %156
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
