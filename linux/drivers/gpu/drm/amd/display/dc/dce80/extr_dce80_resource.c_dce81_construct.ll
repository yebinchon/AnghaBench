; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_resource.c_dce81_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_resource.c_dce81_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.dc = type { %struct.TYPE_5__, %struct.dc_context* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.dc_context = type { %struct.dc_bios* }
%struct.dc_bios = type { %struct.TYPE_6__, i64, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.dce110_resource_pool = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32**, i32**, i32**, %struct.TYPE_8__*, i32**, i32**, i32**, i32**, i32**, i32, i32*, i32*, i32**, i32*, i32, i32* }
%struct.irq_service_init_data = type { %struct.dc_context* }

@bios_regs = common dso_local global i32 0, align 4
@res_cap_81 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@dce80_res_pool_funcs = common dso_local global i32 0, align 4
@NO_UNDERLAY_PIPE = common dso_local global i32 0, align 4
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
@dce80_tg_offsets = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"DC: failed to create tg!\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"DC: failed to create memory input!\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"DC: failed to create input pixel processor!\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"DC: failed to create transform!\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"DC: failed to create output pixel processor!\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"DC:failed to create aux engine!!\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"DC:failed to create i2c engine!!\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"DC:failed to create sw i2c!!\0A\00", align 1
@plane_cap = common dso_local global i32 0, align 4
@res_create_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dc*, %struct.dce110_resource_pool*)* @dce81_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce81_construct(i32 %0, %struct.dc* %1, %struct.dce110_resource_pool* %2) #0 {
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
  store %struct.TYPE_8__* @res_cap_81, %struct.TYPE_8__** %21, align 8
  %22 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %23 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 18
  store i32* @dce80_res_pool_funcs, i32** %24, align 8
  %25 = load i32, i32* @NO_UNDERLAY_PIPE, align 4
  %26 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %27 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 17
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @res_cap_81, i32 0, i32 0), align 4
  %30 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %31 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @res_cap_81, i32 0, i32 0), align 4
  %34 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %35 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.dc*, %struct.dc** %6, align 8
  %38 = getelementptr inbounds %struct.dc, %struct.dc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 200, i32* %39, align 8
  %40 = load %struct.dc*, %struct.dc** %6, align 8
  %41 = getelementptr inbounds %struct.dc, %struct.dc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 40, i32* %42, align 4
  %43 = load %struct.dc*, %struct.dc** %6, align 8
  %44 = getelementptr inbounds %struct.dc, %struct.dc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32 128, i32* %45, align 8
  %46 = load %struct.dc*, %struct.dc** %6, align 8
  %47 = getelementptr inbounds %struct.dc, %struct.dc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %50 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %49, i32 0, i32 0
  %51 = load %struct.dc_bios*, %struct.dc_bios** %50, align 8
  store %struct.dc_bios* %51, %struct.dc_bios** %10, align 8
  %52 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %53 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %3
  %57 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %58 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %110

62:                                               ; preds = %56
  %63 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %64 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %65 = load i32, i32* @CLOCK_SOURCE_ID_EXTERNAL, align 4
  %66 = call i8* @dce80_clock_source_create(%struct.dc_context* %63, %struct.dc_bios* %64, i32 %65, i32* null, i32 1)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %69 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 16
  store i32* %67, i32** %70, align 8
  %71 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %72 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %73 = load i32, i32* @CLOCK_SOURCE_ID_PLL0, align 4
  %74 = load i32*, i32** @clk_src_regs, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = call i8* @dce80_clock_source_create(%struct.dc_context* %71, %struct.dc_bios* %72, i32 %73, i32* %75, i32 0)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %79 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 15
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  store i32* %77, i32** %82, align 8
  %83 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %84 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %85 = load i32, i32* @CLOCK_SOURCE_ID_PLL1, align 4
  %86 = load i32*, i32** @clk_src_regs, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = call i8* @dce80_clock_source_create(%struct.dc_context* %83, %struct.dc_bios* %84, i32 %85, i32* %87, i32 0)
  %89 = bitcast i8* %88 to i32*
  %90 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %91 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 15
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  store i32* %89, i32** %94, align 8
  %95 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %96 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %97 = load i32, i32* @CLOCK_SOURCE_ID_PLL2, align 4
  %98 = load i32*, i32** @clk_src_regs, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = call i8* @dce80_clock_source_create(%struct.dc_context* %95, %struct.dc_bios* %96, i32 %97, i32* %99, i32 0)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %103 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 15
  %105 = load i32**, i32*** %104, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 2
  store i32* %101, i32** %106, align 8
  %107 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %108 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i32 3, i32* %109, align 8
  br label %148

