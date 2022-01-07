; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_resource.c_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce120/extr_dce120_resource.c_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_create_funcs = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.dc = type { %struct.dc_context*, i32, i32, %struct.TYPE_6__, i32 }
%struct.dc_context = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.dce110_resource_pool = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32**, i32**, i32**, %struct.TYPE_8__*, i32**, i32**, i32**, i32**, i32**, i32, i32*, i32*, i32**, i8*, i32, i32* }
%struct.irq_service_init_data = type { %struct.dc_context* }

@construct.res_funcs = internal global %struct.resource_create_funcs* null, align 8
@bios_regs = common dso_local global i32 0, align 4
@res_cap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@dce120_res_pool_funcs = common dso_local global i32 0, align 4
@NO_UNDERLAY_PIPE = common dso_local global i32 0, align 4
@debug_defaults = common dso_local global i32 0, align 4
@CLOCK_SOURCE_COMBO_PHY_PLL0 = common dso_local global i32 0, align 4
@clk_src_regs = common dso_local global i32* null, align 8
@DCE120_CLK_SRC_PLL0 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL1 = common dso_local global i32 0, align 4
@DCE120_CLK_SRC_PLL1 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL2 = common dso_local global i32 0, align 4
@DCE120_CLK_SRC_PLL2 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL3 = common dso_local global i32 0, align 4
@DCE120_CLK_SRC_PLL3 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL4 = common dso_local global i32 0, align 4
@DCE120_CLK_SRC_PLL4 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL5 = common dso_local global i32 0, align 4
@DCE120_CLK_SRC_PLL5 = common dso_local global i64 0, align 8
@DCE120_CLK_SRC_TOTAL = common dso_local global i32 0, align 4
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
@.str.3 = private unnamed_addr constant [27 x i8] c"DC: skip invalid pipe %d!\0A\00", align 1
@dce120_tg_offsets = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"DC: failed to create tg!\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"DC: failed to create memory input!\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"DC: failed to create input pixel processor!\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"DC: failed to create transform!\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"DC: failed to create output pixel processor!\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"DC:failed to create aux engine!!\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"DC:failed to create i2c engine!!\0A\00", align 1
@dce121_res_create_funcs = common dso_local global %struct.resource_create_funcs zeroinitializer, align 4
@res_create_funcs = common dso_local global %struct.resource_create_funcs zeroinitializer, align 4
@plane_cap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dc*, %struct.dce110_resource_pool*)* @construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct(i32 %0, %struct.dc* %1, %struct.dce110_resource_pool* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dce110_resource_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_context*, align 8
  %11 = alloca %struct.irq_service_init_data, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.dc* %1, %struct.dc** %6, align 8
  store %struct.dce110_resource_pool* %2, %struct.dce110_resource_pool** %7, align 8
  %14 = load %struct.dc*, %struct.dc** %6, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 0
  %16 = load %struct.dc_context*, %struct.dc_context** %15, align 8
  store %struct.dc_context* %16, %struct.dc_context** %10, align 8
  %17 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %18 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ASICREV_IS_VEGA20_P(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %23 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32* @bios_regs, i32** %25, align 8
  %26 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %27 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 6
  store %struct.TYPE_8__* @res_cap, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %30 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 18
  store i32* @dce120_res_pool_funcs, i32** %31, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @res_cap, i32 0, i32 0), align 4
  %33 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %34 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %37 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %43 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @NO_UNDERLAY_PIPE, align 4
  %46 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %47 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 17
  store i32 %45, i32* %48, align 8
  %49 = load %struct.dc*, %struct.dc** %6, align 8
  %50 = getelementptr inbounds %struct.dc, %struct.dc* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 200, i32* %51, align 8
  %52 = load %struct.dc*, %struct.dc** %6, align 8
  %53 = getelementptr inbounds %struct.dc, %struct.dc* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 100, i32* %54, align 4
  %55 = load %struct.dc*, %struct.dc** %6, align 8
  %56 = getelementptr inbounds %struct.dc, %struct.dc* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 128, i32* %57, align 8
  %58 = load %struct.dc*, %struct.dc** %6, align 8
  %59 = getelementptr inbounds %struct.dc, %struct.dc* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load %struct.dc*, %struct.dc** %6, align 8
  %62 = getelementptr inbounds %struct.dc, %struct.dc* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* @debug_defaults, align 4
  %65 = load %struct.dc*, %struct.dc** %6, align 8
  %66 = getelementptr inbounds %struct.dc, %struct.dc* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %68 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %69 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL0, align 4
  %72 = load i32*, i32** @clk_src_regs, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = call i8* @dce120_clock_source_create(%struct.dc_context* %67, %struct.TYPE_9__* %70, i32 %71, i32* %73, i32 0)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %77 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 15
  %79 = load i32**, i32*** %78, align 8
  %80 = load i64, i64* @DCE120_CLK_SRC_PLL0, align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  store i32* %75, i32** %81, align 8
  %82 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %83 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %84 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL1, align 4
  %87 = load i32*, i32** @clk_src_regs, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = call i8* @dce120_clock_source_create(%struct.dc_context* %82, %struct.TYPE_9__* %85, i32 %86, i32* %88, i32 0)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %92 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 15
  %94 = load i32**, i32*** %93, align 8
  %95 = load i64, i64* @DCE120_CLK_SRC_PLL1, align 8
  %96 = getelementptr inbounds i32*, i32** %94, i64 %95
  store i32* %90, i32** %96, align 8
  %97 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %98 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %99 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL2, align 4
  %102 = load i32*, i32** @clk_src_regs, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = call i8* @dce120_clock_source_create(%struct.dc_context* %97, %struct.TYPE_9__* %100, i32 %101, i32* %103, i32 0)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %107 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 15
  %109 = load i32**, i32*** %108, align 8
  %110 = load i64, i64* @DCE120_CLK_SRC_PLL2, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  store i32* %105, i32** %111, align 8
  %112 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %113 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %114 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL3, align 4
  %117 = load i32*, i32** @clk_src_regs, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = call i8* @dce120_clock_source_create(%struct.dc_context* %112, %struct.TYPE_9__* %115, i32 %116, i32* %118, i32 0)
  %120 = bitcast i8* %119 to i32*
  %121 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %122 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 15
  %124 = load i32**, i32*** %123, align 8
  %125 = load i64, i64* @DCE120_CLK_SRC_PLL3, align 8
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  store i32* %120, i32** %126, align 8
  %127 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %128 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %129 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %128, i32 0, i32 1
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL4, align 4
  %132 = load i32*, i32** @clk_src_regs, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = call i8* @dce120_clock_source_create(%struct.dc_context* %127, %struct.TYPE_9__* %130, i32 %131, i32* %133, i32 0)
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %137 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 15
  %139 = load i32**, i32*** %138, align 8
  %140 = load i64, i64* @DCE120_CLK_SRC_PLL4, align 8
  %141 = getelementptr inbounds i32*, i32** %139, i64 %140
  store i32* %135, i32** %141, align 8
  %142 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %143 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %144 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %143, i32 0, i32 1
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL5, align 4
  %147 = load i32*, i32** @clk_src_regs, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 5
  %149 = call i8* @dce120_clock_source_create(%struct.dc_context* %142, %struct.TYPE_9__* %145, i32 %146, i32* %148, i32 0)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %152 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 15
  %154 = load i32**, i32*** %153, align 8
  %155 = load i64, i64* @DCE120_CLK_SRC_PLL5, align 8
  %156 = getelementptr inbounds i32*, i32** %154, i64 %155
  store i32* %150, i32** %156, align 8
  %157 = load i32, i32* @DCE120_CLK_SRC_TOTAL, align 4
  %158 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %159 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  %161 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %162 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %163 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %162, i32 0, i32 1
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = load i32, i32* @CLOCK_SOURCE_ID_DP_DTO, align 4
  %166 = load i32*, i32** @clk_src_regs, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = call i8* @dce120_clock_source_create(%struct.dc_context* %161, %struct.TYPE_9__* %164, i32 %165, i32* %167, i32 1)
  %169 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %170 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 16
  store i8* %168, i8** %171, align 8
  store i32 0, i32* %8, align 4
  br label %172

172:                                              ; preds = %193, %3
  %173 = load i32, i32* %8, align 4
  %174 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %175 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp ult i32 %173, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %172
  %180 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %181 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 15
  %183 = load i32**, i32*** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %179
  %190 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %191 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %530

192:                                              ; preds = %179
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %8, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %172

196:                                              ; preds = %172
  %197 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %198 = call i32* @dce_dmcu_create(%struct.dc_context* %197, i32* @dmcu_regs, i32* @dmcu_shift, i32* @dmcu_mask)
  %199 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %200 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 14
  store i32* %198, i32** %201, align 8
  %202 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %203 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 14
  %205 = load i32*, i32** %204, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %196
  %208 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %209 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %531

210:                                              ; preds = %196
  %211 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %212 = call i32* @dce_abm_create(%struct.dc_context* %211, i32* @abm_regs, i32* @abm_shift, i32* @abm_mask)
  %213 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %214 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 13
  store i32* %212, i32** %215, align 8
  %216 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %217 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 13
  %219 = load i32*, i32** %218, align 8
  %220 = icmp eq i32* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %210
  %222 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %223 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %531

224:                                              ; preds = %210
  %225 = load %struct.dc*, %struct.dc** %6, align 8
  %226 = getelementptr inbounds %struct.dc, %struct.dc* %225, i32 0, i32 0
  %227 = load %struct.dc_context*, %struct.dc_context** %226, align 8
  %228 = getelementptr inbounds %struct.irq_service_init_data, %struct.irq_service_init_data* %11, i32 0, i32 0
  store %struct.dc_context* %227, %struct.dc_context** %228, align 8
  %229 = call i32 @dal_irq_service_dce120_create(%struct.irq_service_init_data* %11)
  %230 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %231 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 12
  store i32 %229, i32* %232, align 8
  %233 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %234 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 12
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %224
  br label %528

239:                                              ; preds = %224
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %244 = call i32 @read_pipe_fuses(%struct.dc_context* %243)
  store i32 %244, i32* %13, align 4
  br label %245

245:                                              ; preds = %242, %239
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %246

246:                                              ; preds = %388, %245
  %247 = load i32, i32* %8, align 4
  %248 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %249 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp ult i32 %247, %251
  br i1 %252, label %253, label %391

253:                                              ; preds = %246
  %254 = load i32, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %266

256:                                              ; preds = %253
  %257 = load i32, i32* %13, align 4
  %258 = load i32, i32* %8, align 4
  %259 = shl i32 1, %258
  %260 = and i32 %257, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %256
  %263 = load i32, i32* %8, align 4
  %264 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %263)
  br label %388

