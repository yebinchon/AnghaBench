; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce100/extr_dce100_resource.c_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.dc = type { %struct.TYPE_5__, %struct.dc_context* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.dc_context = type { %struct.dc_bios* }
%struct.dc_bios = type { %struct.TYPE_6__, i64, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.dce110_resource_pool = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32**, i32**, i32**, %struct.TYPE_8__*, i32**, i32**, i32**, i32**, i32**, i8*, i32, i32*, i32*, i32**, i32*, i32* }
%struct.irq_service_init_data = type { %struct.dc_context* }

@bios_regs = common dso_local global i32 0, align 4
@res_cap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@dce100_res_pool_funcs = common dso_local global i32 0, align 4
@NO_UNDERLAY_PIPE = common dso_local global i8* null, align 8
@CLOCK_SOURCE_ID_EXTERNAL = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL0 = common dso_local global i32 0, align 4
@clk_src_regs = common dso_local global i32* null, align 8
@CLOCK_SOURCE_ID_PLL1 = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL2 = common dso_local global i32 0, align 4
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
@dce100_tg_offsets = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"DC: failed to create tg!\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"DC: failed to create memory input!\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"DC: failed to create input pixel processor!\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"DC: failed to create transform!\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"DC: failed to create output pixel processor!\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"DC:failed to create aux engine!!\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"DC:failed to create i2c engine!!\0A\00", align 1
@plane_cap = common dso_local global i32 0, align 4
@res_create_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dc*, %struct.dce110_resource_pool*)* @construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct(i32 %0, %struct.dc* %1, %struct.dce110_resource_pool* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dce110_resource_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_context*, align 8
  %10 = alloca %struct.dc_bios*, align 8
  %11 = alloca %struct.irq_service_init_data, align 8
  store i32 %0, i32* %5, align 4
  store %struct.dc* %1, %struct.dc** %6, align 8
  store %struct.dce110_resource_pool* %2, %struct.dce110_resource_pool** %7, align 8
  %12 = load %struct.dc*, %struct.dc** %6, align 8
  %13 = getelementptr inbounds %struct.dc, %struct.dc* %12, i32 0, i32 1
  %14 = load %struct.dc_context*, %struct.dc_context** %13, align 8
  store %struct.dc_context* %14, %struct.dc_context** %9, align 8
  %15 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %16 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %15, i32 0, i32 0
  %17 = load %struct.dc_bios*, %struct.dc_bios** %16, align 8
  %18 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %17, i32 0, i32 2
  store i32* @bios_regs, i32** %18, align 8
  %19 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %20 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 6
  store %struct.TYPE_8__* @res_cap, %struct.TYPE_8__** %21, align 8
  %22 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %23 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 18
  store i32* @dce100_res_pool_funcs, i32** %24, align 8
  %25 = load i8*, i8** @NO_UNDERLAY_PIPE, align 8
  %26 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %27 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 12
  store i8* %25, i8** %28, align 8
  %29 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %30 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %29, i32 0, i32 0
  %31 = load %struct.dc_bios*, %struct.dc_bios** %30, align 8
  store %struct.dc_bios* %31, %struct.dc_bios** %10, align 8
  %32 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %33 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %90

36:                                               ; preds = %3
  %37 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %38 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %90

42:                                               ; preds = %36
  %43 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %44 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %45 = load i32, i32* @CLOCK_SOURCE_ID_EXTERNAL, align 4
  %46 = call i8* @dce100_clock_source_create(%struct.dc_context* %43, %struct.dc_bios* %44, i32 %45, i32* null, i32 1)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %49 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 17
  store i32* %47, i32** %50, align 8
  %51 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %52 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %53 = load i32, i32* @CLOCK_SOURCE_ID_PLL0, align 4
  %54 = load i32*, i32** @clk_src_regs, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i8* @dce100_clock_source_create(%struct.dc_context* %51, %struct.dc_bios* %52, i32 %53, i32* %55, i32 0)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %59 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 16
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 0
  store i32* %57, i32** %62, align 8
  %63 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %64 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %65 = load i32, i32* @CLOCK_SOURCE_ID_PLL1, align 4
  %66 = load i32*, i32** @clk_src_regs, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = call i8* @dce100_clock_source_create(%struct.dc_context* %63, %struct.dc_bios* %64, i32 %65, i32* %67, i32 0)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %71 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 16
  %73 = load i32**, i32*** %72, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  store i32* %69, i32** %74, align 8
  %75 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %76 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %77 = load i32, i32* @CLOCK_SOURCE_ID_PLL2, align 4
  %78 = load i32*, i32** @clk_src_regs, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = call i8* @dce100_clock_source_create(%struct.dc_context* %75, %struct.dc_bios* %76, i32 %77, i32* %79, i32 0)
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %83 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 16
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 2
  store i32* %81, i32** %86, align 8
  %87 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %88 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 3, i32* %89, align 8
  br label %128

90:                                               ; preds = %36, %3
  %91 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %92 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %93 = load i32, i32* @CLOCK_SOURCE_ID_PLL0, align 4
  %94 = load i32*, i32** @clk_src_regs, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = call i8* @dce100_clock_source_create(%struct.dc_context* %91, %struct.dc_bios* %92, i32 %93, i32* %95, i32 1)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %99 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 17
  store i32* %97, i32** %100, align 8
  %101 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %102 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %103 = load i32, i32* @CLOCK_SOURCE_ID_PLL1, align 4
  %104 = load i32*, i32** @clk_src_regs, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = call i8* @dce100_clock_source_create(%struct.dc_context* %101, %struct.dc_bios* %102, i32 %103, i32* %105, i32 0)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %109 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 16
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  store i32* %107, i32** %112, align 8
  %113 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %114 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %115 = load i32, i32* @CLOCK_SOURCE_ID_PLL2, align 4
  %116 = load i32*, i32** @clk_src_regs, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = call i8* @dce100_clock_source_create(%struct.dc_context* %113, %struct.dc_bios* %114, i32 %115, i32* %117, i32 0)
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %121 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 16
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 1
  store i32* %119, i32** %124, align 8
  %125 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %126 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i32 2, i32* %127, align 8
  br label %128

128:                                              ; preds = %90, %42
  %129 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %130 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 17
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = call i32 @dm_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %136 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %473

137:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %159, %137
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %141 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ult i32 %139, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %138
  %146 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %147 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 16
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  %156 = call i32 @dm_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %157 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %473

158:                                              ; preds = %145
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %8, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %138

162:                                              ; preds = %138
  %163 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %164 = call i32* @dce_dmcu_create(%struct.dc_context* %163, i32* @dmcu_regs, i32* @dmcu_shift, i32* @dmcu_mask)
  %165 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %166 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 15
  store i32* %164, i32** %167, align 8
  %168 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %169 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 15
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %162
  %174 = call i32 @dm_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %175 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %473

176:                                              ; preds = %162
  %177 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %178 = call i32* @dce_abm_create(%struct.dc_context* %177, i32* @abm_regs, i32* @abm_shift, i32* @abm_mask)
  %179 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %180 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 14
  store i32* %178, i32** %181, align 8
  %182 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %183 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 14
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %176
  %188 = call i32 @dm_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %189 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %473

190:                                              ; preds = %176
  %191 = load %struct.dc*, %struct.dc** %6, align 8
  %192 = getelementptr inbounds %struct.dc, %struct.dc* %191, i32 0, i32 1
  %193 = load %struct.dc_context*, %struct.dc_context** %192, align 8
  %194 = getelementptr inbounds %struct.irq_service_init_data, %struct.irq_service_init_data* %11, i32 0, i32 0
  store %struct.dc_context* %193, %struct.dc_context** %194, align 8
  %195 = call i32 @dal_irq_service_dce110_create(%struct.irq_service_init_data* %11)
  %196 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %197 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 13
  store i32 %195, i32* %198, align 8
  %199 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %200 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 13
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %190
  br label %473

205:                                              ; preds = %190
  %206 = load i8*, i8** @NO_UNDERLAY_PIPE, align 8
  %207 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %208 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 12
  store i8* %206, i8** %209, align 8
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @res_cap, i32 0, i32 0), align 4
  %211 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %212 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  %214 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %215 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 6
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %221 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 2
  store i32 %219, i32* %222, align 8
  %223 = load %struct.dc*, %struct.dc** %6, align 8
  %224 = getelementptr inbounds %struct.dc, %struct.dc* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  store i32 200, i32* %225, align 8
  %226 = load %struct.dc*, %struct.dc** %6, align 8
  %227 = getelementptr inbounds %struct.dc, %struct.dc* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 1
  store i32 40, i32* %228, align 4
  %229 = load %struct.dc*, %struct.dc** %6, align 8
  %230 = getelementptr inbounds %struct.dc, %struct.dc* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  store i32 128, i32* %231, align 8
  %232 = load %struct.dc*, %struct.dc** %6, align 8
  %233 = getelementptr inbounds %struct.dc, %struct.dc* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 3
  store i32 1, i32* %234, align 4
  %235 = load %struct.dc*, %struct.dc** %6, align 8
  %236 = getelementptr inbounds %struct.dc, %struct.dc* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 4
  store i32 1, i32* %237, align 8
  store i32 0, i32* %8, align 4
  br label %238