110:                                              ; preds = %56, %3
  %111 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %112 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %113 = load i32, i32* @CLOCK_SOURCE_ID_PLL0, align 4
  %114 = load i32*, i32** @clk_src_regs, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = call i8* @dce80_clock_source_create(%struct.dc_context* %111, %struct.dc_bios* %112, i32 %113, i32* %115, i32 1)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %119 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 16
  store i32* %117, i32** %120, align 8
  %121 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %122 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %123 = load i32, i32* @CLOCK_SOURCE_ID_PLL1, align 4
  %124 = load i32*, i32** @clk_src_regs, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = call i8* @dce80_clock_source_create(%struct.dc_context* %121, %struct.dc_bios* %122, i32 %123, i32* %125, i32 0)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %129 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 15
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 0
  store i32* %127, i32** %132, align 8
  %133 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %134 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %135 = load i32, i32* @CLOCK_SOURCE_ID_PLL2, align 4
  %136 = load i32*, i32** @clk_src_regs, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = call i8* @dce80_clock_source_create(%struct.dc_context* %133, %struct.dc_bios* %134, i32 %135, i32* %137, i32 0)
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %141 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 15
  %143 = load i32**, i32*** %142, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 1
  store i32* %139, i32** %144, align 8
  %145 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %146 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  store i32 2, i32* %147, align 8
  br label %148

148:                                              ; preds = %110, %62
  %149 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %150 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 16
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = call i32 @dm_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %156 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %479

157:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %179, %157
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %161 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = icmp ult i32 %159, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %158
  %166 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %167 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 15
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %165
  %176 = call i32 @dm_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %177 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %479

178:                                              ; preds = %165
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %8, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %158

182:                                              ; preds = %158
  %183 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %184 = call i32* @dce_dmcu_create(%struct.dc_context* %183, i32* @dmcu_regs, i32* @dmcu_shift, i32* @dmcu_mask)
  %185 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %186 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 14
  store i32* %184, i32** %187, align 8
  %188 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %189 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 14
  %191 = load i32*, i32** %190, align 8
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %182
  %194 = call i32 @dm_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %195 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %479

196:                                              ; preds = %182
  %197 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %198 = call i32* @dce_abm_create(%struct.dc_context* %197, i32* @abm_regs, i32* @abm_shift, i32* @abm_mask)
  %199 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %200 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 13
  store i32* %198, i32** %201, align 8
  %202 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %203 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 13
  %205 = load i32*, i32** %204, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %196
  %208 = call i32 @dm_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %209 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %479

210:                                              ; preds = %196
  %211 = load %struct.dc*, %struct.dc** %6, align 8
  %212 = getelementptr inbounds %struct.dc, %struct.dc* %211, i32 0, i32 1
  %213 = load %struct.dc_context*, %struct.dc_context** %212, align 8
  %214 = getelementptr inbounds %struct.irq_service_init_data, %struct.irq_service_init_data* %11, i32 0, i32 0
  store %struct.dc_context* %213, %struct.dc_context** %214, align 8
  %215 = call i32 @dal_irq_service_dce80_create(%struct.irq_service_init_data* %11)
  %216 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %217 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 12
  store i32 %215, i32* %218, align 8
  %219 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %220 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 12
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %210
  br label %479

225:                                              ; preds = %210
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %353, %225
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %229 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ult i32 %227, %231
  br i1 %232, label %233, label %356

233:                                              ; preds = %226
  %234 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %235 = load i32, i32* %8, align 4
  %236 = load i32*, i32** @dce80_tg_offsets, align 8
  %237 = load i32, i32* %8, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = call i32* @dce80_timing_generator_create(%struct.dc_context* %234, i32 %235, i32* %239)
  %241 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %242 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 11
  %244 = load i32**, i32*** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  store i32* %240, i32** %247, align 8
  %248 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %249 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 11
  %251 = load i32**, i32*** %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i32*, i32** %251, i64 %253
  %255 = load i32*, i32** %254, align 8
  %256 = icmp eq i32* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %233
  %258 = call i32 (...) @BREAK_TO_DEBUGGER()
  %259 = call i32 @dm_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %479

260:                                              ; preds = %233
  %261 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %262 = load i32, i32* %8, align 4
  %263 = call i32* @dce80_mem_input_create(%struct.dc_context* %261, i32 %262)
  %264 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %265 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 10
  %267 = load i32**, i32*** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32*, i32** %267, i64 %269
  store i32* %263, i32** %270, align 8
  %271 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %272 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 10
  %274 = load i32**, i32*** %273, align 8
  %275 = load i32, i32* %8, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i32*, i32** %274, i64 %276
  %278 = load i32*, i32** %277, align 8
  %279 = icmp eq i32* %278, null
  br i1 %279, label %280, label %283

