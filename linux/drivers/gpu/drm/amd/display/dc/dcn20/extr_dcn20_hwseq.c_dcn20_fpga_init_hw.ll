; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_fpga_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_fpga_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.resource_pool*, %struct.TYPE_33__, %struct.TYPE_25__*, %struct.dc_state*, %struct.dce_hwseq* }
%struct.resource_pool = type { i32, i32, %struct.timing_generator**, i32*, %struct.TYPE_27__**, %struct.TYPE_20__*, %struct.TYPE_22__**, %struct.dpp**, %struct.hubp**, %struct.TYPE_23__*, %struct.TYPE_24__* }
%struct.timing_generator = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32*, i32 }
%struct.dpp = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.dpp*)* }
%struct.hubp = type { i64, i32, %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32 (%struct.hubp*)* }
%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_23__*)* }
%struct.TYPE_24__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 (%struct.TYPE_24__*)* }
%struct.TYPE_33__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dce_hwseq*, i32)* }
%struct.dc.0 = type opaque
%struct.pipe_ctx = type { i32, %struct.TYPE_30__, %struct.TYPE_29__ }
%struct.TYPE_30__ = type { i64, %struct.hubp*, %struct.dpp* }
%struct.TYPE_29__ = type { %struct.timing_generator*, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 (%struct.TYPE_25__*)* }
%struct.dc_state = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.pipe_ctx* }
%struct.dce_hwseq = type { i32 }

@RBBMIF_TIMEOUT_DIS = common dso_local global i32 0, align 4
@RBBMIF_TIMEOUT_DIS_2 = common dso_local global i32 0, align 4
@DCHUBBUB_GLOBAL_TIMER_CNTL = common dso_local global i32 0, align 4
@DCHUBBUB_GLOBAL_TIMER_REFDIV = common dso_local global i32 0, align 4
@DCHUBBUB_GLOBAL_TIMER_ENABLE = common dso_local global i32 0, align 4
@REFCLK_CNTL = common dso_local global i32 0, align 4
@MAX_PIPES = common dso_local global i32 0, align 4
@OPP_ID_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @dcn20_fpga_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_fpga_init_hw(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dce_hwseq*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.dc_state*, align 8
  %8 = alloca %struct.timing_generator*, align 8
  %9 = alloca %struct.timing_generator*, align 8
  %10 = alloca %struct.dpp*, align 8
  %11 = alloca %struct.timing_generator*, align 8
  %12 = alloca %struct.pipe_ctx*, align 8
  %13 = alloca %struct.hubp*, align 8
  %14 = alloca %struct.dpp*, align 8
  %15 = alloca %struct.timing_generator*, align 8
  %16 = alloca %struct.pipe_ctx*, align 8
  %17 = alloca %struct.timing_generator*, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %18 = load %struct.dc*, %struct.dc** %2, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 4
  %20 = load %struct.dce_hwseq*, %struct.dce_hwseq** %19, align 8
  store %struct.dce_hwseq* %20, %struct.dce_hwseq** %5, align 8
  %21 = load %struct.dc*, %struct.dc** %2, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 0
  %23 = load %struct.resource_pool*, %struct.resource_pool** %22, align 8
  store %struct.resource_pool* %23, %struct.resource_pool** %6, align 8
  %24 = load %struct.dc*, %struct.dc** %2, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 3
  %26 = load %struct.dc_state*, %struct.dc_state** %25, align 8
  store %struct.dc_state* %26, %struct.dc_state** %7, align 8
  %27 = load %struct.dc*, %struct.dc** %2, align 8
  %28 = getelementptr inbounds %struct.dc, %struct.dc* %27, i32 0, i32 2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %30 = icmp ne %struct.TYPE_25__* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %1
  %32 = load %struct.dc*, %struct.dc** %2, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_25__*)* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load %struct.dc*, %struct.dc** %2, align 8
  %42 = getelementptr inbounds %struct.dc, %struct.dc* %41, i32 0, i32 2
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %46, align 8
  %48 = load %struct.dc*, %struct.dc** %2, align 8
  %49 = getelementptr inbounds %struct.dc, %struct.dc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  %51 = call i32 %47(%struct.TYPE_25__* %50)
  br label %52

