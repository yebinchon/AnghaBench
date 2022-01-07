; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_resource.c_dce83_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce80/extr_dce80_resource.c_dce83_construct.c"
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
@res_cap_83 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@dce80_res_pool_funcs = common dso_local global i32 0, align 4
@NO_UNDERLAY_PIPE = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_EXTERNAL = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_PLL1 = common dso_local global i32 0, align 4
@clk_src_regs = common dso_local global i32* null, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dc*, %struct.dce110_resource_pool*)* @dce83_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce83_construct(i32 %0, %struct.dc* %1, %struct.dce110_resource_pool* %2) #0 {
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
  store %struct.TYPE_8__* @res_cap_83, %struct.TYPE_8__** %21, align 8
  %22 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %23 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 18
  store i32* @dce80_res_pool_funcs, i32** %24, align 8
  %25 = load i32, i32* @NO_UNDERLAY_PIPE, align 4
  %26 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %27 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 17
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @res_cap_83, i32 0, i32 0), align 4
  %30 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %31 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @res_cap_83, i32 0, i32 0), align 4
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
  br i1 %55, label %56, label %98

56:                                               ; preds = %3
  %57 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %58 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %98

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
  %73 = load i32, i32* @CLOCK_SOURCE_ID_PLL1, align 4
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
  %85 = load i32, i32* @CLOCK_SOURCE_ID_PLL2, align 4
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
  %95 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %96 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store i32 2, i32* %97, align 8
  br label %124

98:                                               ; preds = %56, %3
  %99 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %100 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %101 = load i32, i32* @CLOCK_SOURCE_ID_PLL1, align 4
  %102 = load i32*, i32** @clk_src_regs, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = call i8* @dce80_clock_source_create(%struct.dc_context* %99, %struct.dc_bios* %100, i32 %101, i32* %103, i32 1)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %107 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 16
  store i32* %105, i32** %108, align 8
  %109 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %110 = load %struct.dc_bios*, %struct.dc_bios** %10, align 8
  %111 = load i32, i32* @CLOCK_SOURCE_ID_PLL2, align 4
  %112 = load i32*, i32** @clk_src_regs, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = call i8* @dce80_clock_source_create(%struct.dc_context* %109, %struct.dc_bios* %110, i32 %111, i32* %113, i32 0)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %117 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 15
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  store i32* %115, i32** %120, align 8
  %121 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %122 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %98, %62
  %125 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %126 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 16
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = call i32 @dm_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %132 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %455

133:                                              ; preds = %124
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %155, %133
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %137 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp ult i32 %135, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %134
  %142 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %143 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 15
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %141
  %152 = call i32 @dm_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %153 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %455

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %8, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %134

158:                                              ; preds = %134
  %159 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %160 = call i32* @dce_dmcu_create(%struct.dc_context* %159, i32* @dmcu_regs, i32* @dmcu_shift, i32* @dmcu_mask)
  %161 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %162 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 14
  store i32* %160, i32** %163, align 8
  %164 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %165 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 14
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %158
  %170 = call i32 @dm_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %171 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %455

172:                                              ; preds = %158
  %173 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %174 = call i32* @dce_abm_create(%struct.dc_context* %173, i32* @abm_regs, i32* @abm_shift, i32* @abm_mask)
  %175 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %176 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 13
  store i32* %174, i32** %177, align 8
  %178 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %179 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 13
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %172
  %184 = call i32 @dm_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %185 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %455

186:                                              ; preds = %172
  %187 = load %struct.dc*, %struct.dc** %6, align 8
  %188 = getelementptr inbounds %struct.dc, %struct.dc* %187, i32 0, i32 1
  %189 = load %struct.dc_context*, %struct.dc_context** %188, align 8
  %190 = getelementptr inbounds %struct.irq_service_init_data, %struct.irq_service_init_data* %11, i32 0, i32 0
  store %struct.dc_context* %189, %struct.dc_context** %190, align 8
  %191 = call i32 @dal_irq_service_dce80_create(%struct.irq_service_init_data* %11)
  %192 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %193 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 12
  store i32 %191, i32* %194, align 8
  %195 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %196 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %186
  br label %455

201:                                              ; preds = %186
  store i32 0, i32* %8, align 4
  br label %202

202:                                              ; preds = %329, %201
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %205 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ult i32 %203, %207
  br i1 %208, label %209, label %332