238:                                              ; preds = %365, %205
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %241 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp ult i32 %239, %243
  br i1 %244, label %245, label %368

245:                                              ; preds = %238
  %246 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %247 = load i32, i32* %8, align 4
  %248 = load i32*, i32** @dce100_tg_offsets, align 8
  %249 = load i32, i32* %8, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = call i32* @dce100_timing_generator_create(%struct.dc_context* %246, i32 %247, i32* %251)
  %253 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %254 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 11
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  store i32* %252, i32** %259, align 8
  %260 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %261 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 11
  %263 = load i32**, i32*** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32*, i32** %263, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = icmp eq i32* %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %245
  %270 = call i32 (...) @BREAK_TO_DEBUGGER()
  %271 = call i32 @dm_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %473

272:                                              ; preds = %245
  %273 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %274 = load i32, i32* %8, align 4
  %275 = call i32* @dce100_mem_input_create(%struct.dc_context* %273, i32 %274)
  %276 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %277 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 10
  %279 = load i32**, i32*** %278, align 8
  %280 = load i32, i32* %8, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %279, i64 %281
  store i32* %275, i32** %282, align 8
  %283 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %284 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 10
  %286 = load i32**, i32*** %285, align 8
  %287 = load i32, i32* %8, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i32*, i32** %286, i64 %288
  %290 = load i32*, i32** %289, align 8
  %291 = icmp eq i32* %290, null
  br i1 %291, label %292, label %295

