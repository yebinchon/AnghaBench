; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_nv50_clk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_nv50_clk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.nv50_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"unknown clock source %d %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_clk_read(%struct.nvkm_clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_clk*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.nvkm_clk*, %struct.nvkm_clk** %4, align 8
  %12 = call %struct.nv50_clk* @nv50_clk(%struct.nvkm_clk* %11)
  store %struct.nv50_clk* %12, %struct.nv50_clk** %6, align 8
  %13 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %14 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %7, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %8, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %19, i32 49216)
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %263 [
    i32 137, label %22
    i32 131, label %26
    i32 135, label %27
    i32 134, label %33
    i32 133, label %38
    i32 132, label %44
    i32 138, label %57
    i32 129, label %90
    i32 130, label %125
    i32 128, label %156
    i32 136, label %230
  ]

22:                                               ; preds = %2
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %271

26:                                               ; preds = %2
  store i32 100000, i32* %3, align 4
  br label %271

27:                                               ; preds = %2
  %28 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %29 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %28, i32 0, i32 0
  %30 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %29, i32 131)
  %31 = mul nsw i32 %30, 27778
  %32 = call i32 @div_u64(i32 %31, i32 10000)
  store i32 %32, i32* %3, align 4
  br label %271

33:                                               ; preds = %2
  %34 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %35 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %34, i32 0, i32 0
  %36 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %35, i32 135)
  %37 = mul nsw i32 %36, 3
  store i32 %37, i32* %3, align 4
  br label %271

38:                                               ; preds = %2
  %39 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %40 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %39, i32 0, i32 0
  %41 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %40, i32 135)
  %42 = mul nsw i32 %41, 3
  %43 = sdiv i32 %42, 2
  store i32 %43, i32* %3, align 4
  br label %271

44:                                               ; preds = %2
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 805306368
  switch i32 %46, label %56 [
    i32 0, label %47
    i32 268435456, label %51
    i32 536870912, label %52
    i32 805306368, label %52
  ]

47:                                               ; preds = %44
  %48 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %49 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %48, i32 0, i32 0
  %50 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %49, i32 131)
  store i32 %50, i32* %3, align 4
  br label %271

51:                                               ; preds = %44
  br label %56

52:                                               ; preds = %44, %44
  %53 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %54 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %53, i32 0, i32 0
  %55 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %54, i32 135)
  store i32 %55, i32* %3, align 4
  br label %271

56:                                               ; preds = %44, %51
  br label %264

57:                                               ; preds = %2
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 1048576
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %63 = call i32 @nvkm_rd32(%struct.nvkm_device* %62, i32 16424)
  %64 = and i32 %63, 458752
  %65 = ashr i32 %64, 16
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 3
  switch i32 %68, label %89 [
    i32 0, label %69
    i32 1, label %75
    i32 2, label %79
    i32 3, label %84
  ]

69:                                               ; preds = %66
  %70 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %71 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %70, i32 0, i32 0
  %72 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %71, i32 137)
  %73 = load i32, i32* %10, align 4
  %74 = ashr i32 %72, %73
  store i32 %74, i32* %3, align 4
  br label %271

75:                                               ; preds = %66
  %76 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %77 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %76, i32 0, i32 0
  %78 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %77, i32 136)
  store i32 %78, i32* %3, align 4
  br label %271

79:                                               ; preds = %66
  %80 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %81 = call i32 @read_pll(%struct.nv50_clk* %80, i32 16416)
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %81, %82
  store i32 %83, i32* %3, align 4
  br label %271

84:                                               ; preds = %66
  %85 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %86 = call i32 @read_pll(%struct.nv50_clk* %85, i32 16424)
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %86, %87
  store i32 %88, i32* %3, align 4
  br label %271

89:                                               ; preds = %66
  br label %264

90:                                               ; preds = %2
  %91 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %92 = call i32 @nvkm_rd32(%struct.nvkm_device* %91, i32 16416)
  %93 = and i32 %92, 458752
  %94 = ashr i32 %93, 16
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 48
  switch i32 %96, label %124 [
    i32 0, label %97
    i32 16, label %113
    i32 32, label %114
    i32 48, label %119
  ]

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 128
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %103 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %102, i32 0, i32 0
  %104 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %103, i32 132)
  %105 = load i32, i32* %10, align 4
  %106 = ashr i32 %104, %105
  store i32 %106, i32* %3, align 4
  br label %271