280:                                              ; preds = %260
  %281 = call i32 (...) @BREAK_TO_DEBUGGER()
  %282 = call i32 @dm_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %479

283:                                              ; preds = %260
  %284 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %285 = load i32, i32* %8, align 4
  %286 = call i32* @dce80_ipp_create(%struct.dc_context* %284, i32 %285)
  %287 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %288 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 9
  %290 = load i32**, i32*** %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %290, i64 %292
  store i32* %286, i32** %293, align 8
  %294 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %295 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 9
  %297 = load i32**, i32*** %296, align 8
  %298 = load i32, i32* %8, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i32*, i32** %297, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = icmp eq i32* %301, null
  br i1 %302, label %303, label %306

303:                                              ; preds = %283
  %304 = call i32 (...) @BREAK_TO_DEBUGGER()
  %305 = call i32 @dm_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %479

306:                                              ; preds = %283
  %307 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %308 = load i32, i32* %8, align 4
  %309 = call i32* @dce80_transform_create(%struct.dc_context* %307, i32 %308)
  %310 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %311 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 8
  %313 = load i32**, i32*** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i32*, i32** %313, i64 %315
  store i32* %309, i32** %316, align 8
  %317 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %318 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 8
  %320 = load i32**, i32*** %319, align 8
  %321 = load i32, i32* %8, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds i32*, i32** %320, i64 %322
  %324 = load i32*, i32** %323, align 8
  %325 = icmp eq i32* %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %306
  %327 = call i32 (...) @BREAK_TO_DEBUGGER()
  %328 = call i32 @dm_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %479

329:                                              ; preds = %306
  %330 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %331 = load i32, i32* %8, align 4
  %332 = call i32* @dce80_opp_create(%struct.dc_context* %330, i32 %331)
  %333 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %334 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 7
  %336 = load i32**, i32*** %335, align 8
  %337 = load i32, i32* %8, align 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds i32*, i32** %336, i64 %338
  store i32* %332, i32** %339, align 8
  %340 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %341 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 7
  %343 = load i32**, i32*** %342, align 8
  %344 = load i32, i32* %8, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i32*, i32** %343, i64 %345
  %347 = load i32*, i32** %346, align 8
  %348 = icmp eq i32* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %329
  %350 = call i32 (...) @BREAK_TO_DEBUGGER()
  %351 = call i32 @dm_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %479

352:                                              ; preds = %329
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %8, align 4
  %355 = add i32 %354, 1
  store i32 %355, i32* %8, align 4
  br label %226

356:                                              ; preds = %226
  store i32 0, i32* %8, align 4
  br label %357

357:                                              ; preds = %435, %356
  %358 = load i32, i32* %8, align 4
  %359 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %360 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 6
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = icmp ult i32 %358, %364
  br i1 %365, label %366, label %438

366:                                              ; preds = %357
  %367 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %368 = load i32, i32* %8, align 4
  %369 = call i32* @dce80_aux_engine_create(%struct.dc_context* %367, i32 %368)
  %370 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %371 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 5
  %373 = load i32**, i32*** %372, align 8
  %374 = load i32, i32* %8, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds i32*, i32** %373, i64 %375
  store i32* %369, i32** %376, align 8
  %377 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %378 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 5
  %380 = load i32**, i32*** %379, align 8
  %381 = load i32, i32* %8, align 4
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds i32*, i32** %380, i64 %382
  %384 = load i32*, i32** %383, align 8
  %385 = icmp eq i32* %384, null
  br i1 %385, label %386, label %389

386:                                              ; preds = %366
  %387 = call i32 (...) @BREAK_TO_DEBUGGER()
  %388 = call i32 @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %479

389:                                              ; preds = %366
  %390 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %391 = load i32, i32* %8, align 4
  %392 = call i32* @dce80_i2c_hw_create(%struct.dc_context* %390, i32 %391)
  %393 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %394 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 4
  %396 = load i32**, i32*** %395, align 8
  %397 = load i32, i32* %8, align 4
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds i32*, i32** %396, i64 %398
  store i32* %392, i32** %399, align 8
  %400 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %401 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i32 0, i32 4
  %403 = load i32**, i32*** %402, align 8
  %404 = load i32, i32* %8, align 4
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds i32*, i32** %403, i64 %405
  %407 = load i32*, i32** %406, align 8
  %408 = icmp eq i32* %407, null
  br i1 %408, label %409, label %412

