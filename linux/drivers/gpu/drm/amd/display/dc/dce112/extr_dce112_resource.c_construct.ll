; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.dc_context*, i32, i32, %struct.TYPE_5__ }
%struct.dc_context = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32* }
%struct.dce110_resource_pool = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32**, i32**, i32**, %struct.TYPE_7__*, i32**, i32**, i32**, i32**, i32**, i32, i32*, i32*, i32**, i8*, i32, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.irq_service_init_data = type { %struct.dc_context* }

@bios_regs = common dso_local global i32 0, align 4
@dce112_res_pool_funcs = common dso_local global i32 0, align 4
@NO_UNDERLAY_PIPE = common dso_local global i32 0, align 4
@CLOCK_SOURCE_COMBO_PHY_PLL0 = common dso_local global i32 0, align 4
@clk_src_regs = common dso_local global i32* null, align 8
@DCE112_CLK_SRC_PLL0 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL1 = common dso_local global i32 0, align 4
@DCE112_CLK_SRC_PLL1 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL2 = common dso_local global i32 0, align 4
@DCE112_CLK_SRC_PLL2 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL3 = common dso_local global i32 0, align 4
@DCE112_CLK_SRC_PLL3 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL4 = common dso_local global i32 0, align 4
@DCE112_CLK_SRC_PLL4 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL5 = common dso_local global i32 0, align 4
@DCE112_CLK_SRC_PLL5 = common dso_local global i64 0, align 8
@DCE112_CLK_SRC_TOTAL = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_DP_DTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"DC: failed to create clock sources!\0A\00", align 1
@dmcu_regs = common dso_local global i32 0, align 4
@dmcu_shift = common dso_local global i32 0, align 4
@dmcu_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DC: failed to create dmcu!\0A\00", align 1
@abm_regs = common dso_local global i32 0, align 4
@abm_shift = common dso_local global i32 0, align 4
@abm_mask = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"DC: failed to create abm!\0A\00", align 1
@dce112_tg_offsets = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"DC: failed to create tg!\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"DC: failed to create memory input!\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"DC:failed to create input pixel processor!\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"DC: failed to create transform!\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"DC:failed to create output pixel processor!\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"DC:failed to create aux engine!!\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"DC:failed to create i2c engine!!\0A\00", align 1
@res_create_funcs = common dso_local global i32 0, align 4
@plane_cap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dc*, %struct.dce110_resource_pool*)* @construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct(i32 %0, %struct.dc* %1, %struct.dce110_resource_pool* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dce110_resource_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_context*, align 8
  %10 = alloca %struct.irq_service_init_data, align 8
  store i32 %0, i32* %5, align 4
  store %struct.dc* %1, %struct.dc** %6, align 8
  store %struct.dce110_resource_pool* %2, %struct.dce110_resource_pool** %7, align 8
  %11 = load %struct.dc*, %struct.dc** %6, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 0
  %13 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  store %struct.dc_context* %13, %struct.dc_context** %9, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %15 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32* @bios_regs, i32** %17, align 8
  %18 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %19 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %18, i32 0, i32 0
  %20 = call %struct.TYPE_7__* @dce112_resource_cap(i32* %19)
  %21 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %22 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 6
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %23, align 8
  %24 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %25 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 18
  store i32* @dce112_res_pool_funcs, i32** %26, align 8
  %27 = load i32, i32* @NO_UNDERLAY_PIPE, align 4
  %28 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %29 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 17
  store i32 %27, i32* %30, align 8
  %31 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %32 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %38 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %41 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %47 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.dc*, %struct.dc** %6, align 8
  %50 = getelementptr inbounds %struct.dc, %struct.dc* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 200, i32* %51, align 8
  %52 = load %struct.dc*, %struct.dc** %6, align 8
  %53 = getelementptr inbounds %struct.dc, %struct.dc* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 100, i32* %54, align 4
  %55 = load %struct.dc*, %struct.dc** %6, align 8
  %56 = getelementptr inbounds %struct.dc, %struct.dc* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 128, i32* %57, align 8
  %58 = load %struct.dc*, %struct.dc** %6, align 8
  %59 = getelementptr inbounds %struct.dc, %struct.dc* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %62 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %63 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL0, align 4
  %66 = load i32*, i32** @clk_src_regs, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = call i8* @dce112_clock_source_create(%struct.dc_context* %61, %struct.TYPE_8__* %64, i32 %65, i32* %67, i32 0)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %71 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 15
  %73 = load i32**, i32*** %72, align 8
  %74 = load i64, i64* @DCE112_CLK_SRC_PLL0, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  store i32* %69, i32** %75, align 8
  %76 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %77 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %78 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL1, align 4
  %81 = load i32*, i32** @clk_src_regs, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = call i8* @dce112_clock_source_create(%struct.dc_context* %76, %struct.TYPE_8__* %79, i32 %80, i32* %82, i32 0)
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %86 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 15
  %88 = load i32**, i32*** %87, align 8
  %89 = load i64, i64* @DCE112_CLK_SRC_PLL1, align 8
  %90 = getelementptr inbounds i32*, i32** %88, i64 %89
  store i32* %84, i32** %90, align 8
  %91 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %92 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %93 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL2, align 4
  %96 = load i32*, i32** @clk_src_regs, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = call i8* @dce112_clock_source_create(%struct.dc_context* %91, %struct.TYPE_8__* %94, i32 %95, i32* %97, i32 0)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %101 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 15
  %103 = load i32**, i32*** %102, align 8
  %104 = load i64, i64* @DCE112_CLK_SRC_PLL2, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  store i32* %99, i32** %105, align 8
  %106 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %107 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %108 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL3, align 4
  %111 = load i32*, i32** @clk_src_regs, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = call i8* @dce112_clock_source_create(%struct.dc_context* %106, %struct.TYPE_8__* %109, i32 %110, i32* %112, i32 0)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %116 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 15
  %118 = load i32**, i32*** %117, align 8
  %119 = load i64, i64* @DCE112_CLK_SRC_PLL3, align 8
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  store i32* %114, i32** %120, align 8
  %121 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %122 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %123 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL4, align 4
  %126 = load i32*, i32** @clk_src_regs, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 4
  %128 = call i8* @dce112_clock_source_create(%struct.dc_context* %121, %struct.TYPE_8__* %124, i32 %125, i32* %127, i32 0)
  %129 = bitcast i8* %128 to i32*
  %130 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %131 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 15
  %133 = load i32**, i32*** %132, align 8
  %134 = load i64, i64* @DCE112_CLK_SRC_PLL4, align 8
  %135 = getelementptr inbounds i32*, i32** %133, i64 %134
  store i32* %129, i32** %135, align 8
  %136 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %137 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %138 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %137, i32 0, i32 1
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL5, align 4
  %141 = load i32*, i32** @clk_src_regs, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 5
  %143 = call i8* @dce112_clock_source_create(%struct.dc_context* %136, %struct.TYPE_8__* %139, i32 %140, i32* %142, i32 0)
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %146 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 15
  %148 = load i32**, i32*** %147, align 8
  %149 = load i64, i64* @DCE112_CLK_SRC_PLL5, align 8
  %150 = getelementptr inbounds i32*, i32** %148, i64 %149
  store i32* %144, i32** %150, align 8
  %151 = load i32, i32* @DCE112_CLK_SRC_TOTAL, align 4
  %152 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %153 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  %155 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %156 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %157 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %156, i32 0, i32 1
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i32, i32* @CLOCK_SOURCE_ID_DP_DTO, align 4
  %160 = load i32*, i32** @clk_src_regs, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = call i8* @dce112_clock_source_create(%struct.dc_context* %155, %struct.TYPE_8__* %158, i32 %159, i32* %161, i32 1)
  %163 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %164 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 16
  store i8* %162, i8** %165, align 8
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %187, %3
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %169 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ult i32 %167, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %166
  %174 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %175 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 15
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %173
  %184 = call i32 @dm_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %185 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %483

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %8, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %166

190:                                              ; preds = %166
  %191 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %192 = call i32* @dce_dmcu_create(%struct.dc_context* %191, i32* @dmcu_regs, i32* @dmcu_shift, i32* @dmcu_mask)
  %193 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %194 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 14
  store i32* %192, i32** %195, align 8
  %196 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %197 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 14
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %190
  %202 = call i32 @dm_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %203 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %483

204:                                              ; preds = %190
  %205 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %206 = call i32* @dce_abm_create(%struct.dc_context* %205, i32* @abm_regs, i32* @abm_shift, i32* @abm_mask)
  %207 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %208 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 13
  store i32* %206, i32** %209, align 8
  %210 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %211 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 13
  %213 = load i32*, i32** %212, align 8
  %214 = icmp eq i32* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %204
  %216 = call i32 @dm_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %217 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %483

218:                                              ; preds = %204
  %219 = load %struct.dc*, %struct.dc** %6, align 8
  %220 = getelementptr inbounds %struct.dc, %struct.dc* %219, i32 0, i32 0
  %221 = load %struct.dc_context*, %struct.dc_context** %220, align 8
  %222 = getelementptr inbounds %struct.irq_service_init_data, %struct.irq_service_init_data* %10, i32 0, i32 0
  store %struct.dc_context* %221, %struct.dc_context** %222, align 8
  %223 = call i32 @dal_irq_service_dce110_create(%struct.irq_service_init_data* %10)
  %224 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %225 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 12
  store i32 %223, i32* %226, align 8
  %227 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %228 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 12
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %218
  br label %483

233:                                              ; preds = %218
  store i32 0, i32* %8, align 4
  br label %234

234:                                              ; preds = %361, %233
  %235 = load i32, i32* %8, align 4
  %236 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %237 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ult i32 %235, %239
  br i1 %240, label %241, label %364

241:                                              ; preds = %234
  %242 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load i32*, i32** @dce112_tg_offsets, align 8
  %245 = load i32, i32* %8, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = call i32* @dce112_timing_generator_create(%struct.dc_context* %242, i32 %243, i32* %247)
  %249 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %250 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 11
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  store i32* %248, i32** %255, align 8
  %256 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %257 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 11
  %259 = load i32**, i32*** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %259, i64 %261
  %263 = load i32*, i32** %262, align 8
  %264 = icmp eq i32* %263, null
  br i1 %264, label %265, label %268

265:                                              ; preds = %241
  %266 = call i32 (...) @BREAK_TO_DEBUGGER()
  %267 = call i32 @dm_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %483

268:                                              ; preds = %241
  %269 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %270 = load i32, i32* %8, align 4
  %271 = call i32* @dce112_mem_input_create(%struct.dc_context* %269, i32 %270)
  %272 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %273 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 10
  %275 = load i32**, i32*** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i32*, i32** %275, i64 %277
  store i32* %271, i32** %278, align 8
  %279 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %280 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 10
  %282 = load i32**, i32*** %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  %286 = load i32*, i32** %285, align 8
  %287 = icmp eq i32* %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %268
  %289 = call i32 (...) @BREAK_TO_DEBUGGER()
  %290 = call i32 @dm_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %483

291:                                              ; preds = %268
  %292 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %293 = load i32, i32* %8, align 4
  %294 = call i32* @dce112_ipp_create(%struct.dc_context* %292, i32 %293)
  %295 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %296 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 9
  %298 = load i32**, i32*** %297, align 8
  %299 = load i32, i32* %8, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i32*, i32** %298, i64 %300
  store i32* %294, i32** %301, align 8
  %302 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %303 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 9
  %305 = load i32**, i32*** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %305, i64 %307
  %309 = load i32*, i32** %308, align 8
  %310 = icmp eq i32* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %291
  %312 = call i32 (...) @BREAK_TO_DEBUGGER()
  %313 = call i32 @dm_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %483

314:                                              ; preds = %291
  %315 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %316 = load i32, i32* %8, align 4
  %317 = call i32* @dce112_transform_create(%struct.dc_context* %315, i32 %316)
  %318 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %319 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 8
  %321 = load i32**, i32*** %320, align 8
  %322 = load i32, i32* %8, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds i32*, i32** %321, i64 %323
  store i32* %317, i32** %324, align 8
  %325 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %326 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 8
  %328 = load i32**, i32*** %327, align 8
  %329 = load i32, i32* %8, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i32*, i32** %328, i64 %330
  %332 = load i32*, i32** %331, align 8
  %333 = icmp eq i32* %332, null
  br i1 %333, label %334, label %337

334:                                              ; preds = %314
  %335 = call i32 (...) @BREAK_TO_DEBUGGER()
  %336 = call i32 @dm_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %483

337:                                              ; preds = %314
  %338 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %339 = load i32, i32* %8, align 4
  %340 = call i32* @dce112_opp_create(%struct.dc_context* %338, i32 %339)
  %341 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %342 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 7
  %344 = load i32**, i32*** %343, align 8
  %345 = load i32, i32* %8, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i32*, i32** %344, i64 %346
  store i32* %340, i32** %347, align 8
  %348 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %349 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 7
  %351 = load i32**, i32*** %350, align 8
  %352 = load i32, i32* %8, align 4
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds i32*, i32** %351, i64 %353
  %355 = load i32*, i32** %354, align 8
  %356 = icmp eq i32* %355, null
  br i1 %356, label %357, label %360

357:                                              ; preds = %337
  %358 = call i32 (...) @BREAK_TO_DEBUGGER()
  %359 = call i32 @dm_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %483

360:                                              ; preds = %337
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* %8, align 4
  %363 = add i32 %362, 1
  store i32 %363, i32* %8, align 4
  br label %234

364:                                              ; preds = %234
  store i32 0, i32* %8, align 4
  br label %365

365:                                              ; preds = %428, %364
  %366 = load i32, i32* %8, align 4
  %367 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %368 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 6
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp ult i32 %366, %372
  br i1 %373, label %374, label %431

374:                                              ; preds = %365
  %375 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %376 = load i32, i32* %8, align 4
  %377 = call i32* @dce112_aux_engine_create(%struct.dc_context* %375, i32 %376)
  %378 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %379 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 5
  %381 = load i32**, i32*** %380, align 8
  %382 = load i32, i32* %8, align 4
  %383 = zext i32 %382 to i64
  %384 = getelementptr inbounds i32*, i32** %381, i64 %383
  store i32* %377, i32** %384, align 8
  %385 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %386 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 5
  %388 = load i32**, i32*** %387, align 8
  %389 = load i32, i32* %8, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds i32*, i32** %388, i64 %390
  %392 = load i32*, i32** %391, align 8
  %393 = icmp eq i32* %392, null
  br i1 %393, label %394, label %397

394:                                              ; preds = %374
  %395 = call i32 (...) @BREAK_TO_DEBUGGER()
  %396 = call i32 @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %483

397:                                              ; preds = %374
  %398 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %399 = load i32, i32* %8, align 4
  %400 = call i32* @dce112_i2c_hw_create(%struct.dc_context* %398, i32 %399)
  %401 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %402 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 4
  %404 = load i32**, i32*** %403, align 8
  %405 = load i32, i32* %8, align 4
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds i32*, i32** %404, i64 %406
  store i32* %400, i32** %407, align 8
  %408 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %409 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 4
  %411 = load i32**, i32*** %410, align 8
  %412 = load i32, i32* %8, align 4
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds i32*, i32** %411, i64 %413
  %415 = load i32*, i32** %414, align 8
  %416 = icmp eq i32* %415, null
  br i1 %416, label %417, label %420

417:                                              ; preds = %397
  %418 = call i32 (...) @BREAK_TO_DEBUGGER()
  %419 = call i32 @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %483

420:                                              ; preds = %397
  %421 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %422 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i32 0, i32 3
  %424 = load i32**, i32*** %423, align 8
  %425 = load i32, i32* %8, align 4
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds i32*, i32** %424, i64 %426
  store i32* null, i32** %427, align 8
  br label %428

428:                                              ; preds = %420
  %429 = load i32, i32* %8, align 4
  %430 = add i32 %429, 1
  store i32 %430, i32* %8, align 4
  br label %365

431:                                              ; preds = %365
  %432 = load i32, i32* %5, align 4
  %433 = load %struct.dc*, %struct.dc** %6, align 8
  %434 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %435 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %434, i32 0, i32 0
  %436 = call i32 @resource_construct(i32 %432, %struct.dc* %433, %struct.TYPE_6__* %435, i32* @res_create_funcs)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %439, label %438

438:                                              ; preds = %431
  br label %483

439:                                              ; preds = %431
  %440 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %441 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.dc*, %struct.dc** %6, align 8
  %445 = getelementptr inbounds %struct.dc, %struct.dc* %444, i32 0, i32 3
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 4
  store i32 %443, i32* %446, align 8
  store i32 0, i32* %8, align 4
  br label %447

447:                                              ; preds = %463, %439
  %448 = load i32, i32* %8, align 4
  %449 = load %struct.dc*, %struct.dc** %6, align 8
  %450 = getelementptr inbounds %struct.dc, %struct.dc* %449, i32 0, i32 3
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 8
  %453 = icmp ult i32 %448, %452
  br i1 %453, label %454, label %466

454:                                              ; preds = %447
  %455 = load i32, i32* @plane_cap, align 4
  %456 = load %struct.dc*, %struct.dc** %6, align 8
  %457 = getelementptr inbounds %struct.dc, %struct.dc* %456, i32 0, i32 3
  %458 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %457, i32 0, i32 5
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %8, align 4
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  store i32 %455, i32* %462, align 4
  br label %463

463:                                              ; preds = %454
  %464 = load i32, i32* %8, align 4
  %465 = add i32 %464, 1
  store i32 %465, i32* %8, align 4
  br label %447

466:                                              ; preds = %447
  %467 = load %struct.dc*, %struct.dc** %6, align 8
  %468 = call i32 @dce112_hw_sequencer_construct(%struct.dc* %467)
  %469 = load %struct.dc*, %struct.dc** %6, align 8
  %470 = getelementptr inbounds %struct.dc, %struct.dc* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.dc*, %struct.dc** %6, align 8
  %473 = getelementptr inbounds %struct.dc, %struct.dc* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.dc*, %struct.dc** %6, align 8
  %476 = getelementptr inbounds %struct.dc, %struct.dc* %475, i32 0, i32 0
  %477 = load %struct.dc_context*, %struct.dc_context** %476, align 8
  %478 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = call i32 @bw_calcs_init(i32 %471, i32 %474, i32 %479)
  %481 = load %struct.dc*, %struct.dc** %6, align 8
  %482 = call i32 @bw_calcs_data_update_from_pplib(%struct.dc* %481)
  store i32 1, i32* %4, align 4
  br label %486

483:                                              ; preds = %438, %417, %394, %357, %334, %311, %288, %265, %232, %215, %201, %183
  %484 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %485 = call i32 @destruct(%struct.dce110_resource_pool* %484)
  store i32 0, i32* %4, align 4
  br label %486

486:                                              ; preds = %483, %466
  %487 = load i32, i32* %4, align 4
  ret i32 %487
}

declare dso_local %struct.TYPE_7__* @dce112_resource_cap(i32*) #1

declare dso_local i8* @dce112_clock_source_create(%struct.dc_context*, %struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i32 @dm_error(i8*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32* @dce_dmcu_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32* @dce_abm_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32 @dal_irq_service_dce110_create(%struct.irq_service_init_data*) #1

declare dso_local i32* @dce112_timing_generator_create(%struct.dc_context*, i32, i32*) #1

declare dso_local i32* @dce112_mem_input_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce112_ipp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce112_transform_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce112_opp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce112_aux_engine_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce112_i2c_hw_create(%struct.dc_context*, i32) #1

declare dso_local i32 @resource_construct(i32, %struct.dc*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @dce112_hw_sequencer_construct(%struct.dc*) #1

declare dso_local i32 @bw_calcs_init(i32, i32, i32) #1

declare dso_local i32 @bw_calcs_data_update_from_pplib(%struct.dc*) #1

declare dso_local i32 @destruct(%struct.dce110_resource_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