107:                                              ; preds = %97
  %108 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %109 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %108, i32 0, i32 0
  %110 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %109, i32 137)
  %111 = load i32, i32* %10, align 4
  %112 = ashr i32 %110, %111
  store i32 %112, i32* %3, align 4
  br label %271

113:                                              ; preds = %90
  br label %124

114:                                              ; preds = %90
  %115 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %116 = call i32 @read_pll(%struct.nv50_clk* %115, i32 16424)
  %117 = load i32, i32* %10, align 4
  %118 = ashr i32 %116, %117
  store i32 %118, i32* %3, align 4
  br label %271

119:                                              ; preds = %90
  %120 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %121 = call i32 @read_pll(%struct.nv50_clk* %120, i32 16416)
  %122 = load i32, i32* %10, align 4
  %123 = ashr i32 %121, %122
  store i32 %123, i32* %3, align 4
  br label %271

124:                                              ; preds = %90, %113
  br label %264

125:                                              ; preds = %2
  %126 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %127 = call i32 @nvkm_rd32(%struct.nvkm_device* %126, i32 16392)
  %128 = and i32 %127, 458752
  %129 = ashr i32 %128, 16
  store i32 %129, i32* %10, align 4
  %130 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %131 = call i32 @nvkm_rd32(%struct.nvkm_device* %130, i32 16392)
  %132 = and i32 %131, 512
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %125
  %135 = load i32, i32* %9, align 4
  %136 = and i32 %135, 49152
  switch i32 %136, label %149 [
    i32 0, label %137
    i32 32768, label %143
    i32 49152, label %143
  ]

137:                                              ; preds = %134
  %138 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %139 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %138, i32 0, i32 0
  %140 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %139, i32 137)
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %140, %141
  store i32 %142, i32* %3, align 4
  br label %271

143:                                              ; preds = %134, %134
  %144 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %145 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %144, i32 0, i32 0
  %146 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %145, i32 131)
  %147 = load i32, i32* %10, align 4
  %148 = ashr i32 %146, %147
  store i32 %148, i32* %3, align 4
  br label %271

149:                                              ; preds = %134
  br label %155

150:                                              ; preds = %125
  %151 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %152 = call i32 @read_pll(%struct.nv50_clk* %151, i32 16392)
  %153 = load i32, i32* %10, align 4
  %154 = ashr i32 %152, %153
  store i32 %154, i32* %3, align 4
  br label %271

155:                                              ; preds = %149
  br label %264

156:                                              ; preds = %2
  %157 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %158 = call i32 @read_div(%struct.nv50_clk* %157)
  %159 = and i32 %158, 1792
  %160 = ashr i32 %159, 8
  store i32 %160, i32* %10, align 4
  %161 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %162 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  switch i32 %163, label %229 [
    i32 132, label %164
    i32 134, label %164
    i32 146, label %164
    i32 148, label %164
    i32 150, label %164
    i32 160, label %164
    i32 152, label %206
  ]

164:                                              ; preds = %156, %156, %156, %156, %156, %156
  %165 = load i32, i32* %9, align 4
  %166 = and i32 %165, 3072
  switch i32 %166, label %205 [
    i32 0, label %167
    i32 1024, label %184
    i32 2048, label %185
    i32 3072, label %199
  ]

167:                                              ; preds = %164
  %168 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %169 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 160
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %174 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %173, i32 0, i32 0
  %175 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %174, i32 138)
  %176 = load i32, i32* %10, align 4
  %177 = ashr i32 %175, %176
  store i32 %177, i32* %3, align 4
  br label %271

178:                                              ; preds = %167
  %179 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %180 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %179, i32 0, i32 0
  %181 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %180, i32 137)
  %182 = load i32, i32* %10, align 4
  %183 = ashr i32 %181, %182
  store i32 %183, i32* %3, align 4
  br label %271

184:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %271

185:                                              ; preds = %164
  %186 = load i32, i32* %9, align 4
  %187 = and i32 %186, 16777216
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %191 = call i32 @read_pll(%struct.nv50_clk* %190, i32 16424)
  %192 = load i32, i32* %10, align 4
  %193 = ashr i32 %191, %192
  store i32 %193, i32* %3, align 4
  br label %271

194:                                              ; preds = %185
  %195 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %196 = call i32 @read_pll(%struct.nv50_clk* %195, i32 16432)
  %197 = load i32, i32* %10, align 4
  %198 = ashr i32 %196, %197
  store i32 %198, i32* %3, align 4
  br label %271

