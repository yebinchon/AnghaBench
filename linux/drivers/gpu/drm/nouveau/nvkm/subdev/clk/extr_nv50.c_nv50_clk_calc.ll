; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_nv50_clk_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_nv50_clk_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.nvkm_cstate = type { i32* }
%struct.nv50_clk = type { %struct.TYPE_2__, %struct.nv50_clk_hwsq }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nv50_clk_hwsq = type { i32 }

@nv_clk_src_shader = common dso_local global i64 0, align 8
@nv_clk_src_core = common dso_local global i64 0, align 8
@nv_clk_src_vdec = common dso_local global i64 0, align 8
@nv_clk_src_dom6 = common dso_local global i64 0, align 8
@fifo = common dso_local global i32 0, align 4
@nv_clk_src_hclkm3d2 = common dso_local global i32 0, align 4
@nv_clk_src_href = common dso_local global i32 0, align 4
@nv_clk_src_hclk = common dso_local global i32 0, align 4
@mast = common dso_local global i32 0, align 4
@divs = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@nvpll = common dso_local global i32* null, align 8
@spll = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_clk_calc(%struct.nvkm_clk* %0, %struct.nvkm_cstate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca %struct.nvkm_cstate*, align 8
  %6 = alloca %struct.nv50_clk*, align 8
  %7 = alloca %struct.nv50_clk_hwsq*, align 8
  %8 = alloca %struct.nvkm_subdev*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
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
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store %struct.nvkm_cstate* %1, %struct.nvkm_cstate** %5, align 8
  %24 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %25 = call %struct.nv50_clk* @nv50_clk(%struct.nvkm_clk* %24)
  store %struct.nv50_clk* %25, %struct.nv50_clk** %6, align 8
  %26 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %27 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %26, i32 0, i32 1
  store %struct.nv50_clk_hwsq* %27, %struct.nv50_clk_hwsq** %7, align 8
  %28 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %29 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.nvkm_subdev* %30, %struct.nvkm_subdev** %8, align 8
  %31 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %32 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %31, i32 0, i32 0
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %32, align 8
  store %struct.nvkm_device* %33, %struct.nvkm_device** %9, align 8
  %34 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %35 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @nv_clk_src_shader, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %41 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @nv_clk_src_core, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %47 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @nv_clk_src_vdec, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.nvkm_cstate*, %struct.nvkm_cstate** %5, align 8
  %53 = getelementptr inbounds %struct.nvkm_cstate, %struct.nvkm_cstate* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @nv_clk_src_dom6, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %58 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %59 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %8, align 8
  %60 = call i32 @clk_init(%struct.nv50_clk_hwsq* %58, %struct.nvkm_subdev* %59)
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %23, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %2
  %64 = load i32, i32* %23, align 4
  store i32 %64, i32* %3, align 4
  br label %295

65:                                               ; preds = %2
  %66 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %67 = load i32, i32* @fifo, align 4
  %68 = call i32 @clk_wr32(%struct.nv50_clk_hwsq* %66, i32 %67, i32 1)
  %69 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %70 = call i32 @clk_nsec(%struct.nv50_clk_hwsq* %69, i32 8000)
  %71 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %72 = call i32 @clk_setf(%struct.nv50_clk_hwsq* %71, i32 16, i32 0)
  %73 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %74 = call i32 @clk_wait(%struct.nv50_clk_hwsq* %73, i32 0, i32 1)
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %131

77:                                               ; preds = %65
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @calc_div(i32 %78, i32 %79, i32* %20)
  store i32 %80, i32* %22, align 4
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %82 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 152
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %87 = call i32 @read_pll(%struct.nv50_clk* %86, i32 16432)
  store i32 %87, i32* %23, align 4
  br label %93

88:                                               ; preds = %77
  %89 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %90 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %89, i32 0, i32 0
  %91 = load i32, i32* @nv_clk_src_hclkm3d2, align 4
  %92 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %90, i32 %91)
  store i32 %92, i32* %23, align 4
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @calc_div(i32 %94, i32 %95, i32* %21)
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %22, align 4
  %99 = sub nsw i32 %97, %98
  %100 = call i64 @abs(i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %23, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i64 @abs(i32 %103)
  %105 = icmp sle i64 %100, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %93
  %107 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %108 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 152
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %15, align 4
  %113 = or i32 %112, 3072
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32, i32* %20, align 4
  %116 = shl i32 %115, 8
  %117 = load i32, i32* %17, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %17, align 4
  br label %126

119:                                              ; preds = %93
  %120 = load i32, i32* %15, align 4
  %121 = or i32 %120, 2048
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %21, align 4
  %123 = shl i32 %122, 8
  %124 = load i32, i32* %17, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %17, align 4
  br label %126

126:                                              ; preds = %119, %114
  %127 = load i32, i32* %14, align 4
  %128 = or i32 %127, 3072
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %16, align 4
  %130 = or i32 %129, 1792
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %126, %65
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %175

134:                                              ; preds = %131
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %137 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %136, i32 0, i32 0
  %138 = load i32, i32* @nv_clk_src_href, align 4
  %139 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %137, i32 %138)
  %140 = call i64 @clk_same(i32 %135, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load i32, i32* %15, align 4
  store i32 %143, i32* %15, align 4
  br label %170

144:                                              ; preds = %134
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %147 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %146, i32 0, i32 0
  %148 = load i32, i32* @nv_clk_src_hclk, align 4
  %149 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %147, i32 %148)
  %150 = call i64 @clk_same(i32 %145, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* %15, align 4
  %154 = or i32 %153, 134217728
  store i32 %154, i32* %15, align 4
  br label %169

155:                                              ; preds = %144
  %156 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %157 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %156, i32 0, i32 0
  %158 = load i32, i32* @nv_clk_src_hclk, align 4
  %159 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %157, i32 %158)
  %160 = mul nsw i32 %159, 3
  store i32 %160, i32* %22, align 4
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @calc_div(i32 %161, i32 %162, i32* %20)
  %164 = load i32, i32* %15, align 4
  %165 = or i32 %164, 201326592
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %20, align 4
  %167 = load i32, i32* %17, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %17, align 4
  br label %169

