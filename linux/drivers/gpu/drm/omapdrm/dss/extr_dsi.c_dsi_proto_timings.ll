; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_proto_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_proto_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, i64, %struct.TYPE_2__, i32, %struct.videomode }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.videomode = type { i32, i32 }

@DSI_DSIPHY_CFG0 = common dso_local global i32 0, align 4
@DSI_DSIPHY_CFG1 = common dso_local global i32 0, align 4
@DSI_DSIPHY_CFG2 = common dso_local global i32 0, align 4
@DSI_CLK_TIMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ddr_clk_pre %u, ddr_clk_post %u\0A\00", align 1
@DSI_VM_TIMING7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"enter_hs_mode_lat %u, exit_hs_mode_lat %u\0A\00", align 1
@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@OMAP_DSS_DSI_PULSE_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"HBP: %d, HFP: %d, HSA: %d, TL: %d TXBYTECLKHS\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"VBP: %d, VFP: %d, VSA: %d, VACT: %d lines\0A\00", align 1
@DSI_VM_TIMING1 = common dso_local global i32 0, align 4
@DSI_VM_TIMING2 = common dso_local global i32 0, align 4
@DSI_VM_TIMING3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_data*)* @dsi_proto_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_proto_timings(%struct.dsi_data* %0) #0 {
  %2 = alloca %struct.dsi_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.videomode*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %2, align 8
  %34 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %35 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %19, align 4
  %38 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %39 = load i32, i32* @DSI_DSIPHY_CFG0, align 4
  %40 = call i32 @dsi_read_reg(%struct.dsi_data* %38, i32 %39)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = call i32 @FLD_GET(i32 %41, i32 31, i32 24)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %20, align 4
  %44 = call i32 @FLD_GET(i32 %43, i32 23, i32 16)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @FLD_GET(i32 %48, i32 15, i32 8)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @FLD_GET(i32 %50, i32 7, i32 0)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %53 = load i32, i32* @DSI_DSIPHY_CFG1, align 4
  %54 = call i32 @dsi_read_reg(%struct.dsi_data* %52, i32 %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = call i32 @FLD_GET(i32 %55, i32 20, i32 16)
  %57 = mul nsw i32 %56, 2
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %20, align 4
  %59 = call i32 @FLD_GET(i32 %58, i32 15, i32 8)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %20, align 4
  %61 = call i32 @FLD_GET(i32 %60, i32 7, i32 0)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %63 = load i32, i32* @DSI_DSIPHY_CFG2, align 4
  %64 = call i32 @dsi_read_reg(%struct.dsi_data* %62, i32 %63)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = call i32 @FLD_GET(i32 %65, i32 7, i32 0)
  store i32 %66, i32* %5, align 4
  store i32 20, i32* %7, align 4
  %67 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %68 = call i32 @ns2ddr(%struct.dsi_data* %67, i32 60)
  %69 = add nsw i32 %68, 26
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %19, align 4
  %71 = call i32 @DIV_ROUND_UP(i32 4, i32 %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %72, %73
  %75 = load i32, i32* %4, align 4
  %76 = add i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %76, %77
  %79 = call i32 @DIV_ROUND_UP(i32 %78, i32 4)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add i32 %80, %81
  %83 = call i32 @DIV_ROUND_UP(i32 %82, i32 4)
  %84 = load i32, i32* %18, align 4
  %85 = add i32 %83, %84
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %1
  %89 = load i32, i32* %14, align 4
  %90 = icmp ugt i32 %89, 255
  br label %91

91:                                               ; preds = %88, %1
  %92 = phi i1 [ true, %1 ], [ %90, %88 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %15, align 4
  %99 = icmp ugt i32 %98, 255
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi i1 [ true, %91 ], [ %99, %97 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @BUG_ON(i32 %102)
  %104 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %105 = load i32, i32* @DSI_CLK_TIMING, align 4
  %106 = call i32 @dsi_read_reg(%struct.dsi_data* %104, i32 %105)
  store i32 %106, i32* %20, align 4
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @FLD_MOD(i32 %107, i32 %108, i32 15, i32 8)
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @FLD_MOD(i32 %110, i32 %111, i32 7, i32 0)
  store i32 %112, i32* %20, align 4
  %113 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %114 = load i32, i32* @DSI_CLK_TIMING, align 4
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @dsi_write_reg(%struct.dsi_data* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @DIV_ROUND_UP(i32 %120, i32 4)
  %122 = add nsw i32 1, %121
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @DIV_ROUND_UP(i32 %123, i32 4)
  %125 = add nsw i32 %122, %124
  %126 = load i32, i32* %11, align 4
  %127 = add i32 %126, 3
  %128 = call i32 @DIV_ROUND_UP(i32 %127, i32 4)
  %129 = add nsw i32 %125, %128
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %13, align 4
  %132 = add i32 %130, %131
  %133 = call i32 @DIV_ROUND_UP(i32 %132, i32 4)
  %134 = add nsw i32 %133, 1
  %135 = load i32, i32* %18, align 4
  %136 = add i32 %134, %135
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @FLD_VAL(i32 %137, i32 31, i32 16)
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @FLD_VAL(i32 %139, i32 15, i32 0)
  %141 = or i32 %138, %140
  store i32 %141, i32* %20, align 4
  %142 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %143 = load i32, i32* @DSI_VM_TIMING7, align 4
  %144 = load i32, i32* %20, align 4
  %145 = call i32 @dsi_write_reg(%struct.dsi_data* %142, i32 %143, i32 %144)
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %17, align 4
  %148 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %150 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %314

154:                                              ; preds = %100
  %155 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %156 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %21, align 4
  %159 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %160 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %22, align 4
  %163 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %164 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %23, align 4
  %167 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %168 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %24, align 4
  %171 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %172 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %25, align 4
  %175 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %176 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %26, align 4
  %179 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %180 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %27, align 4
  %183 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %184 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %183, i32 0, i32 4
  store %struct.videomode* %184, %struct.videomode** %29, align 8
  %185 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %186 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @dsi_get_pixel_size(i32 %187)
  store i32 %188, i32* %30, align 4
  %189 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %190 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 7
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @OMAP_DSS_DSI_PULSE_MODE, align 8
  %194 = icmp eq i64 %192, %193
  %195 = zext i1 %194 to i32
  store i32 %195, i32* %28, align 4
  %196 = load i32, i32* %28, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %154
  %199 = load i32, i32* %21, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load i32, i32* %19, align 4
  %203 = icmp eq i32 %202, 3
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %208

205:                                              ; preds = %201, %198
  %206 = load i32, i32* %19, align 4
  %207 = call i32 @DIV_ROUND_UP(i32 4, i32 %206)
  br label %208

208:                                              ; preds = %205, %204
  %209 = phi i32 [ 1, %204 ], [ %207, %205 ]
  br label %211

210:                                              ; preds = %154
  br label %211

211:                                              ; preds = %210, %208
  %212 = phi i32 [ %209, %208 ], [ 0, %210 ]
  store i32 %212, i32* %32, align 4
  %213 = load %struct.videomode*, %struct.videomode** %29, align 8
  %214 = getelementptr inbounds %struct.videomode, %struct.videomode* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %30, align 4
  %217 = mul nsw i32 %215, %216
  %218 = call i32 @DIV_ROUND_UP(i32 %217, i32 8)
  store i32 %218, i32* %33, align 4
  %219 = load i32, i32* %19, align 4
  %220 = call i32 @DIV_ROUND_UP(i32 4, i32 %219)
  %221 = load i32, i32* %28, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %211
  %224 = load i32, i32* %21, align 4
  br label %226

225:                                              ; preds = %211
  br label %226

226:                                              ; preds = %225, %223
  %227 = phi i32 [ %224, %223 ], [ 0, %225 ]
  %228 = add nsw i32 %220, %227
  %229 = load i32, i32* %32, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* %22, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32, i32* %33, align 4
  %234 = add nsw i32 %233, 6
  %235 = load i32, i32* %19, align 4
  %236 = call i32 @DIV_ROUND_UP(i32 %234, i32 %235)
  %237 = add nsw i32 %232, %236
  %238 = load i32, i32* %23, align 4
  %239 = add nsw i32 %237, %238
  store i32 %239, i32* %31, align 4
  %240 = load i32, i32* %23, align 4
  %241 = load i32, i32* %22, align 4
  %242 = load i32, i32* %28, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %226
  %245 = load i32, i32* %21, align 4
  br label %247

246:                                              ; preds = %226
  br label %247

247:                                              ; preds = %246, %244
  %248 = phi i32 [ %245, %244 ], [ 0, %246 ]
  %249 = load i32, i32* %31, align 4
  %250 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %240, i32 %241, i32 %248, i32 %249)
  %251 = load i32, i32* %26, align 4
  %252 = load i32, i32* %25, align 4
  %253 = load i32, i32* %24, align 4
  %254 = load %struct.videomode*, %struct.videomode** %29, align 8
  %255 = getelementptr inbounds %struct.videomode, %struct.videomode* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i8*, i32, i32, ...) @DSSDBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %251, i32 %252, i32 %253, i32 %256)
  %258 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %259 = load i32, i32* @DSI_VM_TIMING1, align 4
  %260 = call i32 @dsi_read_reg(%struct.dsi_data* %258, i32 %259)
  store i32 %260, i32* %20, align 4
  %261 = load i32, i32* %20, align 4
  %262 = load i32, i32* %23, align 4
  %263 = call i32 @FLD_MOD(i32 %261, i32 %262, i32 11, i32 0)
  store i32 %263, i32* %20, align 4
  %264 = load i32, i32* %20, align 4
  %265 = load i32, i32* %22, align 4
  %266 = call i32 @FLD_MOD(i32 %264, i32 %265, i32 23, i32 12)
  store i32 %266, i32* %20, align 4
  %267 = load i32, i32* %20, align 4
  %268 = load i32, i32* %28, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %247
  %271 = load i32, i32* %21, align 4
  br label %273

272:                                              ; preds = %247
  br label %273

273:                                              ; preds = %272, %270
  %274 = phi i32 [ %271, %270 ], [ 0, %272 ]
  %275 = call i32 @FLD_MOD(i32 %267, i32 %274, i32 31, i32 24)
  store i32 %275, i32* %20, align 4
  %276 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %277 = load i32, i32* @DSI_VM_TIMING1, align 4
  %278 = load i32, i32* %20, align 4
  %279 = call i32 @dsi_write_reg(%struct.dsi_data* %276, i32 %277, i32 %278)
  %280 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %281 = load i32, i32* @DSI_VM_TIMING2, align 4
  %282 = call i32 @dsi_read_reg(%struct.dsi_data* %280, i32 %281)
  store i32 %282, i32* %20, align 4
  %283 = load i32, i32* %20, align 4
  %284 = load i32, i32* %26, align 4
  %285 = call i32 @FLD_MOD(i32 %283, i32 %284, i32 7, i32 0)
  store i32 %285, i32* %20, align 4
  %286 = load i32, i32* %20, align 4
  %287 = load i32, i32* %25, align 4
  %288 = call i32 @FLD_MOD(i32 %286, i32 %287, i32 15, i32 8)
  store i32 %288, i32* %20, align 4
  %289 = load i32, i32* %20, align 4
  %290 = load i32, i32* %24, align 4
  %291 = call i32 @FLD_MOD(i32 %289, i32 %290, i32 23, i32 16)
  store i32 %291, i32* %20, align 4
  %292 = load i32, i32* %20, align 4
  %293 = load i32, i32* %27, align 4
  %294 = call i32 @FLD_MOD(i32 %292, i32 %293, i32 27, i32 24)
  store i32 %294, i32* %20, align 4
  %295 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %296 = load i32, i32* @DSI_VM_TIMING2, align 4
  %297 = load i32, i32* %20, align 4
  %298 = call i32 @dsi_write_reg(%struct.dsi_data* %295, i32 %296, i32 %297)
  %299 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %300 = load i32, i32* @DSI_VM_TIMING3, align 4
  %301 = call i32 @dsi_read_reg(%struct.dsi_data* %299, i32 %300)
  store i32 %301, i32* %20, align 4
  %302 = load i32, i32* %20, align 4
  %303 = load %struct.videomode*, %struct.videomode** %29, align 8
  %304 = getelementptr inbounds %struct.videomode, %struct.videomode* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @FLD_MOD(i32 %302, i32 %305, i32 14, i32 0)
  store i32 %306, i32* %20, align 4
  %307 = load i32, i32* %20, align 4
  %308 = load i32, i32* %31, align 4
  %309 = call i32 @FLD_MOD(i32 %307, i32 %308, i32 31, i32 16)
  store i32 %309, i32* %20, align 4
  %310 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %311 = load i32, i32* @DSI_VM_TIMING3, align 4
  %312 = load i32, i32* %20, align 4
  %313 = call i32 @dsi_write_reg(%struct.dsi_data* %310, i32 %311, i32 %312)
  br label %314

314:                                              ; preds = %273, %100
  ret void
}

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @ns2ddr(%struct.dsi_data*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, ...) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
