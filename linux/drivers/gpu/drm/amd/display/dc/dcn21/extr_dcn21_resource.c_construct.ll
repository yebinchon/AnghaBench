; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.dc = type { i32, %struct.TYPE_8__, %struct.dc_context*, i32, i64, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.dc_context = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.dcn21_resource_pool = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32**, %struct.TYPE_10__*, i32*, i32*, i32**, i32**, i32**, i32**, i32**, i32**, i32**, i32**, i32, i32, i32*, i32*, i32**, i8*, i32, i32* }
%struct.irq_service_init_data = type { %struct.dc_context* }

@bios_regs = common dso_local global i32 0, align 4
@res_cap_rn = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@dcn21_res_pool_funcs = common dso_local global i32 0, align 4
@NO_UNDERLAY_PIPE = common dso_local global i32 0, align 4
@DCE_ENV_PRODUCTION_DRV = common dso_local global i64 0, align 8
@debug_defaults_drv = common dso_local global i8* null, align 8
@DCE_ENV_FPGA_MAXIMUS = common dso_local global i64 0, align 8
@debug_defaults_diags = common dso_local global i8* null, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL0 = common dso_local global i32 0, align 4
@clk_src_regs = common dso_local global i32* null, align 8
@DCN20_CLK_SRC_PLL0 = common dso_local global i64 0, align 8
@CLOCK_SOURCE_COMBO_PHY_PLL1 = common dso_local global i32 0, align 4
@DCN20_CLK_SRC_PLL1 = common dso_local global i64 0, align 8
@DCN20_CLK_SRC_TOTAL_DCN21 = common dso_local global i32 0, align 4
@CLOCK_SOURCE_ID_DP_DTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"DC: failed to create clock sources!\0A\00", align 1
@dccg_regs = common dso_local global i32 0, align 4
@dccg_shift = common dso_local global i32 0, align 4
@dccg_mask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"DC: failed to create dccg!\0A\00", align 1
@dcn2_1_soc = common dso_local global i32 0, align 4
@dcn2_1_ip = common dso_local global i32 0, align 4
@DML_PROJECT_DCN21 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"DC: failed to create memory input!\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"DC: failed to create input pixel processor!\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"DC: failed to create dpps!\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"DC:failed to create aux engine!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"DC:failed to create hw i2c!!\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"DC: failed to create output pixel processor!\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"DC: failed to create tg!\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"DC: failed to create mpc!\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"DC: failed to create hubbub!\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"DC: failed to create dwbc!\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"DC: failed to create mcif_wb!\0A\00", align 1
@res_create_funcs = common dso_local global i32 0, align 4
@res_create_maximus_funcs = common dso_local global i32 0, align 4
@plane_cap = common dso_local global i32 0, align 4
@cap_funcs = common dso_local global i32 0, align 4
@dmcub_mask = common dso_local global i32 0, align 4
@dmcub_regs = common dso_local global i32 0, align 4
@dmcub_shift = common dso_local global i32 0, align 4
@res_cap_rn_FPGA_4pipe = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dc*, %struct.dcn21_resource_pool*)* @construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct(i32 %0, %struct.dc* %1, %struct.dcn21_resource_pool* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dcn21_resource_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_context*, align 8
  %10 = alloca %struct.irq_service_init_data, align 8
  store i32 %0, i32* %5, align 4
  store %struct.dc* %1, %struct.dc** %6, align 8
  store %struct.dcn21_resource_pool* %2, %struct.dcn21_resource_pool** %7, align 8
  %11 = load %struct.dc*, %struct.dc** %6, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 2
  %13 = load %struct.dc_context*, %struct.dc_context** %12, align 8
  store %struct.dc_context* %13, %struct.dc_context** %9, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %15 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32* @bios_regs, i32** %17, align 8
  %18 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %19 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  store %struct.TYPE_10__* @res_cap_rn, %struct.TYPE_10__** %20, align 8
  %21 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %22 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 22
  store i32* @dcn21_res_pool_funcs, i32** %23, align 8
  %24 = load i32, i32* @NO_UNDERLAY_PIPE, align 4
  %25 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %26 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 21
  store i32 %24, i32* %27, align 8
  %28 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %29 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 4, i32* %30, align 8
  %31 = load %struct.dc*, %struct.dc** %6, align 8
  %32 = getelementptr inbounds %struct.dc, %struct.dc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 200, i32* %33, align 8
  %34 = load %struct.dc*, %struct.dc** %6, align 8
  %35 = getelementptr inbounds %struct.dc, %struct.dc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 100, i32* %36, align 4
  %37 = load %struct.dc*, %struct.dc** %6, align 8
  %38 = getelementptr inbounds %struct.dc, %struct.dc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  store i32 256, i32* %39, align 8
  %40 = load %struct.dc*, %struct.dc** %6, align 8
  %41 = getelementptr inbounds %struct.dc, %struct.dc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  store i32 2048, i32* %42, align 4
  %43 = load %struct.dc*, %struct.dc** %6, align 8
  %44 = getelementptr inbounds %struct.dc, %struct.dc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  store i32 1, i32* %45, align 8
  %46 = load %struct.dc*, %struct.dc** %6, align 8
  %47 = getelementptr inbounds %struct.dc, %struct.dc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  store i32 1, i32* %48, align 4
  %49 = load %struct.dc*, %struct.dc** %6, align 8
  %50 = getelementptr inbounds %struct.dc, %struct.dc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 6
  store i32 1, i32* %51, align 8
  %52 = load %struct.dc*, %struct.dc** %6, align 8
  %53 = getelementptr inbounds %struct.dc, %struct.dc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 7
  store i32 1, i32* %54, align 4
  %55 = load %struct.dc*, %struct.dc** %6, align 8
  %56 = getelementptr inbounds %struct.dc, %struct.dc* %55, i32 0, i32 2
  %57 = load %struct.dc_context*, %struct.dc_context** %56, align 8
  %58 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DCE_ENV_PRODUCTION_DRV, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %3
  %63 = load i8*, i8** @debug_defaults_drv, align 8
  %64 = load %struct.dc*, %struct.dc** %6, align 8
  %65 = getelementptr inbounds %struct.dc, %struct.dc* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  br label %86

66:                                               ; preds = %3
  %67 = load %struct.dc*, %struct.dc** %6, align 8
  %68 = getelementptr inbounds %struct.dc, %struct.dc* %67, i32 0, i32 2
  %69 = load %struct.dc_context*, %struct.dc_context** %68, align 8
  %70 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DCE_ENV_FPGA_MAXIMUS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %76 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 4, i32* %77, align 8
  %78 = load i8*, i8** @debug_defaults_diags, align 8
  %79 = load %struct.dc*, %struct.dc** %6, align 8
  %80 = getelementptr inbounds %struct.dc, %struct.dc* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  br label %85

81:                                               ; preds = %66
  %82 = load i8*, i8** @debug_defaults_diags, align 8
  %83 = load %struct.dc*, %struct.dc** %6, align 8
  %84 = getelementptr inbounds %struct.dc, %struct.dc* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %74
  br label %86

86:                                               ; preds = %85, %62
  %87 = load %struct.dc*, %struct.dc** %6, align 8
  %88 = getelementptr inbounds %struct.dc, %struct.dc* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.dc*, %struct.dc** %6, align 8
  %93 = getelementptr inbounds %struct.dc, %struct.dc* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @vm_helper_init(i64 %94, i32 16)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %98 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %99 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL0, align 4
  %102 = load i32*, i32** @clk_src_regs, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = call i8* @dcn21_clock_source_create(%struct.dc_context* %97, %struct.TYPE_11__* %100, i32 %101, i32* %103, i32 0)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %107 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 19
  %109 = load i32**, i32*** %108, align 8
  %110 = load i64, i64* @DCN20_CLK_SRC_PLL0, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  store i32* %105, i32** %111, align 8
  %112 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %113 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %114 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = load i32, i32* @CLOCK_SOURCE_COMBO_PHY_PLL1, align 4
  %117 = load i32*, i32** @clk_src_regs, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = call i8* @dcn21_clock_source_create(%struct.dc_context* %112, %struct.TYPE_11__* %115, i32 %116, i32* %118, i32 0)
  %120 = bitcast i8* %119 to i32*
  %121 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %122 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 19
  %124 = load i32**, i32*** %123, align 8
  %125 = load i64, i64* @DCN20_CLK_SRC_PLL1, align 8
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  store i32* %120, i32** %126, align 8
  %127 = load i32, i32* @DCN20_CLK_SRC_TOTAL_DCN21, align 4
  %128 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %129 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %132 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %133 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %132, i32 0, i32 1
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load i32, i32* @CLOCK_SOURCE_ID_DP_DTO, align 4
  %136 = load i32*, i32** @clk_src_regs, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = call i8* @dcn21_clock_source_create(%struct.dc_context* %131, %struct.TYPE_11__* %134, i32 %135, i32* %137, i32 1)
  %139 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %140 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 20
  store i8* %138, i8** %141, align 8
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %163, %96
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %145 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %142
  %150 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %151 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 19
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %149
  %160 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %161 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %527

162:                                              ; preds = %149
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %142

166:                                              ; preds = %142
  %167 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %168 = call i32* @dccg2_create(%struct.dc_context* %167, i32* @dccg_regs, i32* @dccg_shift, i32* @dccg_mask)
  %169 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %170 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 18
  store i32* %168, i32** %171, align 8
  %172 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %173 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 18
  %175 = load i32*, i32** %174, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %166
  %178 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %179 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %527

180:                                              ; preds = %166
  %181 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %182 = call i32 @dcn21_pp_smu_create(%struct.dc_context* %181)
  %183 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %184 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 16
  store i32 %182, i32* %185, align 4
  %186 = load %struct.dc*, %struct.dc** %6, align 8
  %187 = getelementptr inbounds %struct.dc, %struct.dc* %186, i32 0, i32 3
  %188 = load i32, i32* @DML_PROJECT_DCN21, align 4
  %189 = call i32 @dml_init_instance(i32* %187, i32* @dcn2_1_soc, i32* @dcn2_1_ip, i32 %188)
  %190 = load %struct.dc*, %struct.dc** %6, align 8
  %191 = getelementptr inbounds %struct.dc, %struct.dc* %190, i32 0, i32 2
  %192 = load %struct.dc_context*, %struct.dc_context** %191, align 8
  %193 = getelementptr inbounds %struct.irq_service_init_data, %struct.irq_service_init_data* %10, i32 0, i32 0
  store %struct.dc_context* %192, %struct.dc_context** %193, align 8
  %194 = call i32 @dal_irq_service_dcn21_create(%struct.irq_service_init_data* %10)
  %195 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %196 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 15
  store i32 %194, i32* %197, align 8
  %198 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %199 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 15
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %180
  br label %527

204:                                              ; preds = %180
  store i32 0, i32* %8, align 4
  br label %205

205:                                              ; preds = %282, %204
  %206 = load i32, i32* %8, align 4
  %207 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %208 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %206, %210
  br i1 %211, label %212, label %285

212:                                              ; preds = %205
  %213 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i32* @dcn21_hubp_create(%struct.dc_context* %213, i32 %214)
  %216 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %217 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 14
  %219 = load i32**, i32*** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  store i32* %215, i32** %222, align 8
  %223 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %224 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 14
  %226 = load i32**, i32*** %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = icmp eq i32* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %212
  %233 = call i32 (...) @BREAK_TO_DEBUGGER()
  %234 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %527

235:                                              ; preds = %212
  %236 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %237 = load i32, i32* %8, align 4
  %238 = call i32* @dcn21_ipp_create(%struct.dc_context* %236, i32 %237)
  %239 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %240 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 13
  %242 = load i32**, i32*** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32*, i32** %242, i64 %244
  store i32* %238, i32** %245, align 8
  %246 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %247 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 13
  %249 = load i32**, i32*** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %235
  %256 = call i32 (...) @BREAK_TO_DEBUGGER()
  %257 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %527

258:                                              ; preds = %235
  %259 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %260 = load i32, i32* %8, align 4
  %261 = call i32* @dcn21_dpp_create(%struct.dc_context* %259, i32 %260)
  %262 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %263 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 12
  %265 = load i32**, i32*** %264, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32*, i32** %265, i64 %267
  store i32* %261, i32** %268, align 8
  %269 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %270 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 12
  %272 = load i32**, i32*** %271, align 8
  %273 = load i32, i32* %8, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32*, i32** %272, i64 %274
  %276 = load i32*, i32** %275, align 8
  %277 = icmp eq i32* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %258
  %279 = call i32 (...) @BREAK_TO_DEBUGGER()
  %280 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %527

281:                                              ; preds = %258
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  br label %205

285:                                              ; preds = %205
  store i32 0, i32* %8, align 4
  br label %286

286:                                              ; preds = %349, %285
  %287 = load i32, i32* %8, align 4
  %288 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %289 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 4
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp slt i32 %287, %293
  br i1 %294, label %295, label %352

295:                                              ; preds = %286
  %296 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %297 = load i32, i32* %8, align 4
  %298 = call i32* @dcn21_aux_engine_create(%struct.dc_context* %296, i32 %297)
  %299 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %300 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 11
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  store i32* %298, i32** %305, align 8
  %306 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %307 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 11
  %309 = load i32**, i32*** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %309, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = icmp eq i32* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %295
  %316 = call i32 (...) @BREAK_TO_DEBUGGER()
  %317 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %527

318:                                              ; preds = %295
  %319 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %320 = load i32, i32* %8, align 4
  %321 = call i32* @dcn21_i2c_hw_create(%struct.dc_context* %319, i32 %320)
  %322 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %323 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 10
  %325 = load i32**, i32*** %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  store i32* %321, i32** %328, align 8
  %329 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %330 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 10
  %332 = load i32**, i32*** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32*, i32** %332, i64 %334
  %336 = load i32*, i32** %335, align 8
  %337 = icmp eq i32* %336, null
  br i1 %337, label %338, label %341

338:                                              ; preds = %318
  %339 = call i32 (...) @BREAK_TO_DEBUGGER()
  %340 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %527

341:                                              ; preds = %318
  %342 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %343 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 9
  %345 = load i32**, i32*** %344, align 8
  %346 = load i32, i32* %8, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32*, i32** %345, i64 %347
  store i32* null, i32** %348, align 8
  br label %349

349:                                              ; preds = %341
  %350 = load i32, i32* %8, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %8, align 4
  br label %286

352:                                              ; preds = %286
  store i32 0, i32* %8, align 4
  br label %353

353:                                              ; preds = %386, %352
  %354 = load i32, i32* %8, align 4
  %355 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %356 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 4
  %358 = load %struct.TYPE_10__*, %struct.TYPE_10__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = icmp slt i32 %354, %360
  br i1 %361, label %362, label %389

362:                                              ; preds = %353
  %363 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %364 = load i32, i32* %8, align 4
  %365 = call i32* @dcn21_opp_create(%struct.dc_context* %363, i32 %364)
  %366 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %367 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 8
  %369 = load i32**, i32*** %368, align 8
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32*, i32** %369, i64 %371
  store i32* %365, i32** %372, align 8
  %373 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %374 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 8
  %376 = load i32**, i32*** %375, align 8
  %377 = load i32, i32* %8, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32*, i32** %376, i64 %378
  %380 = load i32*, i32** %379, align 8
  %381 = icmp eq i32* %380, null
  br i1 %381, label %382, label %385

382:                                              ; preds = %362
  %383 = call i32 (...) @BREAK_TO_DEBUGGER()
  %384 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %527

385:                                              ; preds = %362
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %8, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %8, align 4
  br label %353

389:                                              ; preds = %353
  store i32 0, i32* %8, align 4
  br label %390

390:                                              ; preds = %423, %389
  %391 = load i32, i32* %8, align 4
  %392 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %393 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 4
  %395 = load %struct.TYPE_10__*, %struct.TYPE_10__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = icmp slt i32 %391, %397
  br i1 %398, label %399, label %426

399:                                              ; preds = %390
  %400 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %401 = load i32, i32* %8, align 4
  %402 = call i32* @dcn21_timing_generator_create(%struct.dc_context* %400, i32 %401)
  %403 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %404 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 7
  %406 = load i32**, i32*** %405, align 8
  %407 = load i32, i32* %8, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32*, i32** %406, i64 %408
  store i32* %402, i32** %409, align 8
  %410 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %411 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 7
  %413 = load i32**, i32*** %412, align 8
  %414 = load i32, i32* %8, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32*, i32** %413, i64 %415
  %417 = load i32*, i32** %416, align 8
  %418 = icmp eq i32* %417, null
  br i1 %418, label %419, label %422

419:                                              ; preds = %399
  %420 = call i32 (...) @BREAK_TO_DEBUGGER()
  %421 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %527

422:                                              ; preds = %399
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %8, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %8, align 4
  br label %390

426:                                              ; preds = %390
  %427 = load i32, i32* %8, align 4
  %428 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %429 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 2
  store i32 %427, i32* %430, align 8
  %431 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %432 = call i32* @dcn21_mpc_create(%struct.dc_context* %431)
  %433 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %434 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 6
  store i32* %432, i32** %435, align 8
  %436 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %437 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 6
  %439 = load i32*, i32** %438, align 8
  %440 = icmp eq i32* %439, null
  br i1 %440, label %441, label %444

441:                                              ; preds = %426
  %442 = call i32 (...) @BREAK_TO_DEBUGGER()
  %443 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %527

444:                                              ; preds = %426
  %445 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %446 = call i32* @dcn21_hubbub_create(%struct.dc_context* %445)
  %447 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %448 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 5
  store i32* %446, i32** %449, align 8
  %450 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %451 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %451, i32 0, i32 5
  %453 = load i32*, i32** %452, align 8
  %454 = icmp eq i32* %453, null
  br i1 %454, label %455, label %458

455:                                              ; preds = %444
  %456 = call i32 (...) @BREAK_TO_DEBUGGER()
  %457 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %527

458:                                              ; preds = %444
  %459 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %460 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %461 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %460, i32 0, i32 0
  %462 = call i32 @dcn20_dwbc_create(%struct.dc_context* %459, %struct.TYPE_9__* %461)
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %467, label %464

464:                                              ; preds = %458
  %465 = call i32 (...) @BREAK_TO_DEBUGGER()
  %466 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %527

467:                                              ; preds = %458
  %468 = load %struct.dc_context*, %struct.dc_context** %9, align 8
  %469 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %470 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %469, i32 0, i32 0
  %471 = call i32 @dcn20_mmhubbub_create(%struct.dc_context* %468, %struct.TYPE_9__* %470)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %476, label %473

473:                                              ; preds = %467
  %474 = call i32 (...) @BREAK_TO_DEBUGGER()
  %475 = call i32 (i8*, ...) @dm_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %527

476:                                              ; preds = %467
  %477 = load i32, i32* %5, align 4
  %478 = load %struct.dc*, %struct.dc** %6, align 8
  %479 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %480 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %479, i32 0, i32 0
  %481 = load %struct.dc*, %struct.dc** %6, align 8
  %482 = getelementptr inbounds %struct.dc, %struct.dc* %481, i32 0, i32 2
  %483 = load %struct.dc_context*, %struct.dc_context** %482, align 8
  %484 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = call i64 @IS_FPGA_MAXIMUS_DC(i64 %485)
  %487 = icmp ne i64 %486, 0
  %488 = xor i1 %487, true
  %489 = zext i1 %488 to i64
  %490 = select i1 %488, i32* @res_create_funcs, i32* @res_create_maximus_funcs
  %491 = call i32 @resource_construct(i32 %477, %struct.dc* %478, %struct.TYPE_9__* %480, i32* %490)
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %494, label %493

493:                                              ; preds = %476
  br label %527

494:                                              ; preds = %476
  %495 = load %struct.dc*, %struct.dc** %6, align 8
  %496 = call i32 @dcn20_hw_sequencer_construct(%struct.dc* %495)
  %497 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %498 = getelementptr inbounds %struct.dcn21_resource_pool, %struct.dcn21_resource_pool* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.dc*, %struct.dc** %6, align 8
  %502 = getelementptr inbounds %struct.dc, %struct.dc* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 8
  store i32 %500, i32* %503, align 8
  store i32 0, i32* %8, align 4
  br label %504

504:                                              ; preds = %520, %494
  %505 = load i32, i32* %8, align 4
  %506 = load %struct.dc*, %struct.dc** %6, align 8
  %507 = getelementptr inbounds %struct.dc, %struct.dc* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %507, i32 0, i32 8
  %509 = load i32, i32* %508, align 8
  %510 = icmp slt i32 %505, %509
  br i1 %510, label %511, label %523

511:                                              ; preds = %504
  %512 = load i32, i32* @plane_cap, align 4
  %513 = load %struct.dc*, %struct.dc** %6, align 8
  %514 = getelementptr inbounds %struct.dc, %struct.dc* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %514, i32 0, i32 9
  %516 = load i32*, i32** %515, align 8
  %517 = load i32, i32* %8, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %516, i64 %518
  store i32 %512, i32* %519, align 4
  br label %520

520:                                              ; preds = %511
  %521 = load i32, i32* %8, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %8, align 4
  br label %504

523:                                              ; preds = %504
  %524 = load i32, i32* @cap_funcs, align 4
  %525 = load %struct.dc*, %struct.dc** %6, align 8
  %526 = getelementptr inbounds %struct.dc, %struct.dc* %525, i32 0, i32 0
  store i32 %524, i32* %526, align 8
  store i32 1, i32* %4, align 4
  br label %530

527:                                              ; preds = %493, %473, %464, %455, %441, %419, %382, %338, %315, %278, %255, %232, %203, %177, %159
  %528 = load %struct.dcn21_resource_pool*, %struct.dcn21_resource_pool** %7, align 8
  %529 = call i32 @destruct(%struct.dcn21_resource_pool* %528)
  store i32 0, i32* %4, align 4
  br label %530

530:                                              ; preds = %527, %523
  %531 = load i32, i32* %4, align 4
  ret i32 %531
}