169:                                              ; preds = %155, %152
  br label %170

170:                                              ; preds = %169, %142
  %171 = load i32, i32* %14, align 4
  %172 = or i32 %171, 201326592
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %16, align 4
  %174 = or i32 %173, 7
  store i32 %174, i32* %16, align 4
  br label %175

175:                                              ; preds = %170, %131
  %176 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %177 = load i32, i32* @mast, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %176, i32 %177, i32 %178, i32 0)
  %180 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %181 = load i32, i32* @divs, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %17, align 4
  %184 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %186 = load i32, i32* @mast, align 4
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %185, i32 %186, i32 %187, i32 %188)
  %190 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %191 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %192, 146
  br i1 %193, label %194, label %198

194:                                              ; preds = %175
  %195 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %196 = load i32, i32* @mast, align 4
  %197 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %195, i32 %196, i32 1048752, i32 1048704)
  br label %202

198:                                              ; preds = %175
  %199 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %200 = load i32, i32* @mast, align 4
  %201 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %199, i32 %200, i32 179, i32 129)
  br label %202

202:                                              ; preds = %198, %194
  %203 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %204 = load i32, i32* %11, align 4
  %205 = call i32 @calc_pll(%struct.nv50_clk* %203, i32 16424, i32 %204, i32* %18, i32* %19, i32* %20)
  store i32 %205, i32* %22, align 4
  %206 = load i32, i32* %22, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %202
  %209 = load i32, i32* @ERANGE, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %295