265:                                              ; preds = %256
  br label %266

266:                                              ; preds = %265, %253
  %267 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %268 = load i32, i32* %8, align 4
  %269 = load i32*, i32** @dce120_tg_offsets, align 8
  %270 = load i32, i32* %8, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = call i32* @dce120_timing_generator_create(%struct.dc_context* %267, i32 %268, i32* %272)
  %274 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %275 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 11
  %277 = load i32**, i32*** %276, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32*, i32** %277, i64 %279
  store i32* %273, i32** %280, align 8
  %281 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %282 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 11
  %284 = load i32**, i32*** %283, align 8
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32*, i32** %284, i64 %286
  %288 = load i32*, i32** %287, align 8
  %289 = icmp eq i32* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %266
  %291 = call i32 (...) @BREAK_TO_DEBUGGER()
  %292 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %529

293:                                              ; preds = %266
  %294 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %295 = load i32, i32* %8, align 4
  %296 = call i32* @dce120_mem_input_create(%struct.dc_context* %294, i32 %295)
  %297 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %298 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 10
  %300 = load i32**, i32*** %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32*, i32** %300, i64 %302
  store i32* %296, i32** %303, align 8
  %304 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %305 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 10
  %307 = load i32**, i32*** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32*, i32** %307, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = icmp eq i32* %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %293
  %314 = call i32 (...) @BREAK_TO_DEBUGGER()
  %315 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %529