declare dso_local i32 @vm_helper_init(i64, i32) #1

declare dso_local i8* @dcn21_clock_source_create(%struct.dc_context*, %struct.TYPE_11__*, i32, i32*, i32) #1

declare dso_local i32 @dm_error(i8*, ...) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32* @dccg2_create(%struct.dc_context*, i32*, i32*, i32*) #1

declare dso_local i32 @dcn21_pp_smu_create(%struct.dc_context*) #1

declare dso_local i32 @dml_init_instance(i32*, i32*, i32*, i32) #1

declare dso_local i32 @dal_irq_service_dcn21_create(%struct.irq_service_init_data*) #1

declare dso_local i32* @dcn21_hubp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dcn21_ipp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dcn21_dpp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dcn21_aux_engine_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dcn21_i2c_hw_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dcn21_opp_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dcn21_timing_generator_create(%struct.dc_context*, i32) #1

declare dso_local i32* @dcn21_mpc_create(%struct.dc_context*) #1

declare dso_local i32* @dcn21_hubbub_create(%struct.dc_context*) #1

declare dso_local i32 @dcn20_dwbc_create(%struct.dc_context*, %struct.TYPE_9__*) #1

declare dso_local i32 @dcn20_mmhubbub_create(%struct.dc_context*, %struct.TYPE_9__*) #1

declare dso_local i32 @resource_construct(i32, %struct.dc*, %struct.TYPE_9__*, i32*) #1

declare dso_local i64 @IS_FPGA_MAXIMUS_DC(i64) #1

declare dso_local i32 @dcn20_hw_sequencer_construct(%struct.dc*) #1

declare dso_local i32 @destruct(%struct.dcn21_resource_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
