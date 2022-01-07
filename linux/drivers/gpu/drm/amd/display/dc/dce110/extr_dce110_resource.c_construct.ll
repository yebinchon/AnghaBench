; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dc_context*, i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.dc_context = type { i32, %struct.dc_bios* }
%struct.dc_bios = type { %struct.TYPE_9__, i64, i32* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i64 }
%struct.dce110_resource_pool = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32**, i32**, i32**, %struct.TYPE_11__*, i32**, i32**, i32**, i32**, i32**, i32, i32*, i32*, i32**, i32*, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.hw_asic_id = type { i32 }
%struct.irq_service_init_data = type { %struct.dc_context* }

@bios_regs = common dso_local global i32 0, align 4
@dce110_res_pool_funcs = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_EXTERNAL = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL0 = common dso_local global i32 0, align 4
@clk_src_regs = common dso_local global i32* null, align 8
@CLOCK_SOURCE_ID_PLL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"DC: failed to create dp clock source!\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"DC: failed to create clock sources!\0A\00", align 1
@dmcu_regs = common dso_local global i32 0, align 4
@dmcu_shift = common dso_local global i32 0, align 4
@dmcu_mask = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"DC: failed to create dmcu!\0A\00", align 1
@abm_regs = common dso_local global i32 0, align 4
@abm_shift = common dso_local global i32 0, align 4
@abm_mask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"DC: failed to create abm!\0A\00", align 1
@dce110_tg_offsets = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"DC: failed to create tg!\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"DC: failed to create memory input!\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"DC: failed to create input pixel processor!\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"DC: failed to create transform!\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"DC: failed to create output pixel processor!\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"DC:failed to create aux engine!!\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"DC:failed to create i2c engine!!\0A\00", align 1
@res_create_funcs = common dso_local global i32 0, align 4
@plane_cap = common dso_local global i32 0, align 4
@underlay_plane_cap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dc*, %struct.dce110_resource_pool*, i32)* @construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct(i32 %0, %struct.dc* %1, %struct.dce110_resource_pool* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_asic_id, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc*, align 8
  %9 = alloca %struct.dce110_resource_pool*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dc_context*, align 8
  %12 = alloca %struct.dc_bios*, align 8
  %13 = alloca %struct.irq_service_init_data, align 8
  %14 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %6, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store i32 %0, i32* %7, align 4
  store %struct.dc* %1, %struct.dc** %8, align 8
  store %struct.dce110_resource_pool* %2, %struct.dce110_resource_pool** %9, align 8
  %15 = load %struct.dc*, %struct.dc** %8, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 0
  %17 = load %struct.dc_context*, %struct.dc_context** %16, align 8
  store %struct.dc_context* %17, %struct.dc_context** %11, align 8
  %18 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %19 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %18, i32 0, i32 1
  %20 = load %struct.dc_bios*, %struct.dc_bios** %19, align 8
  %21 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %20, i32 0, i32 2
  store i32* @bios_regs, i32** %21, align 8
  %22 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %23 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %22, i32 0, i32 0
  %24 = call %struct.TYPE_11__* @dce110_resource_cap(i32* %23)
  %25 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %26 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 7
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %27, align 8
  %28 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %29 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 18
  store i32* @dce110_res_pool_funcs, i32** %30, align 8
  %31 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %32 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 7
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %38 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %41 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %45 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %48 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %54 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %struct.dc*, %struct.dc** %8, align 8
  %57 = getelementptr inbounds %struct.dc, %struct.dc* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 150, i32* %58, align 8
  %59 = load %struct.dc*, %struct.dc** %8, align 8
  %60 = getelementptr inbounds %struct.dc, %struct.dc* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 100, i32* %61, align 4
  %62 = load %struct.dc*, %struct.dc** %8, align 8
  %63 = getelementptr inbounds %struct.dc, %struct.dc* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i32 128, i32* %64, align 8
  %65 = load %struct.dc*, %struct.dc** %8, align 8
  %66 = getelementptr inbounds %struct.dc, %struct.dc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  store i32 1, i32* %67, align 4
  %68 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %69 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %68, i32 0, i32 1
  %70 = load %struct.dc_bios*, %struct.dc_bios** %69, align 8
  store %struct.dc_bios* %70, %struct.dc_bios** %12, align 8
  %71 = load %struct.dc_bios*, %struct.dc_bios** %12, align 8
  %72 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %117

75:                                               ; preds = %4
  %76 = load %struct.dc_bios*, %struct.dc_bios** %12, align 8
  %77 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %117

81:                                               ; preds = %75
  %82 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %83 = load %struct.dc_bios*, %struct.dc_bios** %12, align 8
  %84 = load i32, i32* @CLOCK_SOURCE_ID_EXTERNAL, align 4
  %85 = call i8* @dce110_clock_source_create(%struct.dc_context* %82, %struct.dc_bios* %83, i32 %84, i32* null, i32 1)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %88 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 17
  store i32* %86, i32** %89, align 8
  %90 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %91 = load %struct.dc_bios*, %struct.dc_bios** %12, align 8
  %92 = load i32, i32* @CLOCK_SOURCE_ID_PLL0, align 4
  %93 = load i32*, i32** @clk_src_regs, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = call i8* @dce110_clock_source_create(%struct.dc_context* %90, %struct.dc_bios* %91, i32 %92, i32* %94, i32 0)
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %98 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 16
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 0
  store i32* %96, i32** %101, align 8
  %102 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %103 = load %struct.dc_bios*, %struct.dc_bios** %12, align 8
  %104 = load i32, i32* @CLOCK_SOURCE_ID_PLL1, align 4
  %105 = load i32*, i32** @clk_src_regs, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = call i8* @dce110_clock_source_create(%struct.dc_context* %102, %struct.dc_bios* %103, i32 %104, i32* %106, i32 0)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %110 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 16
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  store i32* %108, i32** %113, align 8
  %114 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %115 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  store i32 2, i32* %116, align 4
  br label %117

117:                                              ; preds = %81, %75, %4
  %118 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %119 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 17
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = call i32 @dm_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %125 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %473

126:                                              ; preds = %117
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %148, %126
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %130 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp ult i32 %128, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %127
  %135 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %136 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 16
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %134
  %145 = call i32 @dm_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %146 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %473

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %10, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %127

151:                                              ; preds = %127
  %152 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %153 = call i32* @dce_dmcu_create(%struct.dc_context* %152, i32* @dmcu_regs, i32* @dmcu_shift, i32* @dmcu_mask)
  %154 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %155 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 15
  store i32* %153, i32** %156, align 8
  %157 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %158 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 15
  %160 = load i32*, i32** %159, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %151
  %163 = call i32 @dm_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %164 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %473

165:                                              ; preds = %151
  %166 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %167 = call i32* @dce_abm_create(%struct.dc_context* %166, i32* @abm_regs, i32* @abm_shift, i32* @abm_mask)
  %168 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %169 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 14
  store i32* %167, i32** %170, align 8
  %171 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %172 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 14
  %174 = load i32*, i32** %173, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %165
  %177 = call i32 @dm_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %178 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %473

179:                                              ; preds = %165
  %180 = load %struct.dc*, %struct.dc** %8, align 8
  %181 = getelementptr inbounds %struct.dc, %struct.dc* %180, i32 0, i32 0
  %182 = load %struct.dc_context*, %struct.dc_context** %181, align 8
  %183 = getelementptr inbounds %struct.irq_service_init_data, %struct.irq_service_init_data* %13, i32 0, i32 0
  store %struct.dc_context* %182, %struct.dc_context** %183, align 8
  %184 = call i32 @dal_irq_service_dce110_create(%struct.irq_service_init_data* %13)
  %185 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %186 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 13
  store i32 %184, i32* %187, align 8
  %188 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %189 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 13
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %179
  br label %473

194:                                              ; preds = %179
  store i32 0, i32* %10, align 4
  br label %195

195:                                              ; preds = %322, %194
  %196 = load i32, i32* %10, align 4
  %197 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %198 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ult i32 %196, %200
  br i1 %201, label %202, label %325

202:                                              ; preds = %195
  %203 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %204 = load i32, i32* %10, align 4
  %205 = load i32*, i32** @dce110_tg_offsets, align 8
  %206 = load i32, i32* %10, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = call i32* @dce110_timing_generator_create(%struct.dc_context* %203, i32 %204, i32* %208)
  %210 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %211 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 12
  %213 = load i32**, i32*** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  store i32* %209, i32** %216, align 8
  %217 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %218 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 12
  %220 = load i32**, i32*** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %202
  %227 = call i32 (...) @BREAK_TO_DEBUGGER()
  %228 = call i32 @dm_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %473

229:                                              ; preds = %202
  %230 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %231 = load i32, i32* %10, align 4
  %232 = call i32* @dce110_mem_input_create(%struct.dc_context* %230, i32 %231)
  %233 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %234 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 11
  %236 = load i32**, i32*** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  store i32* %232, i32** %239, align 8
  %240 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %241 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 11
  %243 = load i32**, i32*** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32*, i32** %243, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = icmp eq i32* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %229
  %250 = call i32 (...) @BREAK_TO_DEBUGGER()
  %251 = call i32 @dm_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %473

252:                                              ; preds = %229
  %253 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %254 = load i32, i32* %10, align 4
  %255 = call i32* @dce110_ipp_create(%struct.dc_context* %253, i32 %254)
  %256 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %257 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 10
  %259 = load i32**, i32*** %258, align 8
  %260 = load i32, i32* %10, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %259, i64 %261
  store i32* %255, i32** %262, align 8
  %263 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %264 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 10
  %266 = load i32**, i32*** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = icmp eq i32* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %252
  %273 = call i32 (...) @BREAK_TO_DEBUGGER()
  %274 = call i32 @dm_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %473

275:                                              ; preds = %252
  %276 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %277 = load i32, i32* %10, align 4
  %278 = call i32* @dce110_transform_create(%struct.dc_context* %276, i32 %277)
  %279 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %280 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 9
  %282 = load i32**, i32*** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  store i32* %278, i32** %285, align 8
  %286 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %287 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 9
  %289 = load i32**, i32*** %288, align 8
  %290 = load i32, i32* %10, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %289, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = icmp eq i32* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %275
  %296 = call i32 (...) @BREAK_TO_DEBUGGER()
  %297 = call i32 @dm_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %473

298:                                              ; preds = %275
  %299 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %300 = load i32, i32* %10, align 4
  %301 = call i32* @dce110_opp_create(%struct.dc_context* %299, i32 %300)
  %302 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %303 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 8
  %305 = load i32**, i32*** %304, align 8
  %306 = load i32, i32* %10, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %305, i64 %307
  store i32* %301, i32** %308, align 8
  %309 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %310 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 8
  %312 = load i32**, i32*** %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i32*, i32** %312, i64 %314
  %316 = load i32*, i32** %315, align 8
  %317 = icmp eq i32* %316, null
  br i1 %317, label %318, label %321

318:                                              ; preds = %298
  %319 = call i32 (...) @BREAK_TO_DEBUGGER()
  %320 = call i32 @dm_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %473

321:                                              ; preds = %298
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %10, align 4
  %324 = add i32 %323, 1
  store i32 %324, i32* %10, align 4
  br label %195

325:                                              ; preds = %195
  store i32 0, i32* %10, align 4
  br label %326

326:                                              ; preds = %389, %325
  %327 = load i32, i32* %10, align 4
  %328 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %329 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 7
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp ult i32 %327, %333
  br i1 %334, label %335, label %392

335:                                              ; preds = %326
  %336 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %337 = load i32, i32* %10, align 4
  %338 = call i32* @dce110_aux_engine_create(%struct.dc_context* %336, i32 %337)
  %339 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %340 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 6
  %342 = load i32**, i32*** %341, align 8
  %343 = load i32, i32* %10, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds i32*, i32** %342, i64 %344
  store i32* %338, i32** %345, align 8
  %346 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %347 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 6
  %349 = load i32**, i32*** %348, align 8
  %350 = load i32, i32* %10, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds i32*, i32** %349, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = icmp eq i32* %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %335
  %356 = call i32 (...) @BREAK_TO_DEBUGGER()
  %357 = call i32 @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %473

358:                                              ; preds = %335
  %359 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %360 = load i32, i32* %10, align 4
  %361 = call i32* @dce110_i2c_hw_create(%struct.dc_context* %359, i32 %360)
  %362 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %363 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 5
  %365 = load i32**, i32*** %364, align 8
  %366 = load i32, i32* %10, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds i32*, i32** %365, i64 %367
  store i32* %361, i32** %368, align 8
  %369 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %370 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 5
  %372 = load i32**, i32*** %371, align 8
  %373 = load i32, i32* %10, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i32*, i32** %372, i64 %374
  %376 = load i32*, i32** %375, align 8
  %377 = icmp eq i32* %376, null
  br i1 %377, label %378, label %381

378:                                              ; preds = %358
  %379 = call i32 (...) @BREAK_TO_DEBUGGER()
  %380 = call i32 @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %473

381:                                              ; preds = %358
  %382 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %383 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 4
  %385 = load i32**, i32*** %384, align 8
  %386 = load i32, i32* %10, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds i32*, i32** %385, i64 %387
  store i32* null, i32** %388, align 8
  br label %389

389:                                              ; preds = %381
  %390 = load i32, i32* %10, align 4
  %391 = add i32 %390, 1
  store i32 %391, i32* %10, align 4
  br label %326

392:                                              ; preds = %326
  %393 = load %struct.dc*, %struct.dc** %8, align 8
  %394 = getelementptr inbounds %struct.dc, %struct.dc* %393, i32 0, i32 5
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %392
  %399 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %400 = call i32 @dce110_compressor_create(%struct.dc_context* %399)
  %401 = load %struct.dc*, %struct.dc** %8, align 8
  %402 = getelementptr inbounds %struct.dc, %struct.dc* %401, i32 0, i32 4
  store i32 %400, i32* %402, align 8
  br label %403

403:                                              ; preds = %398, %392
  %404 = load %struct.dc_context*, %struct.dc_context** %11, align 8
  %405 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %406 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %405, i32 0, i32 0
  %407 = call i32 @underlay_create(%struct.dc_context* %404, %struct.TYPE_10__* %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %403
  br label %473

410:                                              ; preds = %403
  %411 = load i32, i32* %7, align 4
  %412 = load %struct.dc*, %struct.dc** %8, align 8
  %413 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %414 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %413, i32 0, i32 0
  %415 = call i32 @resource_construct(i32 %411, %struct.dc* %412, %struct.TYPE_10__* %414, i32* @res_create_funcs)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %410
  br label %473

418:                                              ; preds = %410
  %419 = load %struct.dc*, %struct.dc** %8, align 8
  %420 = call i32 @dce110_hw_sequencer_construct(%struct.dc* %419)
  %421 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %422 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.dc*, %struct.dc** %8, align 8
  %426 = getelementptr inbounds %struct.dc, %struct.dc* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 4
  store i32 %424, i32* %427, align 8
  store i32 0, i32* %10, align 4
  br label %428

428:                                              ; preds = %444, %418
  %429 = load i32, i32* %10, align 4
  %430 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %431 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = icmp ult i32 %429, %433
  br i1 %434, label %435, label %447

435:                                              ; preds = %428
  %436 = load i32, i32* @plane_cap, align 4
  %437 = load %struct.dc*, %struct.dc** %8, align 8
  %438 = getelementptr inbounds %struct.dc, %struct.dc* %437, i32 0, i32 3
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 5
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %10, align 4
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  store i32 %436, i32* %443, align 4
  br label %444

444:                                              ; preds = %435
  %445 = load i32, i32* %10, align 4
  %446 = add i32 %445, 1
  store i32 %446, i32* %10, align 4
  br label %428

447:                                              ; preds = %428
  %448 = load i32, i32* @underlay_plane_cap, align 4
  %449 = load %struct.dc*, %struct.dc** %8, align 8
  %450 = getelementptr inbounds %struct.dc, %struct.dc* %449, i32 0, i32 3
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 5
  %452 = load i32*, i32** %451, align 8
  %453 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %454 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %452, i64 %457
  store i32 %448, i32* %458, align 4
  %459 = load %struct.dc*, %struct.dc** %8, align 8
  %460 = getelementptr inbounds %struct.dc, %struct.dc* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.dc*, %struct.dc** %8, align 8
  %463 = getelementptr inbounds %struct.dc, %struct.dc* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.dc*, %struct.dc** %8, align 8
  %466 = getelementptr inbounds %struct.dc, %struct.dc* %465, i32 0, i32 0
  %467 = load %struct.dc_context*, %struct.dc_context** %466, align 8
  %468 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = call i32 @bw_calcs_init(i32 %461, i32 %464, i32 %469)
  %471 = load %struct.dc*, %struct.dc** %8, align 8
  %472 = call i32 @bw_calcs_data_update_from_pplib(%struct.dc* %471)
  store i32 1, i32* %5, align 4
  br label %476

473:                                              ; preds = %417, %409, %378, %355, %318, %295, %272, %249, %226, %193, %176, %162, %144, %123
  %474 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %9, align 8
  %475 = call i32 @destruct(%struct.dce110_resource_pool* %474)
  store i32 0, i32* %5, align 4
  br label %476

476:                                              ; preds = %473, %447
  %477 = load i32, i32* %5, align 4
  ret i32 %477
}

declare dso_local %struct.TYPE_11__* @dce110_resource_cap(i32*) #1

declare dso_local i8* @dce110_clock_source_create(%struct.dc_context*, %struct.dc_bios*, i32, i32*, i32) #1

declare dso_local i32 @dm_error(i8*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32* @dce_dmcu_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32* @dce_abm_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32 @dal_irq_service_dce110_create(%struct.irq_service_init_data*) #1

declare dso_local i32* @dce110_timing_generator_create(%struct.dc_context*, i32, i32*) #1

declare dso_local i32* @dce110_mem_input_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce110_ipp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce110_transform_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce110_opp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce110_aux_engine_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce110_i2c_hw_create(%struct.dc_context*, i32) #1

declare dso_local i32 @dce110_compressor_create(%struct.dc_context*) #1

declare dso_local i32 @underlay_create(%struct.dc_context*, %struct.TYPE_10__*) #1

declare dso_local i32 @resource_construct(i32, %struct.dc*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @dce110_hw_sequencer_construct(%struct.dc*) #1

declare dso_local i32 @bw_calcs_init(i32, i32, i32) #1

declare dso_local i32 @bw_calcs_data_update_from_pplib(%struct.dc*) #1

declare dso_local i32 @destruct(%struct.dce110_resource_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