209:                                              ; preds = %202
  %210 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %211 = load i32, i32* %8, align 4
  %212 = load i32*, i32** @dce80_tg_offsets, align 8
  %213 = load i32, i32* %8, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = call i32* @dce80_timing_generator_create(%struct.dc_context* %210, i32 %211, i32* %215)
  %217 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %218 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 11
  %220 = load i32**, i32*** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  store i32* %216, i32** %223, align 8
  %224 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %225 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 11
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = icmp eq i32* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %209
  %234 = call i32 (...) @BREAK_TO_DEBUGGER()
  %235 = call i32 @dm_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %455

236:                                              ; preds = %209
  %237 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %238 = load i32, i32* %8, align 4
  %239 = call i32* @dce80_mem_input_create(%struct.dc_context* %237, i32 %238)
  %240 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %241 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 10
  %243 = load i32**, i32*** %242, align 8
  %244 = load i32, i32* %8, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32*, i32** %243, i64 %245
  store i32* %239, i32** %246, align 8
  %247 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %248 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 10
  %250 = load i32**, i32*** %249, align 8
  %251 = load i32, i32* %8, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %250, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = icmp eq i32* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %236
  %257 = call i32 (...) @BREAK_TO_DEBUGGER()
  %258 = call i32 @dm_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %455

259:                                              ; preds = %236
  %260 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %261 = load i32, i32* %8, align 4
  %262 = call i32* @dce80_ipp_create(%struct.dc_context* %260, i32 %261)
  %263 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %264 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 9
  %266 = load i32**, i32*** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  store i32* %262, i32** %269, align 8
  %270 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %271 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 9
  %273 = load i32**, i32*** %272, align 8
  %274 = load i32, i32* %8, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = icmp eq i32* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %259
  %280 = call i32 (...) @BREAK_TO_DEBUGGER()
  %281 = call i32 @dm_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %455

282:                                              ; preds = %259
  %283 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %284 = load i32, i32* %8, align 4
  %285 = call i32* @dce80_transform_create(%struct.dc_context* %283, i32 %284)
  %286 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %287 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 8
  %289 = load i32**, i32*** %288, align 8
  %290 = load i32, i32* %8, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %289, i64 %291
  store i32* %285, i32** %292, align 8
  %293 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %294 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 8
  %296 = load i32**, i32*** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds i32*, i32** %296, i64 %298
  %300 = load i32*, i32** %299, align 8
  %301 = icmp eq i32* %300, null
  br i1 %301, label %302, label %305

302:                                              ; preds = %282
  %303 = call i32 (...) @BREAK_TO_DEBUGGER()
  %304 = call i32 @dm_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %455

305:                                              ; preds = %282
  %306 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %307 = load i32, i32* %8, align 4
  %308 = call i32* @dce80_opp_create(%struct.dc_context* %306, i32 %307)
  %309 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %310 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 7
  %312 = load i32**, i32*** %311, align 8
  %313 = load i32, i32* %8, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i32*, i32** %312, i64 %314
  store i32* %308, i32** %315, align 8
  %316 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %317 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 7
  %319 = load i32**, i32*** %318, align 8
  %320 = load i32, i32* %8, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i32*, i32** %319, i64 %321
  %323 = load i32*, i32** %322, align 8
  %324 = icmp eq i32* %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %305
  %326 = call i32 (...) @BREAK_TO_DEBUGGER()
  %327 = call i32 @dm_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %455

328:                                              ; preds = %305
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %8, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %8, align 4
  br label %202

332:                                              ; preds = %202
  store i32 0, i32* %8, align 4
  br label %333

333:                                              ; preds = %411, %332
  %334 = load i32, i32* %8, align 4
  %335 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %336 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 6
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = icmp ult i32 %334, %340
  br i1 %341, label %342, label %414

342:                                              ; preds = %333
  %343 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %344 = load i32, i32* %8, align 4
  %345 = call i32* @dce80_aux_engine_create(%struct.dc_context* %343, i32 %344)
  %346 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %347 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i32 0, i32 5
  %349 = load i32**, i32*** %348, align 8
  %350 = load i32, i32* %8, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds i32*, i32** %349, i64 %351
  store i32* %345, i32** %352, align 8
  %353 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %354 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 5
  %356 = load i32**, i32*** %355, align 8
  %357 = load i32, i32* %8, align 4
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds i32*, i32** %356, i64 %358
  %360 = load i32*, i32** %359, align 8
  %361 = icmp eq i32* %360, null
  br i1 %361, label %362, label %365

362:                                              ; preds = %342
  %363 = call i32 (...) @BREAK_TO_DEBUGGER()
  %364 = call i32 @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %455