316:                                              ; preds = %293
  %317 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %318 = load i32, i32* %8, align 4
  %319 = call i32* @dce120_ipp_create(%struct.dc_context* %317, i32 %318)
  %320 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %321 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 9
  %323 = load i32**, i32*** %322, align 8
  %324 = load i32, i32* %9, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32*, i32** %323, i64 %325
  store i32* %319, i32** %326, align 8
  %327 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %328 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 9
  %330 = load i32**, i32*** %329, align 8
  %331 = load i32, i32* %8, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i32*, i32** %330, i64 %332
  %334 = load i32*, i32** %333, align 8
  %335 = icmp eq i32* %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %316
  %337 = call i32 (...) @BREAK_TO_DEBUGGER()
  %338 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %529

339:                                              ; preds = %316
  %340 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %341 = load i32, i32* %8, align 4
  %342 = call i32* @dce120_transform_create(%struct.dc_context* %340, i32 %341)
  %343 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %344 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 8
  %346 = load i32**, i32*** %345, align 8
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32*, i32** %346, i64 %348
  store i32* %342, i32** %349, align 8
  %350 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %351 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 8
  %353 = load i32**, i32*** %352, align 8
  %354 = load i32, i32* %8, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds i32*, i32** %353, i64 %355
  %357 = load i32*, i32** %356, align 8
  %358 = icmp eq i32* %357, null
  br i1 %358, label %359, label %362

359:                                              ; preds = %339
  %360 = call i32 (...) @BREAK_TO_DEBUGGER()
  %361 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %531

