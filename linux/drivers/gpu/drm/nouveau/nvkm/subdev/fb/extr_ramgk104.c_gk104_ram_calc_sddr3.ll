; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_calc_sddr3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_calc_sddr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_ram = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.gk104_ramfuc }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__*, %struct.nvkm_ram_data* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nvkm_ram_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.gk104_ramfuc = type { i32*, i32* }

@NVKM_ENGINE_DISP = common dso_local global i32 0, align 4
@gpio2E = common dso_local global i32 0, align 4
@gpiotrig = common dso_local global i32 0, align 4
@gpioMV = common dso_local global i32 0, align 4
@mr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk104_ram*, i32)* @gk104_ram_calc_sddr3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_ram_calc_sddr3(%struct.gk104_ram* %0, i32 %1) #0 {
  %3 = alloca %struct.gk104_ram*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gk104_ramfuc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_ram_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gk104_ram* %0, %struct.gk104_ram** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %18 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %17, i32 0, i32 6
  store %struct.gk104_ramfuc* %18, %struct.gk104_ramfuc** %5, align 8
  %19 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %20 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 %21, 16
  %23 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %24 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = or i32 %22, %26
  %28 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %29 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %27, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %33 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 16
  store i32 %35, i32* %7, align 4
  %36 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %37 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %40 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %41, align 8
  store %struct.nvkm_ram_data* %42, %struct.nvkm_ram_data** %9, align 8
  %43 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %44 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 22
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %51 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 21
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %58 = call i32 @ram_mask(%struct.gk104_ramfuc* %57, i32 1112072, i32 1073741824, i32 1073741824)
  %59 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %60 = call i32 @ram_block(%struct.gk104_ramfuc* %59)
  %61 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %62 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NVKM_ENGINE_DISP, align 4
  %69 = call i64 @nvkm_device_engine(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %2
  %72 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %73 = call i32 @ram_wr32(%struct.gk104_ramfuc* %72, i32 6471680, i32 252641280)
  br label %74

74:                                               ; preds = %71, %2
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %79 = load i32, i32* @gpio2E, align 4
  %80 = call i64 @ram_have(%struct.gk104_ramfuc* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %84 = load i32, i32* @gpio2E, align 4
  %85 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %86 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ram_mask(%struct.gk104_ramfuc* %83, i32 %84, i32 12288, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %93 = load i32, i32* @gpio2E, align 4
  %94 = call i32 @ram_rd32(%struct.gk104_ramfuc* %92, i32 %93)
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %82
  %97 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %98 = load i32, i32* @gpiotrig, align 4
  %99 = call i32 @ram_wr32(%struct.gk104_ramfuc* %97, i32 %98, i32 1)
  %100 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %101 = call i32 @ram_nsec(%struct.gk104_ramfuc* %100, i32 20000)
  br label %102

102:                                              ; preds = %96, %82
  br label %103

103:                                              ; preds = %102, %77, %74
  %104 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %105 = call i32 @ram_mask(%struct.gk104_ramfuc* %104, i32 1110528, i32 2048, i32 0)
  %106 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %107 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 13
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %113 = call i32 @ram_mask(%struct.gk104_ramfuc* %112, i32 1112072, i32 67108864, i32 67108864)
  br label %114

114:                                              ; preds = %111, %103
  %115 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %116 = call i32 @ram_wr32(%struct.gk104_ramfuc* %115, i32 1110804, i32 1)
  %117 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %118 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 10
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %124 = call i32 @nvkm_sddr3_dll_disable(%struct.gk104_ramfuc* %123)
  br label %125

125:                                              ; preds = %122, %114
  %126 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %127 = call i32 @ram_wr32(%struct.gk104_ramfuc* %126, i32 1110544, i32 0)
  %128 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %129 = call i32 @ram_wr32(%struct.gk104_ramfuc* %128, i32 1110800, i32 1)
  %130 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %131 = call i32 @ram_mask(%struct.gk104_ramfuc* %130, i32 1110528, i32 -2147483648, i32 -2147483648)
  %132 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %133 = call i32 @ram_wr32(%struct.gk104_ramfuc* %132, i32 1110800, i32 1)
  %134 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %135 = call i32 @ram_mask(%struct.gk104_ramfuc* %134, i32 1110528, i32 -2147483648, i32 0)
  %136 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %137 = call i32 @ram_nsec(%struct.gk104_ramfuc* %136, i32 1000)
  %138 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %139 = call i32 @ram_wr32(%struct.gk104_ramfuc* %138, i32 1110160, i32 96)
  %140 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %141 = call i32 @ram_wr32(%struct.gk104_ramfuc* %140, i32 1110160, i32 -1073741698)
  store i32 65536, i32* %12, align 4
  store i32 65536, i32* %13, align 4
  %142 = load i32, i32* %12, align 4
  %143 = or i32 %142, -2146957344
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = or i32 %144, -2146957344
  store i32 %145, i32* %13, align 4
  %146 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %147 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %162 [
    i32 3, label %150
    i32 2, label %153
    i32 1, label %156
    i32 0, label %159
  ]

150:                                              ; preds = %125
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %151, -65
  store i32 %152, i32* %13, align 4
  br label %162

153:                                              ; preds = %125
  %154 = load i32, i32* %13, align 4
  %155 = and i32 %154, -257
  store i32 %155, i32* %13, align 4
  br label %162

156:                                              ; preds = %125
  %157 = load i32, i32* %13, align 4
  %158 = and i32 %157, 2147483647
  store i32 %158, i32* %13, align 4
  br label %162

159:                                              ; preds = %125
  %160 = load i32, i32* %13, align 4
  %161 = and i32 %160, -1025
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %125, %159, %156, %153, %150
  %163 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %164 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %179 [
    i32 3, label %167
    i32 2, label %170
    i32 1, label %173
    i32 0, label %176
  ]

167:                                              ; preds = %162
  %168 = load i32, i32* %13, align 4
  %169 = and i32 %168, -33
  store i32 %169, i32* %13, align 4
  br label %179

170:                                              ; preds = %162
  %171 = load i32, i32* %13, align 4
  %172 = and i32 %171, -129
  store i32 %172, i32* %13, align 4
  br label %179

173:                                              ; preds = %162
  %174 = load i32, i32* %13, align 4
  %175 = and i32 %174, -524289
  store i32 %175, i32* %13, align 4
  br label %179

176:                                              ; preds = %162
  %177 = load i32, i32* %13, align 4
  %178 = and i32 %177, -513
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %162, %176, %173, %170, %167
  %180 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %181 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 19
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i32, i32* %12, align 4
  %187 = or i32 %186, 50331648
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %185, %179
  %189 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %190 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 18
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i32, i32* %12, align 4
  %196 = or i32 %195, 8192
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %194, %188
  %198 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %199 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 17
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i32, i32* %12, align 4
  %205 = or i32 %204, 16384
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %203, %197
  %207 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %208 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 16
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load i32, i32* %12, align 4
  %214 = or i32 %213, 3
  store i32 %214, i32* %12, align 4
  br label %218

215:                                              ; preds = %206
  %216 = load i32, i32* %12, align 4
  %217 = or i32 %216, 335544320
  store i32 %217, i32* %12, align 4
  br label %218

218:                                              ; preds = %215, %212
  %219 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %13, align 4
  %222 = call i32 @ram_mask(%struct.gk104_ramfuc* %219, i32 1112100, i32 %220, i32 %221)
  %223 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %224 = call i32 @ram_mask(%struct.gk104_ramfuc* %223, i32 1253440, i32 65536, i32 0)
  %225 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %226 = call i32 @ram_mask(%struct.gk104_ramfuc* %225, i32 1274868, i32 0, i32 65552)
  %227 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %228 = call i32 @ram_rd32(%struct.gk104_ramfuc* %227, i32 1274860)
  %229 = and i32 %228, -196609
  store i32 %229, i32* %13, align 4
  %230 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %231 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = shl i32 %233, 16
  %235 = load i32, i32* %13, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %13, align 4
  %237 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %238 = load i32, i32* %13, align 4
  %239 = call i32 @ram_wr32(%struct.gk104_ramfuc* %237, i32 1274860, i32 %238)
  %240 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %241 = call i32 @ram_mask(%struct.gk104_ramfuc* %240, i32 1274868, i32 3, i32 0)
  %242 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %243 = call i32 @ram_mask(%struct.gk104_ramfuc* %242, i32 1274868, i32 16, i32 0)
  %244 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %245 = call i32 @ram_rd32(%struct.gk104_ramfuc* %244, i32 1253412)
  %246 = load i32, i32* %6, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %254, label %248

248:                                              ; preds = %218
  %249 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %250 = call i32 @ram_rd32(%struct.gk104_ramfuc* %249, i32 1253428)
  %251 = and i32 %250, 65535
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %278

254:                                              ; preds = %248, %218
  %255 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %256 = call i32 @ram_mask(%struct.gk104_ramfuc* %255, i32 1253376, i32 1, i32 0)
  %257 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %258 = call i32 @ram_mask(%struct.gk104_ramfuc* %257, i32 1253408, i32 1, i32 0)
  %259 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %260 = call i32 @ram_wr32(%struct.gk104_ramfuc* %259, i32 1274656, i32 0)
  %261 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @ram_mask(%struct.gk104_ramfuc* %261, i32 1253424, i32 -65536, i32 %262)
  %264 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %265 = load i32, i32* %8, align 4
  %266 = call i32 @ram_mask(%struct.gk104_ramfuc* %264, i32 1253428, i32 65535, i32 %265)
  %267 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %268 = load i32, i32* %6, align 4
  %269 = call i32 @ram_wr32(%struct.gk104_ramfuc* %267, i32 1253412, i32 %268)
  %270 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %271 = call i32 @ram_mask(%struct.gk104_ramfuc* %270, i32 1253416, i32 524288, i32 524288)
  %272 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %273 = call i32 @ram_mask(%struct.gk104_ramfuc* %272, i32 1253408, i32 1, i32 1)
  %274 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %275 = call i32 @ram_wait(%struct.gk104_ramfuc* %274, i32 1274768, i32 131072, i32 131072, i32 64000)
  %276 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %277 = call i32 @ram_mask(%struct.gk104_ramfuc* %276, i32 1253416, i32 524288, i32 0)
  br label %278

278:                                              ; preds = %254, %248
  %279 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %280 = call i32 @ram_mask(%struct.gk104_ramfuc* %279, i32 1274868, i32 16, i32 16)
  %281 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %282 = call i32 @ram_mask(%struct.gk104_ramfuc* %281, i32 1274868, i32 3, i32 1)
  %283 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %284 = call i32 @ram_mask(%struct.gk104_ramfuc* %283, i32 1274868, i32 65536, i32 0)
  %285 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %286 = load i32, i32* @gpioMV, align 4
  %287 = call i64 @ram_have(%struct.gk104_ramfuc* %285, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %312

289:                                              ; preds = %278
  %290 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %291 = load i32, i32* @gpioMV, align 4
  %292 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %293 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @ram_mask(%struct.gk104_ramfuc* %290, i32 %291, i32 12288, i32 %298)
  store i32 %299, i32* %15, align 4
  %300 = load i32, i32* %15, align 4
  %301 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %302 = load i32, i32* @gpioMV, align 4
  %303 = call i32 @ram_rd32(%struct.gk104_ramfuc* %301, i32 %302)
  %304 = icmp ne i32 %300, %303
  br i1 %304, label %305, label %311

305:                                              ; preds = %289
  %306 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %307 = load i32, i32* @gpiotrig, align 4
  %308 = call i32 @ram_wr32(%struct.gk104_ramfuc* %306, i32 %307, i32 1)
  %309 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %310 = call i32 @ram_nsec(%struct.gk104_ramfuc* %309, i32 64000)
  br label %311

311:                                              ; preds = %305, %289
  br label %312

312:                                              ; preds = %311, %278
  %313 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %314 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 18
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %312
  %319 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %320 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 17
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %318, %312
  %325 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %326 = call i32 @ram_mask(%struct.gk104_ramfuc* %325, i32 1253440, i32 65536, i32 65536)
  %327 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %328 = call i32 @ram_nsec(%struct.gk104_ramfuc* %327, i32 20000)
  br label %329

329:                                              ; preds = %324, %318
  %330 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %331 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = icmp ne i32 %332, 2
  br i1 %333, label %334, label %344

334:                                              ; preds = %329
  %335 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %336 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 20
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %334
  %341 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %342 = call i32 @ram_mask(%struct.gk104_ramfuc* %341, i32 1111664, i32 -2147483648, i32 -2147483648)
  br label %343

343:                                              ; preds = %340, %334
  br label %344

344:                                              ; preds = %343, %329
  %345 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %346 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %347 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = mul nsw i32 17, %349
  %351 = call i32 @ram_wr32(%struct.gk104_ramfuc* %345, i32 1111644, i32 %350)
  %352 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %353 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %354 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = mul nsw i32 16843009, %356
  %358 = call i32 @ram_wr32(%struct.gk104_ramfuc* %352, i32 1111736, i32 %357)
  %359 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %360 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %361 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  %364 = mul nsw i32 16843009, %363
  %365 = call i32 @ram_wr32(%struct.gk104_ramfuc* %359, i32 1111740, i32 %364)
  store i32 65536, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %366 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %367 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 19
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %374, label %371

371:                                              ; preds = %344
  %372 = load i32, i32* %13, align 4
  %373 = or i32 %372, 50331648
  store i32 %373, i32* %13, align 4
  br label %374

374:                                              ; preds = %371, %344
  %375 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %376 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 18
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %374
  %381 = load i32, i32* %13, align 4
  %382 = or i32 %381, 8192
  store i32 %382, i32* %13, align 4
  br label %383

383:                                              ; preds = %380, %374
  %384 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %385 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 17
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %392, label %389

389:                                              ; preds = %383
  %390 = load i32, i32* %13, align 4
  %391 = or i32 %390, 16384
  store i32 %391, i32* %13, align 4
  br label %392

392:                                              ; preds = %389, %383
  %393 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %394 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i32 0, i32 16
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %401, label %398

398:                                              ; preds = %392
  %399 = load i32, i32* %13, align 4
  %400 = or i32 %399, 3
  store i32 %400, i32* %13, align 4
  br label %404

401:                                              ; preds = %392
  %402 = load i32, i32* %13, align 4
  %403 = or i32 %402, 335544320
  store i32 %403, i32* %13, align 4
  br label %404

404:                                              ; preds = %401, %398
  %405 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %406 = load i32, i32* %12, align 4
  %407 = load i32, i32* %13, align 4
  %408 = call i32 @ram_mask(%struct.gk104_ramfuc* %405, i32 1112100, i32 %406, i32 %407)
  %409 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %410 = call i32 @ram_nsec(%struct.gk104_ramfuc* %409, i32 1000)
  %411 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %412 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 15
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %404
  store i32 1048576, i32* %13, align 4
  br label %418

417:                                              ; preds = %404
  store i32 0, i32* %13, align 4
  br label %418

418:                                              ; preds = %417, %416
  %419 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %420 = load i32, i32* %13, align 4
  %421 = call i32 @ram_mask(%struct.gk104_ramfuc* %419, i32 1112108, i32 1048576, i32 %420)
  %422 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %423 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %424 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 4
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 10
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @ram_mask(%struct.gk104_ramfuc* %422, i32 1110600, i32 -1, i32 %428)
  %430 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %431 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %432 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 4
  %434 = load i32*, i32** %433, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 0
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @ram_mask(%struct.gk104_ramfuc* %430, i32 1110672, i32 -1, i32 %436)
  %438 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %439 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %440 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i32 0, i32 4
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 1
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @ram_mask(%struct.gk104_ramfuc* %438, i32 1110676, i32 -1, i32 %444)
  %446 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %447 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %448 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 4
  %450 = load i32*, i32** %449, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 2
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @ram_mask(%struct.gk104_ramfuc* %446, i32 1110680, i32 -1, i32 %452)
  %454 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %455 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %456 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 4
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 3
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @ram_mask(%struct.gk104_ramfuc* %454, i32 1110684, i32 -1, i32 %460)
  %462 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %463 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %464 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 4
  %466 = load i32*, i32** %465, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 4
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @ram_mask(%struct.gk104_ramfuc* %462, i32 1110688, i32 -1, i32 %468)
  %470 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %471 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %472 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 4
  %474 = load i32*, i32** %473, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 5
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @ram_mask(%struct.gk104_ramfuc* %470, i32 1110692, i32 -1, i32 %476)
  %478 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %479 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %480 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %480, i32 0, i32 4
  %482 = load i32*, i32** %481, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 6
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @ram_mask(%struct.gk104_ramfuc* %478, i32 1110696, i32 -1, i32 %484)
  %486 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %487 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %488 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 4
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 7
  %492 = load i32, i32* %491, align 4
  %493 = call i32 @ram_mask(%struct.gk104_ramfuc* %486, i32 1110700, i32 -1, i32 %492)
  %494 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %495 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %496 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %496, i32 0, i32 4
  %498 = load i32*, i32** %497, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 8
  %500 = load i32, i32* %499, align 4
  %501 = call i32 @ram_mask(%struct.gk104_ramfuc* %494, i32 1110732, i32 -1, i32 %500)
  %502 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %503 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %504 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 4
  %506 = load i32*, i32** %505, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 9
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @ram_mask(%struct.gk104_ramfuc* %502, i32 1110760, i32 -1, i32 %508)
  store i32 871366656, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %510 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %511 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 14
  %513 = load i32, i32* %512, align 8
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %518, label %515

515:                                              ; preds = %418
  %516 = load i32, i32* %13, align 4
  %517 = or i32 %516, 538968064
  store i32 %517, i32* %13, align 4
  br label %518

518:                                              ; preds = %515, %418
  %519 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %520 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %520, i32 0, i32 11
  %522 = load i32, i32* %521, align 8
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %527, label %524

524:                                              ; preds = %518
  %525 = load i32, i32* %13, align 4
  %526 = or i32 %525, 310378496
  store i32 %526, i32* %13, align 4
  br label %527

527:                                              ; preds = %524, %518
  %528 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %529 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %529, i32 0, i32 13
  %531 = load i64, i64* %530, align 8
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %557

533:                                              ; preds = %527
  %534 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %535 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %535, i32 0, i32 12
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %554

539:                                              ; preds = %533
  %540 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %541 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %541, i32 0, i32 11
  %543 = load i32, i32* %542, align 8
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %548, label %545

545:                                              ; preds = %539
  %546 = load i32, i32* %12, align 4
  %547 = or i32 %546, 32
  store i32 %547, i32* %12, align 4
  br label %551

548:                                              ; preds = %539
  %549 = load i32, i32* %13, align 4
  %550 = or i32 %549, 32
  store i32 %550, i32* %13, align 4
  br label %551

551:                                              ; preds = %548, %545
  %552 = load i32, i32* %12, align 4
  %553 = or i32 %552, 134217732
  store i32 %553, i32* %12, align 4
  br label %554

554:                                              ; preds = %551, %533
  %555 = load i32, i32* %13, align 4
  %556 = or i32 %555, 67108864
  store i32 %556, i32* %13, align 4
  br label %562

557:                                              ; preds = %527
  %558 = load i32, i32* %12, align 4
  %559 = or i32 %558, 1140850720
  store i32 %559, i32* %12, align 4
  %560 = load i32, i32* %13, align 4
  %561 = or i32 %560, 134217732
  store i32 %561, i32* %13, align 4
  br label %562

562:                                              ; preds = %557, %554
  %563 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %564 = load i32, i32* %12, align 4
  %565 = load i32, i32* %13, align 4
  %566 = call i32 @ram_mask(%struct.gk104_ramfuc* %563, i32 1112072, i32 %564, i32 %565)
  %567 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %568 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %569 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %569, i32 0, i32 5
  %571 = load i32, i32* %570, align 8
  %572 = mul nsw i32 286331153, %571
  %573 = call i32 @ram_wr32(%struct.gk104_ramfuc* %567, i32 1112176, i32 %572)
  %574 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %575 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %576 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %576, i32 0, i32 6
  %578 = load i32, i32* %577, align 4
  %579 = shl i32 %578, 4
  %580 = call i32 @ram_mask(%struct.gk104_ramfuc* %574, i32 1110608, i32 1008, i32 %579)
  %581 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %582 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %581, i32 0, i32 0
  %583 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %582, i32 0, i32 4
  %584 = load i32*, i32** %583, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 10
  %586 = load i32, i32* %585, align 4
  %587 = and i32 %586, 2130706432
  %588 = ashr i32 %587, 24
  store i32 %588, i32* %13, align 4
  %589 = load i32, i32* %13, align 4
  %590 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %591 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %591, i32 0, i32 7
  %593 = load i32, i32* %592, align 8
  %594 = icmp slt i32 %589, %593
  br i1 %594, label %595, label %600

595:                                              ; preds = %562
  %596 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %597 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %596, i32 0, i32 0
  %598 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %597, i32 0, i32 7
  %599 = load i32, i32* %598, align 8
  store i32 %599, i32* %13, align 4
  br label %600

600:                                              ; preds = %595, %562
  %601 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %602 = load i32, i32* %13, align 4
  %603 = shl i32 %602, 24
  %604 = call i32 @ram_mask(%struct.gk104_ramfuc* %601, i32 1110604, i32 2130706432, i32 %603)
  %605 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %606 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %607 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %607, i32 0, i32 8
  %609 = load i32, i32* %608, align 4
  %610 = shl i32 %609, 16
  %611 = call i32 @ram_mask(%struct.gk104_ramfuc* %605, i32 1110564, i32 2031616, i32 %610)
  %612 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %613 = call i32 @ram_wr32(%struct.gk104_ramfuc* %612, i32 1110160, i32 1073741951)
  %614 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %615 = call i32 @ram_nsec(%struct.gk104_ramfuc* %614, i32 1000)
  %616 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %617 = call i32 @ram_wr32(%struct.gk104_ramfuc* %616, i32 1110804, i32 1)
  %618 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %619 = call i32 @ram_wr32(%struct.gk104_ramfuc* %618, i32 1110800, i32 1)
  %620 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %621 = call i32 @ram_wr32(%struct.gk104_ramfuc* %620, i32 1110544, i32 -2147483648)
  %622 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %623 = call i32 @ram_nsec(%struct.gk104_ramfuc* %622, i32 1000)
  %624 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %625 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %624, i32 0, i32 0
  %626 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %625, i32 0, i32 10
  %627 = load i64, i64* %626, align 8
  %628 = icmp ne i64 %627, 0
  br i1 %628, label %637, label %629

629:                                              ; preds = %600
  %630 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %631 = load i32*, i32** @mr, align 8
  %632 = getelementptr inbounds i32, i32* %631, i64 1
  %633 = load i32, i32* %632, align 4
  %634 = call i32 @ram_mask(%struct.gk104_ramfuc* %630, i32 %633, i32 1, i32 0)
  %635 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %636 = call i32 @nvkm_sddr3_dll_reset(%struct.gk104_ramfuc* %635)
  br label %637

637:                                              ; preds = %629, %600
  %638 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %639 = load i32*, i32** @mr, align 8
  %640 = getelementptr inbounds i32, i32* %639, i64 2
  %641 = load i32, i32* %640, align 4
  %642 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %643 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %642, i32 0, i32 5
  %644 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %643, i32 0, i32 0
  %645 = load i32*, i32** %644, align 8
  %646 = getelementptr inbounds i32, i32* %645, i64 2
  %647 = load i32, i32* %646, align 4
  %648 = call i32 @ram_mask(%struct.gk104_ramfuc* %638, i32 %641, i32 4095, i32 %647)
  %649 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %650 = load i32*, i32** @mr, align 8
  %651 = getelementptr inbounds i32, i32* %650, i64 1
  %652 = load i32, i32* %651, align 4
  %653 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %654 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %653, i32 0, i32 5
  %655 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %654, i32 0, i32 0
  %656 = load i32*, i32** %655, align 8
  %657 = getelementptr inbounds i32, i32* %656, i64 1
  %658 = load i32, i32* %657, align 4
  %659 = call i32 @ram_mask(%struct.gk104_ramfuc* %649, i32 %652, i32 -1, i32 %658)
  %660 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %661 = load i32*, i32** @mr, align 8
  %662 = getelementptr inbounds i32, i32* %661, i64 0
  %663 = load i32, i32* %662, align 4
  %664 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %665 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %664, i32 0, i32 5
  %666 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %665, i32 0, i32 0
  %667 = load i32*, i32** %666, align 8
  %668 = getelementptr inbounds i32, i32* %667, i64 0
  %669 = load i32, i32* %668, align 4
  %670 = call i32 @ram_wr32(%struct.gk104_ramfuc* %660, i32 %663, i32 %669)
  %671 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %672 = call i32 @ram_nsec(%struct.gk104_ramfuc* %671, i32 1000)
  %673 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %674 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %673, i32 0, i32 0
  %675 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %674, i32 0, i32 10
  %676 = load i64, i64* %675, align 8
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %683, label %678

678:                                              ; preds = %637
  %679 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %680 = call i32 @nvkm_sddr3_dll_reset(%struct.gk104_ramfuc* %679)
  %681 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %682 = call i32 @ram_nsec(%struct.gk104_ramfuc* %681, i32 1000)
  br label %683

683:                                              ; preds = %678, %637
  %684 = load i32, i32* %10, align 4
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %712

686:                                              ; preds = %683
  %687 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %688 = load i32, i32* @gpio2E, align 4
  %689 = call i64 @ram_have(%struct.gk104_ramfuc* %687, i32 %688)
  %690 = icmp ne i64 %689, 0
  br i1 %690, label %691, label %712

691:                                              ; preds = %686
  %692 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %693 = load i32, i32* @gpio2E, align 4
  %694 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %695 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %694, i32 0, i32 0
  %696 = load i32*, i32** %695, align 8
  %697 = getelementptr inbounds i32, i32* %696, i64 0
  %698 = load i32, i32* %697, align 4
  %699 = call i32 @ram_mask(%struct.gk104_ramfuc* %692, i32 %693, i32 12288, i32 %698)
  store i32 %699, i32* %16, align 4
  %700 = load i32, i32* %16, align 4
  %701 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %702 = load i32, i32* @gpio2E, align 4
  %703 = call i32 @ram_rd32(%struct.gk104_ramfuc* %701, i32 %702)
  %704 = icmp ne i32 %700, %703
  br i1 %704, label %705, label %711

705:                                              ; preds = %691
  %706 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %707 = load i32, i32* @gpiotrig, align 4
  %708 = call i32 @ram_wr32(%struct.gk104_ramfuc* %706, i32 %707, i32 1)
  %709 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %710 = call i32 @ram_nsec(%struct.gk104_ramfuc* %709, i32 20000)
  br label %711

711:                                              ; preds = %705, %691
  br label %712

712:                                              ; preds = %711, %686, %683
  %713 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %714 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %713, i32 0, i32 4
  %715 = load i32, i32* %714, align 8
  %716 = icmp ne i32 %715, 2
  br i1 %716, label %717, label %722

717:                                              ; preds = %712
  %718 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %719 = call i32 @ram_mask(%struct.gk104_ramfuc* %718, i32 1112112, i32 16777216, i32 16777216)
  %720 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %721 = call i32 @ram_mask(%struct.gk104_ramfuc* %720, i32 1112112, i32 16777216, i32 0)
  br label %722

722:                                              ; preds = %717, %712
  %723 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %724 = call i32 @ram_mask(%struct.gk104_ramfuc* %723, i32 1110528, i32 -2147483648, i32 -2147483648)
  %725 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %726 = call i32 @ram_wr32(%struct.gk104_ramfuc* %725, i32 1110808, i32 1)
  %727 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %728 = call i32 @ram_mask(%struct.gk104_ramfuc* %727, i32 1110528, i32 -2147483648, i32 0)
  %729 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %730 = call i32 @ram_nsec(%struct.gk104_ramfuc* %729, i32 1000)
  %731 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %732 = call i32 @ram_unblock(%struct.gk104_ramfuc* %731)
  %733 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %734 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %733, i32 0, i32 5
  %735 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %734, i32 0, i32 1
  %736 = load %struct.TYPE_6__*, %struct.TYPE_6__** %735, align 8
  %737 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %736, i32 0, i32 0
  %738 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %737, i32 0, i32 0
  %739 = load i32, i32* %738, align 4
  %740 = load i32, i32* @NVKM_ENGINE_DISP, align 4
  %741 = call i64 @nvkm_device_engine(i32 %739, i32 %740)
  %742 = icmp ne i64 %741, 0
  br i1 %742, label %743, label %746

743:                                              ; preds = %722
  %744 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %745 = call i32 @ram_wr32(%struct.gk104_ramfuc* %744, i32 6471680, i32 252645120)
  br label %746

746:                                              ; preds = %743, %722
  %747 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %9, align 8
  %748 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %747, i32 0, i32 0
  %749 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %748, i32 0, i32 9
  %750 = load i64, i64* %749, align 8
  %751 = icmp ne i64 %750, 0
  br i1 %751, label %752, label %753

752:                                              ; preds = %746
  store i32 2048, i32* %13, align 4
  br label %754

753:                                              ; preds = %746
  store i32 0, i32* %13, align 4
  br label %754

754:                                              ; preds = %753, %752
  %755 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %756 = load i32, i32* %13, align 4
  %757 = call i32 @ram_mask(%struct.gk104_ramfuc* %755, i32 1110528, i32 2048, i32 %756)
  ret i32 0
}

declare dso_local i32 @ram_mask(%struct.gk104_ramfuc*, i32, i32, i32) #1

declare dso_local i32 @ram_block(%struct.gk104_ramfuc*) #1

declare dso_local i64 @nvkm_device_engine(i32, i32) #1

declare dso_local i32 @ram_wr32(%struct.gk104_ramfuc*, i32, i32) #1

declare dso_local i64 @ram_have(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @ram_rd32(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @ram_nsec(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @nvkm_sddr3_dll_disable(%struct.gk104_ramfuc*) #1

declare dso_local i32 @ram_wait(%struct.gk104_ramfuc*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_sddr3_dll_reset(%struct.gk104_ramfuc*) #1

declare dso_local i32 @ram_unblock(%struct.gk104_ramfuc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