52:                                               ; preds = %40, %31, %1
  %53 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %54 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %53, i32 0, i32 10
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %58, align 8
  %60 = icmp ne i32 (%struct.TYPE_24__*)* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %63 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %62, i32 0, i32 10
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %67, align 8
  %69 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %70 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %69, i32 0, i32 10
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %70, align 8
  %72 = call i32 %68(%struct.TYPE_24__* %71)
  br label %73

73:                                               ; preds = %61, %52
  %74 = load %struct.dc*, %struct.dc** %2, align 8
  %75 = getelementptr inbounds %struct.dc, %struct.dc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 1
  %77 = load i32 (%struct.dce_hwseq*, i32)*, i32 (%struct.dce_hwseq*, i32)** %76, align 8
  %78 = load %struct.dce_hwseq*, %struct.dce_hwseq** %5, align 8
  %79 = call i32 %77(%struct.dce_hwseq* %78, i32 1)
  %80 = load i32, i32* @RBBMIF_TIMEOUT_DIS, align 4
  %81 = call i32 @REG_WRITE(i32 %80, i32 -1)
  %82 = load i32, i32* @RBBMIF_TIMEOUT_DIS_2, align 4
  %83 = call i32 @REG_WRITE(i32 %82, i32 -1)
  %84 = load %struct.dce_hwseq*, %struct.dce_hwseq** %5, align 8
  %85 = call i32 @dcn20_dccg_init(%struct.dce_hwseq* %84)
  %86 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_CNTL, align 4
  %87 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_REFDIV, align 4
  %88 = call i32 @REG_UPDATE(i32 %86, i32 %87, i32 2)
  %89 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_CNTL, align 4
  %90 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_ENABLE, align 4
  %91 = call i32 @REG_UPDATE(i32 %89, i32 %90, i32 1)
  %92 = load i32, i32* @REFCLK_CNTL, align 4
  %93 = call i32 @REG_WRITE(i32 %92, i32 0)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %125, %73
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.dc*, %struct.dc** %2, align 8
  %97 = getelementptr inbounds %struct.dc, %struct.dc* %96, i32 0, i32 0
  %98 = load %struct.resource_pool*, %struct.resource_pool** %97, align 8
  %99 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %95, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %94
  %103 = load %struct.dc*, %struct.dc** %2, align 8
  %104 = getelementptr inbounds %struct.dc, %struct.dc* %103, i32 0, i32 0
  %105 = load %struct.resource_pool*, %struct.resource_pool** %104, align 8
  %106 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %105, i32 0, i32 2
  %107 = load %struct.timing_generator**, %struct.timing_generator*** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %107, i64 %109
  %111 = load %struct.timing_generator*, %struct.timing_generator** %110, align 8
  store %struct.timing_generator* %111, %struct.timing_generator** %8, align 8
  %112 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %113 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %112, i32 0, i32 0
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 2
  %116 = load i64 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)** %115, align 8
  %117 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %118 = call i64 %116(%struct.timing_generator* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %102
  %121 = load %struct.dc*, %struct.dc** %2, align 8
  %122 = load %struct.timing_generator*, %struct.timing_generator** %8, align 8
  %123 = call i32 @dcn20_init_blank(%struct.dc* %121, %struct.timing_generator* %122)
  br label %124

124:                                              ; preds = %120, %102
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %94

128:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %162, %128
  %130 = load i32, i32* %3, align 4
  %131 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %132 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %165

135:                                              ; preds = %129
  %136 = load %struct.dc*, %struct.dc** %2, align 8
  %137 = getelementptr inbounds %struct.dc, %struct.dc* %136, i32 0, i32 0
  %138 = load %struct.resource_pool*, %struct.resource_pool** %137, align 8
  %139 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %138, i32 0, i32 2
  %140 = load %struct.timing_generator**, %struct.timing_generator*** %139, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %140, i64 %142
  %144 = load %struct.timing_generator*, %struct.timing_generator** %143, align 8
  store %struct.timing_generator* %144, %struct.timing_generator** %9, align 8
  %145 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %146 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %145, i32 0, i32 0
  %147 = load %struct.TYPE_34__*, %struct.TYPE_34__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %147, i32 0, i32 2
  %149 = load i64 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)** %148, align 8
  %150 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %151 = call i64 %149(%struct.timing_generator* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %135
  %154 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %155 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %154, i32 0, i32 0
  %156 = load %struct.TYPE_34__*, %struct.TYPE_34__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %156, i32 0, i32 3
  %158 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %157, align 8
  %159 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %160 = call i32 %158(%struct.timing_generator* %159)
  br label %161

161:                                              ; preds = %153, %135
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %3, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %3, align 4
  br label %129

165:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %189, %165
  %167 = load i32, i32* %3, align 4
  %168 = load %struct.dc*, %struct.dc** %2, align 8
  %169 = getelementptr inbounds %struct.dc, %struct.dc* %168, i32 0, i32 0
  %170 = load %struct.resource_pool*, %struct.resource_pool** %169, align 8
  %171 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %167, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %166
  %175 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %176 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %175, i32 0, i32 7
  %177 = load %struct.dpp**, %struct.dpp*** %176, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.dpp*, %struct.dpp** %177, i64 %179
  %181 = load %struct.dpp*, %struct.dpp** %180, align 8
  store %struct.dpp* %181, %struct.dpp** %10, align 8
  %182 = load %struct.dpp*, %struct.dpp** %10, align 8
  %183 = getelementptr inbounds %struct.dpp, %struct.dpp* %182, i32 0, i32 1
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load i32 (%struct.dpp*)*, i32 (%struct.dpp*)** %185, align 8
  %187 = load %struct.dpp*, %struct.dpp** %10, align 8
  %188 = call i32 %186(%struct.dpp* %187)
  br label %189

189:                                              ; preds = %174
  %190 = load i32, i32* %3, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %3, align 4
  br label %166

192:                                              ; preds = %166
  %193 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %194 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %193, i32 0, i32 9
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %198, align 8
  %200 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %201 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %200, i32 0, i32 9
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %201, align 8
  %203 = call i32 %199(%struct.TYPE_23__* %202)
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %263, %192
  %205 = load i32, i32* %3, align 4
  %206 = load %struct.dc*, %struct.dc** %2, align 8
  %207 = getelementptr inbounds %struct.dc, %struct.dc* %206, i32 0, i32 0
  %208 = load %struct.resource_pool*, %struct.resource_pool** %207, align 8
  %209 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %208, i32 0, i32 5
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %205, %212
  br i1 %213, label %214, label %266

214:                                              ; preds = %204
  %215 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %216 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %215, i32 0, i32 6
  %217 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %216, align 8
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %217, i64 %219
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %225 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %224, i32 0, i32 6
  %226 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %225, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %226, i64 %228
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  store i32 %223, i32* %232, align 8
  %233 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %234 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %233, i32 0, i32 6
  %235 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %234, align 8
  %236 = load i32, i32* %3, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %235, i64 %237
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  store i32* null, i32** %241, align 8
  store i32 0, i32* %4, align 4
  br label %242

242:                                              ; preds = %259, %214
  %243 = load i32, i32* %4, align 4
  %244 = load i32, i32* @MAX_PIPES, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %262

246:                                              ; preds = %242
  %247 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %248 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %247, i32 0, i32 6
  %249 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %248, align 8
  %250 = load i32, i32* %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %249, i64 %251
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %4, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 0, i32* %258, align 4
  br label %259

259:                                              ; preds = %246
  %260 = load i32, i32* %4, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %4, align 4
  br label %242

262:                                              ; preds = %242
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %3, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %3, align 4
  br label %204

266:                                              ; preds = %204
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %382, %266
  %268 = load i32, i32* %3, align 4
  %269 = load %struct.dc*, %struct.dc** %2, align 8
  %270 = getelementptr inbounds %struct.dc, %struct.dc* %269, i32 0, i32 0
  %271 = load %struct.resource_pool*, %struct.resource_pool** %270, align 8
  %272 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %268, %273
  br i1 %274, label %275, label %385

275:                                              ; preds = %267
  %276 = load %struct.dc*, %struct.dc** %2, align 8
  %277 = getelementptr inbounds %struct.dc, %struct.dc* %276, i32 0, i32 0
  %278 = load %struct.resource_pool*, %struct.resource_pool** %277, align 8
  %279 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %278, i32 0, i32 2
  %280 = load %struct.timing_generator**, %struct.timing_generator*** %279, align 8
  %281 = load i32, i32* %3, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %280, i64 %282
  %284 = load %struct.timing_generator*, %struct.timing_generator** %283, align 8
  store %struct.timing_generator* %284, %struct.timing_generator** %11, align 8
  %285 = load %struct.dc_state*, %struct.dc_state** %7, align 8
  %286 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 0
  %288 = load %struct.pipe_ctx*, %struct.pipe_ctx** %287, align 8
  %289 = load i32, i32* %3, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %288, i64 %290
  store %struct.pipe_ctx* %291, %struct.pipe_ctx** %12, align 8
  %292 = load %struct.dc*, %struct.dc** %2, align 8
  %293 = getelementptr inbounds %struct.dc, %struct.dc* %292, i32 0, i32 0
  %294 = load %struct.resource_pool*, %struct.resource_pool** %293, align 8
  %295 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %294, i32 0, i32 8
  %296 = load %struct.hubp**, %struct.hubp*** %295, align 8
  %297 = load i32, i32* %3, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.hubp*, %struct.hubp** %296, i64 %298
  %300 = load %struct.hubp*, %struct.hubp** %299, align 8
  store %struct.hubp* %300, %struct.hubp** %13, align 8
  %301 = load %struct.dc*, %struct.dc** %2, align 8
  %302 = getelementptr inbounds %struct.dc, %struct.dc* %301, i32 0, i32 0
  %303 = load %struct.resource_pool*, %struct.resource_pool** %302, align 8
  %304 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %303, i32 0, i32 7
  %305 = load %struct.dpp**, %struct.dpp*** %304, align 8
  %306 = load i32, i32* %3, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.dpp*, %struct.dpp** %305, i64 %307
  %309 = load %struct.dpp*, %struct.dpp** %308, align 8
  store %struct.dpp* %309, %struct.dpp** %14, align 8
  %310 = load %struct.timing_generator*, %struct.timing_generator** %11, align 8
  %311 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %312 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 0
  store %struct.timing_generator* %310, %struct.timing_generator** %313, align 8
  %314 = load i32, i32* %3, align 4
  %315 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %316 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  %317 = load %struct.hubp*, %struct.hubp** %13, align 8
  %318 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %319 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %319, i32 0, i32 1
  store %struct.hubp* %317, %struct.hubp** %320, align 8
  %321 = load %struct.dpp*, %struct.dpp** %14, align 8
  %322 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %323 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 2
  store %struct.dpp* %321, %struct.dpp** %324, align 8
  %325 = load %struct.dpp*, %struct.dpp** %14, align 8
  %326 = getelementptr inbounds %struct.dpp, %struct.dpp* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %329 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %329, i32 0, i32 0
  store i64 %327, i64* %330, align 8
  %331 = load %struct.dpp*, %struct.dpp** %14, align 8
  %332 = getelementptr inbounds %struct.dpp, %struct.dpp* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.hubp*, %struct.hubp** %13, align 8
  %335 = getelementptr inbounds %struct.hubp, %struct.hubp* %334, i32 0, i32 0
  store i64 %333, i64* %335, align 8
  %336 = load i32, i32* @OPP_ID_INVALID, align 4
  %337 = load %struct.hubp*, %struct.hubp** %13, align 8
  %338 = getelementptr inbounds %struct.hubp, %struct.hubp* %337, i32 0, i32 3
  store i32 %336, i32* %338, align 8
  %339 = load %struct.hubp*, %struct.hubp** %13, align 8
  %340 = getelementptr inbounds %struct.hubp, %struct.hubp* %339, i32 0, i32 1
  store i32 0, i32* %340, align 8
  %341 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %342 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %343, align 8
  %344 = load %struct.hubp*, %struct.hubp** %13, align 8
  %345 = getelementptr inbounds %struct.hubp, %struct.hubp* %344, i32 0, i32 2
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 0
  %348 = load i32 (%struct.hubp*)*, i32 (%struct.hubp*)** %347, align 8
  %349 = load %struct.hubp*, %struct.hubp** %13, align 8
  %350 = call i32 %348(%struct.hubp* %349)
  %351 = load %struct.dc*, %struct.dc** %2, align 8
  %352 = getelementptr inbounds %struct.dc, %struct.dc* %351, i32 0, i32 0
  %353 = load %struct.resource_pool*, %struct.resource_pool** %352, align 8
  %354 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %353, i32 0, i32 6
  %355 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %354, align 8
  %356 = load i32, i32* %3, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %355, i64 %357
  %359 = load %struct.TYPE_22__*, %struct.TYPE_22__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %359, i32 0, i32 0
  %361 = load i32*, i32** %360, align 8
  %362 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %363 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = getelementptr inbounds i32, i32* %361, i64 %365
  store i32 1, i32* %366, align 4
  %367 = load %struct.dc*, %struct.dc** %2, align 8
  %368 = getelementptr inbounds %struct.dc, %struct.dc* %367, i32 0, i32 0
  %369 = load %struct.resource_pool*, %struct.resource_pool** %368, align 8
  %370 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %369, i32 0, i32 6
  %371 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %370, align 8
  %372 = load i32, i32* %3, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %371, i64 %373
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %374, align 8
  %376 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %377 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %377, i32 0, i32 1
  store %struct.TYPE_22__* %375, %struct.TYPE_22__** %378, align 8
  %379 = load %struct.dc*, %struct.dc** %2, align 8
  %380 = load %struct.pipe_ctx*, %struct.pipe_ctx** %12, align 8
  %381 = call i32 @hwss1_plane_atomic_disconnect(%struct.dc* %379, %struct.pipe_ctx* %380)
  br label %382

382:                                              ; preds = %275
  %383 = load i32, i32* %3, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %3, align 4
  br label %267

385:                                              ; preds = %267
  store i32 0, i32* %3, align 4
  br label %386

386:                                              ; preds = %410, %385
  %387 = load i32, i32* %3, align 4
  %388 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %389 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %388, i32 0, i32 5
  %390 = load %struct.TYPE_20__*, %struct.TYPE_20__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = icmp slt i32 %387, %392
  br i1 %393, label %394, label %413

394:                                              ; preds = %386
  %395 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %396 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %395, i32 0, i32 3
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %3, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %403 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %402, i32 0, i32 4
  %404 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %403, align 8
  %405 = load i32, i32* %3, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %404, i64 %406
  %408 = load %struct.TYPE_27__*, %struct.TYPE_27__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %408, i32 0, i32 0
  store i32 %401, i32* %409, align 4
  br label %410

410:                                              ; preds = %394
  %411 = load i32, i32* %3, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %3, align 4
  br label %386

413:                                              ; preds = %386
  store i32 0, i32* %3, align 4
  br label %414

414:                                              ; preds = %449, %413
  %415 = load i32, i32* %3, align 4
  %416 = load %struct.dc*, %struct.dc** %2, align 8
  %417 = getelementptr inbounds %struct.dc, %struct.dc* %416, i32 0, i32 0
  %418 = load %struct.resource_pool*, %struct.resource_pool** %417, align 8
  %419 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp slt i32 %415, %420
  br i1 %421, label %422, label %452

422:                                              ; preds = %414
  %423 = load %struct.dc*, %struct.dc** %2, align 8
  %424 = getelementptr inbounds %struct.dc, %struct.dc* %423, i32 0, i32 0
  %425 = load %struct.resource_pool*, %struct.resource_pool** %424, align 8
  %426 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %425, i32 0, i32 2
  %427 = load %struct.timing_generator**, %struct.timing_generator*** %426, align 8
  %428 = load i32, i32* %3, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %427, i64 %429
  %431 = load %struct.timing_generator*, %struct.timing_generator** %430, align 8
  store %struct.timing_generator* %431, %struct.timing_generator** %15, align 8
  %432 = load %struct.timing_generator*, %struct.timing_generator** %15, align 8
  %433 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %432, i32 0, i32 0
  %434 = load %struct.TYPE_34__*, %struct.TYPE_34__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %434, i32 0, i32 2
  %436 = load i64 (%struct.timing_generator*)*, i64 (%struct.timing_generator*)** %435, align 8
  %437 = load %struct.timing_generator*, %struct.timing_generator** %15, align 8
  %438 = call i64 %436(%struct.timing_generator* %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %448

440:                                              ; preds = %422
  %441 = load %struct.timing_generator*, %struct.timing_generator** %15, align 8
  %442 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %441, i32 0, i32 0
  %443 = load %struct.TYPE_34__*, %struct.TYPE_34__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %443, i32 0, i32 1
  %445 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %444, align 8
  %446 = load %struct.timing_generator*, %struct.timing_generator** %15, align 8
  %447 = call i32 %445(%struct.timing_generator* %446)
  br label %448

448:                                              ; preds = %440, %422
  br label %449

449:                                              ; preds = %448
  %450 = load i32, i32* %3, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %3, align 4
  br label %414

452:                                              ; preds = %414
  store i32 0, i32* %3, align 4
  br label %453

453:                                              ; preds = %483, %452
  %454 = load i32, i32* %3, align 4
  %455 = load %struct.dc*, %struct.dc** %2, align 8
  %456 = getelementptr inbounds %struct.dc, %struct.dc* %455, i32 0, i32 0
  %457 = load %struct.resource_pool*, %struct.resource_pool** %456, align 8
  %458 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = icmp slt i32 %454, %459
  br i1 %460, label %461, label %486

461:                                              ; preds = %453
  %462 = load %struct.dc_state*, %struct.dc_state** %7, align 8
  %463 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %463, i32 0, i32 0
  %465 = load %struct.pipe_ctx*, %struct.pipe_ctx** %464, align 8
  %466 = load i32, i32* %3, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %465, i64 %467
  store %struct.pipe_ctx* %468, %struct.pipe_ctx** %16, align 8
  %469 = load %struct.dc*, %struct.dc** %2, align 8
  %470 = getelementptr inbounds %struct.dc, %struct.dc* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %470, i32 0, i32 0
  %472 = load i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.pipe_ctx*)** %471, align 8
  %473 = load %struct.dc*, %struct.dc** %2, align 8
  %474 = bitcast %struct.dc* %473 to %struct.dc.0*
  %475 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %476 = call i32 %472(%struct.dc.0* %474, %struct.pipe_ctx* %475)
  %477 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %478 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %477, i32 0, i32 2
  %479 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %478, i32 0, i32 0
  store %struct.timing_generator* null, %struct.timing_generator** %479, align 8
  %480 = load %struct.pipe_ctx*, %struct.pipe_ctx** %16, align 8
  %481 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %480, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %481, i32 0, i32 1
  store %struct.hubp* null, %struct.hubp** %482, align 8
  br label %483

483:                                              ; preds = %461
  %484 = load i32, i32* %3, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %3, align 4
  br label %453

486:                                              ; preds = %453
  store i32 0, i32* %3, align 4
  br label %487

487:                                              ; preds = %512, %486
  %488 = load i32, i32* %3, align 4
  %489 = load %struct.dc*, %struct.dc** %2, align 8
  %490 = getelementptr inbounds %struct.dc, %struct.dc* %489, i32 0, i32 0
  %491 = load %struct.resource_pool*, %struct.resource_pool** %490, align 8
  %492 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = icmp slt i32 %488, %493
  br i1 %494, label %495, label %515

495:                                              ; preds = %487
  %496 = load %struct.dc*, %struct.dc** %2, align 8
  %497 = getelementptr inbounds %struct.dc, %struct.dc* %496, i32 0, i32 0
  %498 = load %struct.resource_pool*, %struct.resource_pool** %497, align 8
  %499 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %498, i32 0, i32 2
  %500 = load %struct.timing_generator**, %struct.timing_generator*** %499, align 8
  %501 = load i32, i32* %3, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %500, i64 %502
  %504 = load %struct.timing_generator*, %struct.timing_generator** %503, align 8
  store %struct.timing_generator* %504, %struct.timing_generator** %17, align 8
  %505 = load %struct.timing_generator*, %struct.timing_generator** %17, align 8
  %506 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %505, i32 0, i32 0
  %507 = load %struct.TYPE_34__*, %struct.TYPE_34__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %507, i32 0, i32 0
  %509 = load i32 (%struct.timing_generator*)*, i32 (%struct.timing_generator*)** %508, align 8
  %510 = load %struct.timing_generator*, %struct.timing_generator** %17, align 8
  %511 = call i32 %509(%struct.timing_generator* %510)
  br label %512

512:                                              ; preds = %495
  %513 = load i32, i32* %3, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %3, align 4
  br label %487

515:                                              ; preds = %487
  ret void
}

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @dcn20_dccg_init(%struct.dce_hwseq*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @dcn20_init_blank(%struct.dc*, %struct.timing_generator*) #1

declare dso_local i32 @hwss1_plane_atomic_disconnect(%struct.dc*, %struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