292:                                              ; preds = %272
  %293 = call i32 (...) @BREAK_TO_DEBUGGER()
  %294 = call i32 @dm_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %473

295:                                              ; preds = %272
  %296 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %297 = load i32, i32* %8, align 4
  %298 = call i32* @dce100_ipp_create(%struct.dc_context* %296, i32 %297)
  %299 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %300 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 9
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  store i32* %298, i32** %305, align 8
  %306 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %307 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 9
  %309 = load i32**, i32*** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %309, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = icmp eq i32* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %295
  %316 = call i32 (...) @BREAK_TO_DEBUGGER()
  %317 = call i32 @dm_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %473

318:                                              ; preds = %295
  %319 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %320 = load i32, i32* %8, align 4
  %321 = call i32* @dce100_transform_create(%struct.dc_context* %319, i32 %320)
  %322 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %323 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 8
  %325 = load i32**, i32*** %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  store i32* %321, i32** %328, align 8
  %329 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %330 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 8
  %332 = load i32**, i32*** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds i32*, i32** %332, i64 %334
  %336 = load i32*, i32** %335, align 8
  %337 = icmp eq i32* %336, null
  br i1 %337, label %338, label %341

338:                                              ; preds = %318
  %339 = call i32 (...) @BREAK_TO_DEBUGGER()
  %340 = call i32 @dm_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %473

341:                                              ; preds = %318
  %342 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %343 = load i32, i32* %8, align 4
  %344 = call i32* @dce100_opp_create(%struct.dc_context* %342, i32 %343)
  %345 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %346 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 7
  %348 = load i32**, i32*** %347, align 8
  %349 = load i32, i32* %8, align 4
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds i32*, i32** %348, i64 %350
  store i32* %344, i32** %351, align 8
  %352 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %353 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 7
  %355 = load i32**, i32*** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds i32*, i32** %355, i64 %357
  %359 = load i32*, i32** %358, align 8
  %360 = icmp eq i32* %359, null
  br i1 %360, label %361, label %364

361:                                              ; preds = %341
  %362 = call i32 (...) @BREAK_TO_DEBUGGER()
  %363 = call i32 @dm_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %473

364:                                              ; preds = %341
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %8, align 4
  %367 = add i32 %366, 1
  store i32 %367, i32* %8, align 4
  br label %238

368:                                              ; preds = %238
  store i32 0, i32* %8, align 4
  br label %369

369:                                              ; preds = %432, %368
  %370 = load i32, i32* %8, align 4
  %371 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %372 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 6
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = icmp ult i32 %370, %376
  br i1 %377, label %378, label %435

378:                                              ; preds = %369
  %379 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %380 = load i32, i32* %8, align 4
  %381 = call i32* @dce100_aux_engine_create(%struct.dc_context* %379, i32 %380)
  %382 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %383 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 5
  %385 = load i32**, i32*** %384, align 8
  %386 = load i32, i32* %8, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds i32*, i32** %385, i64 %387
  store i32* %381, i32** %388, align 8
  %389 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %390 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 5
  %392 = load i32**, i32*** %391, align 8
  %393 = load i32, i32* %8, align 4
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds i32*, i32** %392, i64 %394
  %396 = load i32*, i32** %395, align 8
  %397 = icmp eq i32* %396, null
  br i1 %397, label %398, label %401