365:                                              ; preds = %342
  %366 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %367 = load i32, i32* %8, align 4
  %368 = call i32* @dce80_i2c_hw_create(%struct.dc_context* %366, i32 %367)
  %369 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %370 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 4
  %372 = load i32**, i32*** %371, align 8
  %373 = load i32, i32* %8, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i32*, i32** %372, i64 %374
  store i32* %368, i32** %375, align 8
  %376 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %377 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 4
  %379 = load i32**, i32*** %378, align 8
  %380 = load i32, i32* %8, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds i32*, i32** %379, i64 %381
  %383 = load i32*, i32** %382, align 8
  %384 = icmp eq i32* %383, null
  br i1 %384, label %385, label %388

385:                                              ; preds = %365
  %386 = call i32 (...) @BREAK_TO_DEBUGGER()
  %387 = call i32 @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %455

388:                                              ; preds = %365
  %389 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %390 = call i32* @dce80_i2c_sw_create(%struct.dc_context* %389)
  %391 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %392 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 3
  %394 = load i32**, i32*** %393, align 8
  %395 = load i32, i32* %8, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds i32*, i32** %394, i64 %396
  store i32* %390, i32** %397, align 8
  %398 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %399 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 3
  %401 = load i32**, i32*** %400, align 8
  %402 = load i32, i32* %8, align 4
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds i32*, i32** %401, i64 %403
  %405 = load i32*, i32** %404, align 8
  %406 = icmp eq i32* %405, null
  br i1 %406, label %407, label %410

407:                                              ; preds = %388
  %408 = call i32 (...) @BREAK_TO_DEBUGGER()
  %409 = call i32 @dm_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  br label %455

410:                                              ; preds = %388
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %8, align 4
  %413 = add i32 %412, 1
  store i32 %413, i32* %8, align 4
  br label %333

414:                                              ; preds = %333
  %415 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %416 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.dc*, %struct.dc** %6, align 8
  %420 = getelementptr inbounds %struct.dc, %struct.dc* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 4
  store i32 %418, i32* %421, align 8
  store i32 0, i32* %8, align 4
  br label %422

422:                                              ; preds = %438, %414
  %423 = load i32, i32* %8, align 4
  %424 = load %struct.dc*, %struct.dc** %6, align 8
  %425 = getelementptr inbounds %struct.dc, %struct.dc* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 4
  %427 = load i32, i32* %426, align 8
  %428 = icmp ult i32 %423, %427
  br i1 %428, label %429, label %441

429:                                              ; preds = %422
  %430 = load i32, i32* @plane_cap, align 4
  %431 = load %struct.dc*, %struct.dc** %6, align 8
  %432 = getelementptr inbounds %struct.dc, %struct.dc* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 6
  %434 = load i32*, i32** %433, align 8
  %435 = load i32, i32* %8, align 4
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  store i32 %430, i32* %437, align 4
  br label %438

438:                                              ; preds = %429
  %439 = load i32, i32* %8, align 4
  %440 = add i32 %439, 1
  store i32 %440, i32* %8, align 4
  br label %422

441:                                              ; preds = %422
  %442 = load %struct.dc*, %struct.dc** %6, align 8
  %443 = getelementptr inbounds %struct.dc, %struct.dc* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 5
  store i32 1, i32* %444, align 4
  %445 = load i32, i32* %5, align 4
  %446 = load %struct.dc*, %struct.dc** %6, align 8
  %447 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %448 = getelementptr inbounds %struct.dce110_resource_pool, %struct.dce110_resource_pool* %447, i32 0, i32 0
  %449 = call i32 @resource_construct(i32 %445, %struct.dc* %446, %struct.TYPE_7__* %448, i32* @res_create_funcs)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %452, label %451

451:                                              ; preds = %441
  br label %455

452:                                              ; preds = %441
  %453 = load %struct.dc*, %struct.dc** %6, align 8
  %454 = call i32 @dce80_hw_sequencer_construct(%struct.dc* %453)
  store i32 1, i32* %4, align 4
  br label %458

455:                                              ; preds = %451, %407, %385, %362, %325, %302, %279, %256, %233, %200, %183, %169, %151, %130
  %456 = load %struct.dce110_resource_pool*, %struct.dce110_resource_pool** %7, align 8
  %457 = call i32 @destruct(%struct.dce110_resource_pool* %456)
  store i32 0, i32* %4, align 4
  br label %458

458:                                              ; preds = %455, %452
  %459 = load i32, i32* %4, align 4
  ret i32 %459
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