199:                                              ; preds = %164
  %200 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %201 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %200, i32 0, i32 0
  %202 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %201, i32 138)
  %203 = load i32, i32* %10, align 4
  %204 = ashr i32 %202, %203
  store i32 %204, i32* %3, align 4
  br label %271

205:                                              ; preds = %164
  br label %229

206:                                              ; preds = %156
  %207 = load i32, i32* %9, align 4
  %208 = and i32 %207, 3072
  switch i32 %208, label %228 [
    i32 0, label %209
    i32 1024, label %215
    i32 2048, label %216
    i32 3072, label %222
  ]

209:                                              ; preds = %206
  %210 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %211 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %210, i32 0, i32 0
  %212 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %211, i32 138)
  %213 = load i32, i32* %10, align 4
  %214 = ashr i32 %212, %213
  store i32 %214, i32* %3, align 4
  br label %271

215:                                              ; preds = %206
  store i32 0, i32* %3, align 4
  br label %271

216:                                              ; preds = %206
  %217 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %218 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %217, i32 0, i32 0
  %219 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %218, i32 133)
  %220 = load i32, i32* %10, align 4
  %221 = ashr i32 %219, %220
  store i32 %221, i32* %3, align 4
  br label %271

222:                                              ; preds = %206
  %223 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %224 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %223, i32 0, i32 0
  %225 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %224, i32 130)
  %226 = load i32, i32* %10, align 4
  %227 = ashr i32 %225, %226
  store i32 %227, i32* %3, align 4
  br label %271

228:                                              ; preds = %206
  br label %229

229:                                              ; preds = %156, %228, %205
  br label %264

230:                                              ; preds = %2
  %231 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %232 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  switch i32 %233, label %261 [
    i32 80, label %234
    i32 160, label %234
    i32 132, label %238
    i32 134, label %238
    i32 146, label %238
    i32 148, label %238
    i32 150, label %238
    i32 152, label %238
  ]

234:                                              ; preds = %230, %230
  %235 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %236 = call i32 @read_pll(%struct.nv50_clk* %235, i32 59408)
  %237 = ashr i32 %236, 2
  store i32 %237, i32* %3, align 4
  br label %271

238:                                              ; preds = %230, %230, %230, %230, %230, %230
  %239 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %240 = call i32 @read_div(%struct.nv50_clk* %239)
  %241 = and i32 %240, 7
  %242 = ashr i32 %241, 0
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %9, align 4
  %244 = and i32 %243, 201326592
  switch i32 %244, label %260 [
    i32 0, label %245
    i32 67108864, label %249
    i32 134217728, label %250
    i32 201326592, label %254
  ]

245:                                              ; preds = %238
  %246 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %247 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %246, i32 0, i32 0
  %248 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %247, i32 131)
  store i32 %248, i32* %3, align 4
  br label %271

249:                                              ; preds = %238
  br label %260

250:                                              ; preds = %238
  %251 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %252 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %251, i32 0, i32 0
  %253 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %252, i32 135)
  store i32 %253, i32* %3, align 4
  br label %271

254:                                              ; preds = %238
  %255 = load %struct.nv50_clk*, %struct.nv50_clk** %6, align 8
  %256 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %255, i32 0, i32 0
  %257 = call i32 @nvkm_clk_read(%struct.TYPE_2__* %256, i32 134)
  %258 = load i32, i32* %10, align 4
  %259 = ashr i32 %257, %258
  store i32 %259, i32* %3, align 4
  br label %271

260:                                              ; preds = %238, %249
  br label %262

261:                                              ; preds = %230
  br label %262

262:                                              ; preds = %261, %260
  br label %263

263:                                              ; preds = %2, %262
  br label %264

264:                                              ; preds = %263, %229, %155, %124, %89, %56
  %265 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @nvkm_debug(%struct.nvkm_subdev* %265, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %266, i32 %267)
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %264, %254, %250, %245, %234, %222, %216, %215, %209, %199, %194, %189, %184, %178, %172, %150, %143, %137, %119, %114, %107, %101, %84, %79, %75, %69, %52, %47, %38, %33, %27, %26, %22
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local %struct.nv50_clk* @nv50_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @nvkm_clk_read(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @read_pll(%struct.nv50_clk*, i32) #1

declare dso_local i32 @read_div(%struct.nv50_clk*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