362:                                              ; preds = %339
  %363 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %364 = load i32, i32* %8, align 4
  %365 = call i32* @dce120_opp_create(%struct.dc_context* %363, i32 %364)
  %366 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %367 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 7
  %369 = load i32**, i32*** %368, align 8
  %370 = load i32, i32* %9, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32*, i32** %369, i64 %371
  store i32* %365, i32** %372, align 8
  %373 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %374 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 7
  %376 = load i32**, i32*** %375, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32*, i32** %376, i64 %378
  %380 = load i32*, i32** %379, align 8
  %381 = icmp eq i32* %380, null
  br i1 %381, label %382, label %385

382:                                              ; preds = %362
  %383 = call i32 (...) @BREAK_TO_DEBUGGER()
  %384 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %385

385:                                              ; preds = %382, %362
  %386 = load i32, i32* %9, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %9, align 4
  br label %388

388:                                              ; preds = %385, %262
  %389 = load i32, i32* %8, align 4
  %390 = add i32 %389, 1
  store i32 %390, i32* %8, align 4
  br label %246

391:                                              ; preds = %246
  store i32 0, i32* %8, align 4
  br label %392

392:                                              ; preds = %455, %391
  %393 = load i32, i32* %8, align 4
  %394 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %395 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 6
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = icmp ult i32 %393, %399
  br i1 %400, label %401, label %458

401:                                              ; preds = %392
  %402 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %403 = load i32, i32* %8, align 4
  %404 = call i32* @dce120_aux_engine_create(%struct.dc_context* %402, i32 %403)
  %405 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %406 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 5
  %408 = load i32**, i32*** %407, align 8
  %409 = load i32, i32* %8, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds i32*, i32** %408, i64 %410
  store i32* %404, i32** %411, align 8
  %412 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %413 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 5
  %415 = load i32**, i32*** %414, align 8
  %416 = load i32, i32* %8, align 4
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds i32*, i32** %415, i64 %417
  %419 = load i32*, i32** %418, align 8
  %420 = icmp eq i32* %419, null
  br i1 %420, label %421, label %424

421:                                              ; preds = %401
  %422 = call i32 (...) @BREAK_TO_DEBUGGER()
  %423 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %531

424:                                              ; preds = %401
  %425 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %426 = load i32, i32* %8, align 4
  %427 = call i32* @dce120_i2c_hw_create(%struct.dc_context* %425, i32 %426)
  %428 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %429 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i32 0, i32 4
  %431 = load i32**, i32*** %430, align 8
  %432 = load i32, i32* %8, align 4
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds i32*, i32** %431, i64 %433
  store i32* %427, i32** %434, align 8
  %435 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %436 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 4
  %438 = load i32**, i32*** %437, align 8
  %439 = load i32, i32* %8, align 4
  %440 = zext i32 %439 to i64
  %441 = getelementptr inbounds i32*, i32** %438, i64 %440
  %442 = load i32*, i32** %441, align 8
  %443 = icmp eq i32* %442, null
  br i1 %443, label %444, label %447

444:                                              ; preds = %424
  %445 = call i32 (...) @BREAK_TO_DEBUGGER()
  %446 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %531

447:                                              ; preds = %424
  %448 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %449 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %449, i32 0, i32 3
  %451 = load i32**, i32*** %450, align 8
  %452 = load i32, i32* %8, align 4
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds i32*, i32** %451, i64 %453
  store i32* null, i32** %454, align 8
  br label %455

455:                                              ; preds = %447
  %456 = load i32, i32* %8, align 4
  %457 = add i32 %456, 1
  store i32 %457, i32* %8, align 4
  br label %392

458:                                              ; preds = %392
  %459 = load i32, i32* %9, align 4
  %460 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %461 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 0
  store i32 %459, i32* %462, align 8
  %463 = load i32, i32* %9, align 4
  %464 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %465 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 1
  store i32 %463, i32* %466, align 4
  %467 = load i32, i32* %12, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %458
  store %struct.resource_create_funcs* @dce121_res_create_funcs, %struct.resource_create_funcs** @construct.res_funcs, align 8
  br label %471

470:                                              ; preds = %458
  store %struct.resource_create_funcs* @res_create_funcs, %struct.resource_create_funcs** @construct.res_funcs, align 8
  br label %471

471:                                              ; preds = %470, %469
  %472 = load i32, i32* %5, align 4
  %473 = load %struct.dc*, %struct.dc** %6, align 8
  %474 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %475 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %474, i32 0, i32 0
  %476 = load %struct.resource_create_funcs*, %struct.resource_create_funcs** @construct.res_funcs, align 8
  %477 = call i32 @resource_construct(i32 %472, %struct.dc* %473, %struct.TYPE_7__* %475, %struct.resource_create_funcs* %476)
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %480, label %479