409:                                              ; preds = %389
  %410 = call i32 (...) @BREAK_TO_DEBUGGER()
  %411 = call i32 @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %479

412:                                              ; preds = %389
  %413 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %414 = call i32* @dce80_i2c_sw_create(%struct.dc_context* %413)
  %415 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %416 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 3
  %418 = load i32**, i32*** %417, align 8
  %419 = load i32, i32* %8, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds i32*, i32** %418, i64 %420
  store i32* %414, i32** %421, align 8
  %422 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %423 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 3
  %425 = load i32**, i32*** %424, align 8
  %426 = load i32, i32* %8, align 4
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds i32*, i32** %425, i64 %427
  %429 = load i32*, i32** %428, align 8
  %430 = icmp eq i32* %429, null
  br i1 %430, label %431, label %434

431:                                              ; preds = %412
  %432 = call i32 (...) @BREAK_TO_DEBUGGER()
  %433 = call i32 @dm_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %479

434:                                              ; preds = %412
  br label %435

435:                                              ; preds = %434
  %436 = load i32, i32* %8, align 4
  %437 = add i32 %436, 1
  store i32 %437, i32* %8, align 4
  br label %357

438:                                              ; preds = %357
  %439 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %440 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.dc*, %struct.dc** %6, align 8
  %444 = getelementptr inbounds %struct.dc, %struct.dc* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %444, i32 0, i32 4
  store i32 %442, i32* %445, align 8
  store i32 0, i32* %8, align 4
  br label %446

446:                                              ; preds = %462, %438
  %447 = load i32, i32* %8, align 4
  %448 = load %struct.dc*, %struct.dc** %6, align 8
  %449 = getelementptr inbounds %struct.dc, %struct.dc* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 8
  %452 = icmp ult i32 %447, %451
  br i1 %452, label %453, label %465

453:                                              ; preds = %446
  %454 = load i32, i32* @plane_cap, align 4
  %455 = load %struct.dc*, %struct.dc** %6, align 8
  %456 = getelementptr inbounds %struct.dc, %struct.dc* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 6
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %8, align 4
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  store i32 %454, i32* %461, align 4
  br label %462

462:                                              ; preds = %453
  %463 = load i32, i32* %8, align 4
  %464 = add i32 %463, 1
  store i32 %464, i32* %8, align 4
  br label %446

465:                                              ; preds = %446
  %466 = load %struct.dc*, %struct.dc** %6, align 8
  %467 = getelementptr inbounds %struct.dc, %struct.dc* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %467, i32 0, i32 5
  store i32 1, i32* %468, align 4
  %469 = load i32, i32* %5, align 4
  %470 = load %struct.dc*, %struct.dc** %6, align 8
  %471 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %472 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %471, i32 0, i32 0
  %473 = call i32 @resource_construct(i32 %469, %struct.dc* %470, %struct.TYPE_7__* %472, i32* @res_create_funcs)
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %476, label %475

475:                                              ; preds = %465
  br label %479

476:                                              ; preds = %465
  %477 = load %struct.dc*, %struct.dc** %6, align 8
  %478 = call i32 @dce80_hw_sequencer_construct(%struct.dc* %477)
  store i32 1, i32* %4, align 4
  br label %482

479:                                              ; preds = %475, %431, %409, %386, %349, %326, %303, %280, %257, %224, %207, %193, %175, %154
  %480 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %481 = call i32 @destruct(%struct.dce110_resource_pool* %480)
  store i32 0, i32* %4, align 4
  br label %482

482:                                              ; preds = %479, %476
  %483 = load i32, i32* %4, align 4
  ret i32 %483
}

declare dso_local i8* @dce80_clock_source_create(%struct.dc_context*, %struct.dc_bios*, i32, i32*, i32) #1

declare dso_local i32 @dm_error(i8*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32* @dce_dmcu_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32* @dce_abm_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32 @dal_irq_service_dce80_create(%struct.irq_service_init_data*) #1

declare dso_local i32* @dce80_timing_generator_create(%struct.dc_context*, i32, i32*) #1

declare dso_local i32* @dce80_mem_input_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce80_ipp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce80_transform_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce80_opp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce80_aux_engine_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce80_i2c_hw_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce80_i2c_sw_create(%struct.dc_context*) #1

declare dso_local i32 @resource_construct(i32, %struct.dc*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @dce80_hw_sequencer_construct(%struct.dc*) #1

declare dso_local i32 @destruct(%struct.dce110_resource_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