211:                                              ; preds = %202
  %212 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %213 = load i32*, i32** @nvpll, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %20, align 4
  %217 = shl i32 %216, 19
  %218 = or i32 -2147483648, %217
  %219 = load i32, i32* %20, align 4
  %220 = shl i32 %219, 16
  %221 = or i32 %218, %220
  %222 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %212, i32 %215, i32 -1069612800, i32 %221)
  %223 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %224 = load i32*, i32** @nvpll, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %18, align 4
  %228 = shl i32 %227, 8
  %229 = load i32, i32* %19, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %223, i32 %226, i32 65535, i32 %230)
  %232 = load i32, i32* %20, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %20, align 4
  %234 = icmp ne i32 %232, 0
  br i1 %234, label %235, label %254

235:                                              ; preds = %211
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %11, align 4
  %238 = shl i32 %237, 1
  %239 = icmp eq i32 %236, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %235
  %241 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %242 = load i32*, i32** @spll, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %20, align 4
  %246 = shl i32 %245, 19
  %247 = load i32, i32* %20, align 4
  %248 = shl i32 %247, 16
  %249 = or i32 %246, %248
  %250 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %241, i32 %244, i32 -1069612800, i32 %249)
  %251 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %252 = load i32, i32* @mast, align 4
  %253 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %251, i32 %252, i32 1048627, i32 35)
  br label %287

254:                                              ; preds = %235, %211
  %255 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %256 = load i32, i32* %10, align 4
  %257 = call i32 @calc_pll(%struct.nv50_clk* %255, i32 16416, i32 %256, i32* %18, i32* %19, i32* %20)
  store i32 %257, i32* %22, align 4
  %258 = load i32, i32* %22, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %254
  %261 = load i32, i32* @ERANGE, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %3, align 4
  br label %295

263:                                              ; preds = %254
  %264 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %265 = load i32*, i32** @spll, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %20, align 4
  %269 = shl i32 %268, 19
  %270 = or i32 -2147483648, %269
  %271 = load i32, i32* %20, align 4
  %272 = shl i32 %271, 16
  %273 = or i32 %270, %272
  %274 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %264, i32 %267, i32 -1069612800, i32 %273)
  %275 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %276 = load i32*, i32** @spll, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %18, align 4
  %280 = shl i32 %279, 8
  %281 = load i32, i32* %19, align 4
  %282 = or i32 %280, %281
  %283 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %275, i32 %278, i32 65535, i32 %282)
  %284 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %285 = load i32, i32* @mast, align 4
  %286 = call i32 @clk_mask(%struct.nv50_clk_hwsq* %284, i32 %285, i32 1048627, i32 51)
  br label %287

287:                                              ; preds = %263, %240
  %288 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %289 = call i32 @clk_setf(%struct.nv50_clk_hwsq* %288, i32 16, i32 1)
  %290 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %291 = call i32 @clk_wait(%struct.nv50_clk_hwsq* %290, i32 0, i32 0)
  %292 = load %struct.nv50_clk_hwsq*, %struct.nv50_clk_hwsq** %7, align 8
  %293 = load i32, i32* @fifo, align 4
  %294 = call i32 @clk_wr32(%struct.nv50_clk_hwsq* %292, i32 %293, i32 0)
  store i32 0, i32* %3, align 4
  br label %295

295:                                              ; preds = %287, %260, %208, %63
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

declare dso_local %struct.nv50_clk* @nv50_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @clk_init(%struct.nv50_clk_hwsq*, %struct.nvkm_subdev*) #1

declare dso_local i32 @clk_wr32(%struct.nv50_clk_hwsq*, i32, i32) #1

declare dso_local i32 @clk_nsec(%struct.nv50_clk_hwsq*, i32) #1

declare dso_local i32 @clk_setf(%struct.nv50_clk_hwsq*, i32, i32) #1

declare dso_local i32 @clk_wait(%struct.nv50_clk_hwsq*, i32, i32) #1

declare dso_local i32 @calc_div(i32, i32, i32*) #1

declare dso_local i32 @read_pll(%struct.nv50_clk*, i32) #1

declare dso_local i32 @nvkm_clk_read(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i64 @clk_same(i32, i32) #1

declare dso_local i32 @clk_mask(%struct.nv50_clk_hwsq*, i32, i32, i32) #1

declare dso_local i32 @calc_pll(%struct.nv50_clk*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