479:                                              ; preds = %471
  br label %531

480:                                              ; preds = %471
  %481 = load %struct.dc*, %struct.dc** %6, align 8
  %482 = call i32 @dce120_hw_sequencer_create(%struct.dc* %481)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %480
  br label %529

485:                                              ; preds = %480
  %486 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %487 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = load %struct.dc*, %struct.dc** %6, align 8
  %491 = getelementptr inbounds %struct.dc, %struct.dc* %490, i32 0, i32 3
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 5
  store i32 %489, i32* %492, align 4
  store i32 0, i32* %8, align 4
  br label %493

493:                                              ; preds = %509, %485
  %494 = load i32, i32* %8, align 4
  %495 = load %struct.dc*, %struct.dc** %6, align 8
  %496 = getelementptr inbounds %struct.dc, %struct.dc* %495, i32 0, i32 3
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %496, i32 0, i32 5
  %498 = load i32, i32* %497, align 4
  %499 = icmp ult i32 %494, %498
  br i1 %499, label %500, label %512

500:                                              ; preds = %493
  %501 = load i32, i32* @plane_cap, align 4
  %502 = load %struct.dc*, %struct.dc** %6, align 8
  %503 = getelementptr inbounds %struct.dc, %struct.dc* %502, i32 0, i32 3
  %504 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %503, i32 0, i32 6
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %8, align 4
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  store i32 %501, i32* %508, align 4
  br label %509

509:                                              ; preds = %500
  %510 = load i32, i32* %8, align 4
  %511 = add i32 %510, 1
  store i32 %511, i32* %8, align 4
  br label %493

512:                                              ; preds = %493
  %513 = load %struct.dc*, %struct.dc** %6, align 8
  %514 = getelementptr inbounds %struct.dc, %struct.dc* %513, i32 0, i32 2
  %515 = load i32, i32* %514, align 4
  %516 = load %struct.dc*, %struct.dc** %6, align 8
  %517 = getelementptr inbounds %struct.dc, %struct.dc* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.dc*, %struct.dc** %6, align 8
  %520 = getelementptr inbounds %struct.dc, %struct.dc* %519, i32 0, i32 0
  %521 = load %struct.dc_context*, %struct.dc_context** %520, align 8
  %522 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = call i32 @bw_calcs_init(i32 %515, i32 %518, i32 %524)
  %526 = load %struct.dc*, %struct.dc** %6, align 8
  %527 = call i32 @bw_calcs_data_update_from_pplib(%struct.dc* %526)
  store i32 1, i32* %4, align 4
  br label %534

528:                                              ; preds = %238
  br label %529

529:                                              ; preds = %528, %484, %336, %313, %290
  br label %530

530:                                              ; preds = %529, %189
  br label %531

531:                                              ; preds = %530, %479, %444, %421, %359, %221, %207
  %532 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %533 = call i32 @destruct(%struct.dce110_resource_pool* %532)
  store i32 0, i32* %4, align 4
  br label %534

534:                                              ; preds = %531, %512
  %535 = load i32, i32* %4, align 4
  ret i32 %535
}

declare dso_local i32 @ASICREV_IS_VEGA20_P(i32) #1

declare dso_local i8* @dce120_clock_source_create(%struct.dc_context*, %struct.TYPE_9__*, i32, i32*, i32) #1

declare dso_local i32 @dm_error(i8*, ...) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32* @dce_dmcu_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32* @dce_abm_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32 @dal_irq_service_dce120_create(%struct.irq_service_init_data*) #1

declare dso_local i32 @read_pipe_fuses(%struct.dc_context*) #1

declare dso_local i32* @dce120_timing_generator_create(%struct.dc_context*, i32, i32*) #1

declare dso_local i32* @dce120_mem_input_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce120_ipp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce120_transform_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce120_opp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce120_aux_engine_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dce120_i2c_hw_create(%struct.dc_context*, i32) #1

declare dso_local i32 @resource_construct(i32, %struct.dc*, %struct.TYPE_7__*, %struct.resource_create_funcs*) #1

declare dso_local i32 @dce120_hw_sequencer_create(%struct.dc*) #1

declare dso_local i32 @bw_calcs_init(i32, i32, i32) #1

declare dso_local i32 @bw_calcs_data_update_from_pplib(%struct.dc*) #1

declare dso_local i32 @destruct(%struct.dce110_resource_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