398:                                              ; preds = %378
  %399 = call i32 (...) @BREAK_TO_DEBUGGER()
  %400 = call i32 @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %473

401:                                              ; preds = %378
  %402 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %403 = load i32, i32* %8, align 4
  %404 = call i32* @dce100_i2c_hw_create(%struct.dc_context* %402, i32 %403)
  %405 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %406 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 4
  %408 = load i32**, i32*** %407, align 8
  %409 = load i32, i32* %8, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds i32*, i32** %408, i64 %410
  store i32* %404, i32** %411, align 8
  %412 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %413 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 4
  %415 = load i32**, i32*** %414, align 8
  %416 = load i32, i32* %8, align 4
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds i32*, i32** %415, i64 %417
  %419 = load i32*, i32** %418, align 8
  %420 = icmp eq i32* %419, null
  br i1 %420, label %421, label %424

421:                                              ; preds = %401
  %422 = call i32 (...) @BREAK_TO_DEBUGGER()
  %423 = call i32 @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %473

424:                                              ; preds = %401
  %425 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %426 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %426, i32 0, i32 3
  %428 = load i32**, i32*** %427, align 8
  %429 = load i32, i32* %8, align 4
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds i32*, i32** %428, i64 %430
  store i32* null, i32** %431, align 8
  br label %432

432:                                              ; preds = %424
  %433 = load i32, i32* %8, align 4
  %434 = add i32 %433, 1
  store i32 %434, i32* %8, align 4
  br label %369

435:                                              ; preds = %369
  %436 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %437 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.dc*, %struct.dc** %6, align 8
  %441 = getelementptr inbounds %struct.dc, %struct.dc* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 5
  store i32 %439, i32* %442, align 4
  store i32 0, i32* %8, align 4
  br label %443

443:                                              ; preds = %459, %435
  %444 = load i32, i32* %8, align 4
  %445 = load %struct.dc*, %struct.dc** %6, align 8
  %446 = getelementptr inbounds %struct.dc, %struct.dc* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 5
  %448 = load i32, i32* %447, align 4
  %449 = icmp ult i32 %444, %448
  br i1 %449, label %450, label %462

450:                                              ; preds = %443
  %451 = load i32, i32* @plane_cap, align 4
  %452 = load %struct.dc*, %struct.dc** %6, align 8
  %453 = getelementptr inbounds %struct.dc, %struct.dc* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i32 0, i32 6
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* %8, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  store i32 %451, i32* %458, align 4
  br label %459

459:                                              ; preds = %450
  %460 = load i32, i32* %8, align 4
  %461 = add i32 %460, 1
  store i32 %461, i32* %8, align 4
  br label %443

462:                                              ; preds = %443
  %463 = load i32, i32* %5, align 4
  %464 = load %struct.dc*, %struct.dc** %6, align 8
  %465 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %466 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %465, i32 0, i32 0
  %467 = call i32 @resource_construct(i32 %463, %struct.dc* %464, %struct.TYPE_7__* %466, i32* @res_create_funcs)
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %470, label %469

469:                                              ; preds = %462
  br label %473

470:                                              ; preds = %462
  %471 = load %struct.dc*, %struct.dc** %6, align 8
  %472 = call i32 @dce100_hw_sequencer_construct(%struct.dc* %471)
  store i32 1, i32* %4, align 4
  br label %476

473:                                              ; preds = %469, %421, %398, %361, %338, %315, %292, %269, %204, %187, %173, %155, %134
  %474 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %475 = call i32 @destruct(%struct.dce110_resource_pool* %474)
  store i32 0, i32* %4, align 4
  br label %476

476:                                              ; preds = %473, %470
  %477 = load i32, i32* %4, align 4
  ret i32 %477
}

declare dso_local i8* @dce100_clock_source_create(%struct.dc_context*, %struct.dc_bios*, i32, i32*, i32) #1

declare dso_local i32 @dm_error(i8*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32* @dce_dmcu_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32* @dce_abm_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32 @dal_irq_service_dce110_create(%struct.irq_service_init_data*) #1

declare dso_local i32* @dce100_timing_generator_create(%struct.dc_context*, i32, i32*) #1

declare dso_local i32* @dce100_mem_input_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce100_ipp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce100_transform_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce100_opp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce100_aux_engine_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce100_i2c_hw_create(%struct.dc_context*, i32) #1

declare dso_local i32 @resource_construct(i32, %struct.dc*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @dce100_hw_sequencer_construct(%struct.dc*) #1

declare dso_local i32 @destruct(%struct.dce110_resource_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
