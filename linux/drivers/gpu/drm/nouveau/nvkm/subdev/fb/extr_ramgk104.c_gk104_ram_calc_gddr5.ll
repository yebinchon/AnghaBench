; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_calc_gddr5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_calc_gddr5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_ram = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_6__, %struct.gk104_ramfuc }
%struct.TYPE_9__ = type { i32*, i32, %struct.TYPE_8__*, %struct.nvkm_ram_data* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nvkm_ram_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }
%struct.gk104_ramfuc = type { i32*, i32* }

@NVKM_ENGINE_DISP = common dso_local global i32 0, align 4
@mr = common dso_local global i32* null, align 8
@gpio2E = common dso_local global i32 0, align 4
@gpiotrig = common dso_local global i32 0, align 4
@gpioMV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk104_ram*, i32)* @gk104_ram_calc_gddr5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_ram_calc_gddr5(%struct.gk104_ram* %0, i32 %1) #0 {
  %3 = alloca %struct.gk104_ram*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gk104_ramfuc*, align 8
  %6 = alloca %struct.nvkm_ram_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.gk104_ram* %0, %struct.gk104_ram** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %17 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %16, i32 0, i32 4
  store %struct.gk104_ramfuc* %17, %struct.gk104_ramfuc** %5, align 8
  %18 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %19 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %20, align 8
  store %struct.nvkm_ram_data* %21, %struct.nvkm_ram_data** %6, align 8
  %22 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %23 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 42
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %30 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 41
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %37 = call i32 @ram_mask(%struct.gk104_ramfuc* %36, i32 1112072, i32 1073741824, i32 1073741824)
  %38 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %39 = call i32 @ram_block(%struct.gk104_ramfuc* %38)
  %40 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %41 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NVKM_ENGINE_DISP, align 4
  %48 = call i64 @nvkm_device_engine(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %52 = call i32 @ram_wr32(%struct.gk104_ramfuc* %51, i32 6471680, i32 252641280)
  br label %53

53:                                               ; preds = %50, %2
  %54 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %55 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 60
  %61 = icmp ne i32 %60, 48
  br i1 %61, label %62, label %85

62:                                               ; preds = %53
  %63 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %64 = load i32*, i32** @mr, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %68 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 60
  %74 = call i32 @ram_mask(%struct.gk104_ramfuc* %63, i32 %66, i32 60, i32 %73)
  %75 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %76 = load i32*, i32** @mr, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %80 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 60
  %84 = call i32 @ram_nuts(%struct.gk104_ram* %75, i32 %78, i32 60, i32 %83, i32 0)
  br label %85

85:                                               ; preds = %62, %53
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %90 = load i32, i32* @gpio2E, align 4
  %91 = call i64 @ram_have(%struct.gk104_ramfuc* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %95 = load i32, i32* @gpio2E, align 4
  %96 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %97 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ram_mask(%struct.gk104_ramfuc* %94, i32 %95, i32 12288, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %104 = load i32, i32* @gpio2E, align 4
  %105 = call i32 @ram_rd32(%struct.gk104_ramfuc* %103, i32 %104)
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %93
  %108 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %109 = load i32, i32* @gpiotrig, align 4
  %110 = call i32 @ram_wr32(%struct.gk104_ramfuc* %108, i32 %109, i32 1)
  %111 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %112 = call i32 @ram_nsec(%struct.gk104_ramfuc* %111, i32 20000)
  br label %113

113:                                              ; preds = %107, %93
  br label %114

114:                                              ; preds = %113, %88, %85
  %115 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %116 = call i32 @ram_mask(%struct.gk104_ramfuc* %115, i32 1110528, i32 2048, i32 0)
  %117 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %118 = call i32 @gk104_ram_train(%struct.gk104_ramfuc* %117, i32 16908288, i32 786432)
  %119 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %120 = call i32 @ram_wr32(%struct.gk104_ramfuc* %119, i32 1110544, i32 0)
  %121 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %122 = call i32 @ram_nsec(%struct.gk104_ramfuc* %121, i32 1000)
  %123 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %124 = call i32 @ram_wr32(%struct.gk104_ramfuc* %123, i32 1110800, i32 1)
  %125 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %126 = call i32 @ram_nsec(%struct.gk104_ramfuc* %125, i32 1000)
  %127 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %128 = call i32 @ram_mask(%struct.gk104_ramfuc* %127, i32 1110528, i32 -2147483648, i32 -2147483648)
  %129 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %130 = call i32 @ram_wr32(%struct.gk104_ramfuc* %129, i32 1110804, i32 1)
  %131 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %132 = call i32 @ram_mask(%struct.gk104_ramfuc* %131, i32 1110528, i32 -2147483648, i32 0)
  %133 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %134 = call i32 @ram_wr32(%struct.gk104_ramfuc* %133, i32 1110160, i32 97)
  %135 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %136 = call i32 @ram_wr32(%struct.gk104_ramfuc* %135, i32 1110160, i32 -1073741697)
  %137 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %138 = call i32 @ram_nsec(%struct.gk104_ramfuc* %137, i32 1000)
  %139 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %140 = call i32 @ram_wr32(%struct.gk104_ramfuc* %139, i32 1111704, i32 0)
  %141 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %142 = call i32 @ram_wr32(%struct.gk104_ramfuc* %141, i32 1111708, i32 0)
  store i32 -2146498592, i32* %9, align 4
  store i32 196608, i32* %10, align 4
  %143 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %144 = call i32 @ram_rd32(%struct.gk104_ramfuc* %143, i32 1112440)
  %145 = and i32 %144, 8388608
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %114
  %148 = load i32, i32* %10, align 4
  %149 = or i32 %148, 262144
  store i32 %149, i32* %10, align 4
  br label %150

150:                                              ; preds = %147, %114
  %151 = load i32, i32* %10, align 4
  %152 = or i32 %151, -2146957344
  store i32 %152, i32* %10, align 4
  %153 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %154 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  switch i32 %156, label %169 [
    i32 3, label %157
    i32 2, label %160
    i32 1, label %163
    i32 0, label %166
  ]

157:                                              ; preds = %150
  %158 = load i32, i32* %10, align 4
  %159 = and i32 %158, -65
  store i32 %159, i32* %10, align 4
  br label %169

160:                                              ; preds = %150
  %161 = load i32, i32* %10, align 4
  %162 = and i32 %161, -257
  store i32 %162, i32* %10, align 4
  br label %169

163:                                              ; preds = %150
  %164 = load i32, i32* %10, align 4
  %165 = and i32 %164, 2147483647
  store i32 %165, i32* %10, align 4
  br label %169

166:                                              ; preds = %150
  %167 = load i32, i32* %10, align 4
  %168 = and i32 %167, -1025
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %150, %166, %163, %160, %157
  %170 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %171 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  switch i32 %173, label %186 [
    i32 3, label %174
    i32 2, label %177
    i32 1, label %180
    i32 0, label %183
  ]

174:                                              ; preds = %169
  %175 = load i32, i32* %10, align 4
  %176 = and i32 %175, -33
  store i32 %176, i32* %10, align 4
  br label %186

177:                                              ; preds = %169
  %178 = load i32, i32* %10, align 4
  %179 = and i32 %178, -129
  store i32 %179, i32* %10, align 4
  br label %186

180:                                              ; preds = %169
  %181 = load i32, i32* %10, align 4
  %182 = and i32 %181, -524289
  store i32 %182, i32* %10, align 4
  br label %186

183:                                              ; preds = %169
  %184 = load i32, i32* %10, align 4
  %185 = and i32 %184, -513
  store i32 %185, i32* %10, align 4
  br label %186

186:                                              ; preds = %169, %183, %180, %177, %174
  %187 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %188 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 39
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i32, i32* %9, align 4
  %194 = or i32 %193, 50331648
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %192, %186
  %196 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %197 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 38
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load i32, i32* %9, align 4
  %203 = or i32 %202, 8192
  store i32 %203, i32* %9, align 4
  br label %204

204:                                              ; preds = %201, %195
  %205 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %206 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 37
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load i32, i32* %9, align 4
  %212 = or i32 %211, 16384
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %210, %204
  %214 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %215 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 22
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = load i32, i32* %9, align 4
  %221 = or i32 %220, 3
  store i32 %221, i32* %9, align 4
  br label %233

222:                                              ; preds = %213
  %223 = load i32, i32* %9, align 4
  %224 = or i32 %223, 872415232
  store i32 %224, i32* %9, align 4
  %225 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %226 = call i32 @ram_rd32(%struct.gk104_ramfuc* %225, i32 1112440)
  %227 = and i32 %226, 8388608
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %222
  %230 = load i32, i32* %9, align 4
  %231 = or i32 %230, 1073741824
  store i32 %231, i32* %9, align 4
  br label %232

232:                                              ; preds = %229, %222
  br label %233

233:                                              ; preds = %232, %219
  %234 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @ram_mask(%struct.gk104_ramfuc* %234, i32 1112100, i32 %235, i32 %236)
  %238 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %239 = call i32 @ram_mask(%struct.gk104_ramfuc* %238, i32 1253440, i32 65536, i32 0)
  %240 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %241 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %268

244:                                              ; preds = %233
  %245 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %246 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 2
  br i1 %248, label %249, label %268

249:                                              ; preds = %244
  %250 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %251 = call i32 @ram_mask(%struct.gk104_ramfuc* %250, i32 1112072, i32 524288, i32 0)
  %252 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %253 = call i32 @ram_mask(%struct.gk104_ramfuc* %252, i32 1110528, i32 402685952, i32 32768)
  %254 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %255 = call i32 @ram_mask(%struct.gk104_ramfuc* %254, i32 1112064, i32 0, i32 4)
  %256 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %257 = call i32 @ram_mask(%struct.gk104_ramfuc* %256, i32 1112112, i32 32768, i32 17039376)
  %258 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %259 = call i32 @ram_mask(%struct.gk104_ramfuc* %258, i32 1112112, i32 16777216, i32 0)
  %260 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %261 = call i32 @r1373f4_init(%struct.gk104_ramfuc* %260)
  %262 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %263 = call i32 @ram_mask(%struct.gk104_ramfuc* %262, i32 1274864, i32 2, i32 1)
  %264 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %265 = call i32 @r1373f4_fini(%struct.gk104_ramfuc* %264)
  %266 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %267 = call i32 @ram_mask(%struct.gk104_ramfuc* %266, i32 1112112, i32 12582912, i32 2359297)
  br label %284

268:                                              ; preds = %244, %233
  %269 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %270 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 2
  br i1 %272, label %273, label %283

273:                                              ; preds = %268
  %274 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %275 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 2
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %280 = call i32 @r1373f4_init(%struct.gk104_ramfuc* %279)
  %281 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %282 = call i32 @r1373f4_fini(%struct.gk104_ramfuc* %281)
  br label %283

283:                                              ; preds = %278, %273, %268
  br label %284

284:                                              ; preds = %283, %249
  %285 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %286 = load i32, i32* @gpioMV, align 4
  %287 = call i64 @ram_have(%struct.gk104_ramfuc* %285, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %312

289:                                              ; preds = %284
  %290 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %291 = load i32, i32* @gpioMV, align 4
  %292 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %293 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %8, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @ram_mask(%struct.gk104_ramfuc* %290, i32 %291, i32 12288, i32 %298)
  store i32 %299, i32* %12, align 4
  %300 = load i32, i32* %12, align 4
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

312:                                              ; preds = %311, %284
  %313 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %314 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 38
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %312
  %319 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %320 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 37
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
  %331 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp ne i32 %332, 2
  br i1 %333, label %334, label %354

334:                                              ; preds = %329
  %335 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %336 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 2
  br i1 %338, label %339, label %354

339:                                              ; preds = %334
  %340 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %341 = call i32 @ram_mask(%struct.gk104_ramfuc* %340, i32 1112064, i32 4, i32 0)
  %342 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %343 = call i32 @ram_mask(%struct.gk104_ramfuc* %342, i32 1274864, i32 0, i32 2)
  %344 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %345 = call i32 @ram_mask(%struct.gk104_ramfuc* %344, i32 1112112, i32 8388609, i32 4227088)
  %346 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %347 = call i32 @r1373f4_init(%struct.gk104_ramfuc* %346)
  %348 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %349 = call i32 @r1373f4_fini(%struct.gk104_ramfuc* %348)
  %350 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %351 = call i32 @ram_mask(%struct.gk104_ramfuc* %350, i32 1112072, i32 0, i32 524288)
  %352 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %353 = call i32 @ram_mask(%struct.gk104_ramfuc* %352, i32 1110528, i32 8421376, i32 8388608)
  br label %372

354:                                              ; preds = %334, %329
  %355 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %356 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = icmp eq i32 %357, 2
  br i1 %358, label %359, label %371

359:                                              ; preds = %354
  %360 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %361 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = icmp eq i32 %362, 2
  br i1 %363, label %364, label %371

364:                                              ; preds = %359
  %365 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %366 = call i32 @ram_mask(%struct.gk104_ramfuc* %365, i32 1112064, i32 4, i32 0)
  %367 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %368 = call i32 @r1373f4_init(%struct.gk104_ramfuc* %367)
  %369 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %370 = call i32 @r1373f4_fini(%struct.gk104_ramfuc* %369)
  br label %371

371:                                              ; preds = %364, %359, %354
  br label %372

372:                                              ; preds = %371, %339
  %373 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %374 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 2
  br i1 %376, label %377, label %387

377:                                              ; preds = %372
  %378 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %379 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 40
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %377
  %384 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %385 = call i32 @ram_mask(%struct.gk104_ramfuc* %384, i32 1111664, i32 -2147483648, i32 -2147483648)
  br label %386

386:                                              ; preds = %383, %377
  br label %387

387:                                              ; preds = %386, %372
  %388 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %389 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %390 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = mul nsw i32 17, %392
  %394 = call i32 @ram_wr32(%struct.gk104_ramfuc* %388, i32 1111644, i32 %393)
  %395 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %396 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %397 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 4
  %400 = mul nsw i32 16843009, %399
  %401 = call i32 @ram_wr32(%struct.gk104_ramfuc* %395, i32 1111736, i32 %400)
  %402 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %403 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %404 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = mul nsw i32 16843009, %406
  %408 = call i32 @ram_wr32(%struct.gk104_ramfuc* %402, i32 1111740, i32 %407)
  %409 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %410 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 22
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %435, label %414

414:                                              ; preds = %387
  %415 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %416 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 21
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %435, label %420

420:                                              ; preds = %414
  %421 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %422 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %423 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  %426 = mul nsw i32 16843009, %425
  %427 = call i32 @ram_wr32(%struct.gk104_ramfuc* %421, i32 1111704, i32 %426)
  %428 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %429 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %430 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 8
  %433 = mul nsw i32 16843009, %432
  %434 = call i32 @ram_wr32(%struct.gk104_ramfuc* %428, i32 1111708, i32 %433)
  br label %447

435:                                              ; preds = %414, %387
  %436 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %437 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i32 0, i32 22
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %446, label %441

441:                                              ; preds = %435
  %442 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %443 = call i32 @ram_wr32(%struct.gk104_ramfuc* %442, i32 1111704, i32 0)
  %444 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %445 = call i32 @ram_wr32(%struct.gk104_ramfuc* %444, i32 1111708, i32 0)
  br label %446

446:                                              ; preds = %441, %435
  br label %447

447:                                              ; preds = %446, %420
  %448 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %449 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = icmp ne i32 %450, 2
  br i1 %451, label %452, label %463

452:                                              ; preds = %447
  %453 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %454 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 4
  %456 = load i32, i32* %455, align 8
  %457 = mul nsw i32 16777472, %456
  store i32 %457, i32* %13, align 4
  %458 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %459 = call i32 @ram_nuke(%struct.gk104_ramfuc* %458, i32 1111700)
  %460 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %461 = load i32, i32* %13, align 4
  %462 = call i32 @ram_mask(%struct.gk104_ramfuc* %460, i32 1111700, i32 -16711936, i32 %461)
  br label %463

463:                                              ; preds = %452, %447
  %464 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %465 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = icmp eq i32 %466, 2
  br i1 %467, label %468, label %475

468:                                              ; preds = %463
  %469 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %470 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 23
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %475

474:                                              ; preds = %468
  store i32 128, i32* %10, align 4
  br label %476

475:                                              ; preds = %468, %463
  store i32 0, i32* %10, align 4
  br label %476

476:                                              ; preds = %475, %474
  %477 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %478 = load i32, i32* %10, align 4
  %479 = call i32 @ram_mask(%struct.gk104_ramfuc* %477, i32 1111564, i32 128, i32 %478)
  store i32 458752, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %480 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %481 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %481, i32 0, i32 39
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %488, label %485

485:                                              ; preds = %476
  %486 = load i32, i32* %10, align 4
  %487 = or i32 %486, 50331648
  store i32 %487, i32* %10, align 4
  br label %488

488:                                              ; preds = %485, %476
  %489 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %490 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %490, i32 0, i32 38
  %492 = load i64, i64* %491, align 8
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %488
  %495 = load i32, i32* %10, align 4
  %496 = or i32 %495, 8192
  store i32 %496, i32* %10, align 4
  br label %497

497:                                              ; preds = %494, %488
  %498 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %499 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 37
  %501 = load i64, i64* %500, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %506, label %503

503:                                              ; preds = %497
  %504 = load i32, i32* %10, align 4
  %505 = or i32 %504, 16384
  store i32 %505, i32* %10, align 4
  br label %506

506:                                              ; preds = %503, %497
  %507 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %508 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %508, i32 0, i32 22
  %510 = load i64, i64* %509, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %515, label %512

512:                                              ; preds = %506
  %513 = load i32, i32* %10, align 4
  %514 = or i32 %513, 3
  store i32 %514, i32* %10, align 4
  br label %518

515:                                              ; preds = %506
  %516 = load i32, i32* %10, align 4
  %517 = or i32 %516, 1946157056
  store i32 %517, i32* %10, align 4
  br label %518

518:                                              ; preds = %515, %512
  %519 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %520 = load i32, i32* %9, align 4
  %521 = load i32, i32* %10, align 4
  %522 = call i32 @ram_mask(%struct.gk104_ramfuc* %519, i32 1112100, i32 %520, i32 %521)
  %523 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %524 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 36
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %518
  store i32 0, i32* %10, align 4
  br label %530

529:                                              ; preds = %518
  store i32 4096, i32* %10, align 4
  br label %530

530:                                              ; preds = %529, %528
  %531 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %532 = load i32, i32* %10, align 4
  %533 = call i32 @ram_mask(%struct.gk104_ramfuc* %531, i32 1110528, i32 4096, i32 %532)
  %534 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %535 = call i32 @ram_rd32(%struct.gk104_ramfuc* %534, i32 1111664)
  %536 = and i32 %535, -2147483648
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %530
  %539 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %540 = call i32 @ram_nsec(%struct.gk104_ramfuc* %539, i32 10000)
  %541 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %542 = call i32 @ram_mask(%struct.gk104_ramfuc* %541, i32 1111664, i32 -2147483648, i32 0)
  br label %543

543:                                              ; preds = %538, %530
  %544 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %545 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %545, i32 0, i32 35
  %547 = load i64, i64* %546, align 8
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %550

549:                                              ; preds = %543
  store i32 1048576, i32* %10, align 4
  br label %551

550:                                              ; preds = %543
  store i32 0, i32* %10, align 4
  br label %551

551:                                              ; preds = %550, %549
  %552 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %553 = load i32, i32* %10, align 4
  %554 = call i32 @ram_mask(%struct.gk104_ramfuc* %552, i32 1112108, i32 1048576, i32 %553)
  store i32 0, i32* %10, align 4
  %555 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %556 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 34
  %558 = load i64, i64* %557, align 8
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %563

560:                                              ; preds = %551
  %561 = load i32, i32* %10, align 4
  %562 = or i32 %561, 8192
  store i32 %562, i32* %10, align 4
  br label %563

563:                                              ; preds = %560, %551
  %564 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %565 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 33
  %567 = load i64, i64* %566, align 8
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %572

569:                                              ; preds = %563
  %570 = load i32, i32* %10, align 4
  %571 = or i32 %570, 4096
  store i32 %571, i32* %10, align 4
  br label %572

572:                                              ; preds = %569, %563
  %573 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %574 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %574, i32 0, i32 32
  %576 = load i64, i64* %575, align 8
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %581

578:                                              ; preds = %572
  %579 = load i32, i32* %10, align 4
  %580 = or i32 %579, 16384
  store i32 %580, i32* %10, align 4
  br label %581

581:                                              ; preds = %578, %572
  %582 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %583 = load i32, i32* %10, align 4
  %584 = call i32 @ram_mask(%struct.gk104_ramfuc* %582, i32 1112112, i32 28672, i32 %583)
  %585 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %586 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %587 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %587, i32 0, i32 5
  %589 = load i32*, i32** %588, align 8
  %590 = getelementptr inbounds i32, i32* %589, i64 10
  %591 = load i32, i32* %590, align 4
  %592 = call i32 @ram_mask(%struct.gk104_ramfuc* %585, i32 1110600, i32 -1, i32 %591)
  %593 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %594 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %595 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %595, i32 0, i32 5
  %597 = load i32*, i32** %596, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 0
  %599 = load i32, i32* %598, align 4
  %600 = call i32 @ram_mask(%struct.gk104_ramfuc* %593, i32 1110672, i32 -1, i32 %599)
  %601 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %602 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %603 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %603, i32 0, i32 5
  %605 = load i32*, i32** %604, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 1
  %607 = load i32, i32* %606, align 4
  %608 = call i32 @ram_mask(%struct.gk104_ramfuc* %601, i32 1110676, i32 -1, i32 %607)
  %609 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %610 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %611 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %610, i32 0, i32 0
  %612 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %611, i32 0, i32 5
  %613 = load i32*, i32** %612, align 8
  %614 = getelementptr inbounds i32, i32* %613, i64 2
  %615 = load i32, i32* %614, align 4
  %616 = call i32 @ram_mask(%struct.gk104_ramfuc* %609, i32 1110680, i32 -1, i32 %615)
  %617 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %618 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %619 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %619, i32 0, i32 5
  %621 = load i32*, i32** %620, align 8
  %622 = getelementptr inbounds i32, i32* %621, i64 3
  %623 = load i32, i32* %622, align 4
  %624 = call i32 @ram_mask(%struct.gk104_ramfuc* %617, i32 1110684, i32 -1, i32 %623)
  %625 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %626 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %627 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %626, i32 0, i32 0
  %628 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %627, i32 0, i32 5
  %629 = load i32*, i32** %628, align 8
  %630 = getelementptr inbounds i32, i32* %629, i64 4
  %631 = load i32, i32* %630, align 4
  %632 = call i32 @ram_mask(%struct.gk104_ramfuc* %625, i32 1110688, i32 -1, i32 %631)
  %633 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %634 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %635 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %634, i32 0, i32 0
  %636 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %635, i32 0, i32 5
  %637 = load i32*, i32** %636, align 8
  %638 = getelementptr inbounds i32, i32* %637, i64 5
  %639 = load i32, i32* %638, align 4
  %640 = call i32 @ram_mask(%struct.gk104_ramfuc* %633, i32 1110692, i32 -1, i32 %639)
  %641 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %642 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %643 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %643, i32 0, i32 5
  %645 = load i32*, i32** %644, align 8
  %646 = getelementptr inbounds i32, i32* %645, i64 6
  %647 = load i32, i32* %646, align 4
  %648 = call i32 @ram_mask(%struct.gk104_ramfuc* %641, i32 1110696, i32 -1, i32 %647)
  %649 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %650 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %651 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %650, i32 0, i32 0
  %652 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %651, i32 0, i32 5
  %653 = load i32*, i32** %652, align 8
  %654 = getelementptr inbounds i32, i32* %653, i64 7
  %655 = load i32, i32* %654, align 4
  %656 = call i32 @ram_mask(%struct.gk104_ramfuc* %649, i32 1110700, i32 -1, i32 %655)
  %657 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %658 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %659 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %658, i32 0, i32 0
  %660 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %659, i32 0, i32 5
  %661 = load i32*, i32** %660, align 8
  %662 = getelementptr inbounds i32, i32* %661, i64 8
  %663 = load i32, i32* %662, align 4
  %664 = call i32 @ram_mask(%struct.gk104_ramfuc* %657, i32 1110732, i32 -1, i32 %663)
  %665 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %666 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %667 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %667, i32 0, i32 5
  %669 = load i32*, i32** %668, align 8
  %670 = getelementptr inbounds i32, i32* %669, i64 9
  %671 = load i32, i32* %670, align 4
  %672 = call i32 @ram_mask(%struct.gk104_ramfuc* %665, i32 1110760, i32 -1, i32 %671)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %673 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %674 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %673, i32 0, i32 3
  %675 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %674, i32 0, i32 5
  %676 = load i64, i64* %675, align 8
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %690

678:                                              ; preds = %581
  %679 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %680 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %679, i32 0, i32 0
  %681 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %680, i32 0, i32 31
  %682 = load i64, i64* %681, align 8
  %683 = icmp ne i64 %682, 0
  br i1 %683, label %684, label %687

684:                                              ; preds = %678
  %685 = load i32, i32* %10, align 4
  %686 = or i32 %685, 16777216
  store i32 %686, i32* %10, align 4
  br label %687

687:                                              ; preds = %684, %678
  %688 = load i32, i32* %9, align 4
  %689 = or i32 %688, 16777216
  store i32 %689, i32* %9, align 4
  br label %690

690:                                              ; preds = %687, %581
  %691 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %692 = load i32, i32* %9, align 4
  %693 = load i32, i32* %10, align 4
  %694 = call i32 @ram_mask(%struct.gk104_ramfuc* %691, i32 1110528, i32 %692, i32 %693)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %695 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %696 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %695, i32 0, i32 3
  %697 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %696, i32 0, i32 1
  %698 = load i64, i64* %697, align 8
  %699 = icmp ne i64 %698, 0
  br i1 %699, label %700, label %710

700:                                              ; preds = %690
  %701 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %702 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %702, i32 0, i32 6
  %704 = load i32, i32* %703, align 8
  %705 = shl i32 %704, 8
  %706 = load i32, i32* %10, align 4
  %707 = or i32 %706, %705
  store i32 %707, i32* %10, align 4
  %708 = load i32, i32* %9, align 4
  %709 = or i32 %708, 768
  store i32 %709, i32* %9, align 4
  br label %710

710:                                              ; preds = %700, %690
  %711 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %712 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %711, i32 0, i32 3
  %713 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %712, i32 0, i32 0
  %714 = load i64, i64* %713, align 8
  %715 = icmp ne i64 %714, 0
  br i1 %715, label %716, label %728

716:                                              ; preds = %710
  %717 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %718 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %717, i32 0, i32 0
  %719 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %718, i32 0, i32 25
  %720 = load i64, i64* %719, align 8
  %721 = icmp ne i64 %720, 0
  br i1 %721, label %722, label %725

722:                                              ; preds = %716
  %723 = load i32, i32* %10, align 4
  %724 = or i32 %723, 1879048192
  store i32 %724, i32* %10, align 4
  br label %725

725:                                              ; preds = %722, %716
  %726 = load i32, i32* %9, align 4
  %727 = or i32 %726, 1879048192
  store i32 %727, i32* %9, align 4
  br label %728

728:                                              ; preds = %725, %710
  %729 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %730 = load i32, i32* %9, align 4
  %731 = load i32, i32* %10, align 4
  %732 = call i32 @ram_mask(%struct.gk104_ramfuc* %729, i32 1111556, i32 %730, i32 %731)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %733 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %734 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %733, i32 0, i32 3
  %735 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %734, i32 0, i32 3
  %736 = load i64, i64* %735, align 8
  %737 = icmp ne i64 %736, 0
  br i1 %737, label %738, label %748

738:                                              ; preds = %728
  %739 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %740 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %739, i32 0, i32 0
  %741 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %740, i32 0, i32 7
  %742 = load i32, i32* %741, align 4
  %743 = shl i32 %742, 28
  %744 = load i32, i32* %10, align 4
  %745 = or i32 %744, %743
  store i32 %745, i32* %10, align 4
  %746 = load i32, i32* %9, align 4
  %747 = or i32 %746, 1879048192
  store i32 %747, i32* %9, align 4
  br label %748

748:                                              ; preds = %738, %728
  %749 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %750 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %749, i32 0, i32 3
  %751 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %750, i32 0, i32 4
  %752 = load i64, i64* %751, align 8
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %766

754:                                              ; preds = %748
  %755 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %756 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %755, i32 0, i32 0
  %757 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %756, i32 0, i32 24
  %758 = load i64, i64* %757, align 8
  %759 = icmp ne i64 %758, 0
  br i1 %759, label %760, label %763

760:                                              ; preds = %754
  %761 = load i32, i32* %10, align 4
  %762 = or i32 %761, 256
  store i32 %762, i32* %10, align 4
  br label %763

763:                                              ; preds = %760, %754
  %764 = load i32, i32* %9, align 4
  %765 = or i32 %764, 256
  store i32 %765, i32* %9, align 4
  br label %766

766:                                              ; preds = %763, %748
  %767 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %768 = load i32, i32* %9, align 4
  %769 = load i32, i32* %10, align 4
  %770 = call i32 @ram_mask(%struct.gk104_ramfuc* %767, i32 1111572, i32 %768, i32 %769)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %771 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %772 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %771, i32 0, i32 3
  %773 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %772, i32 0, i32 3
  %774 = load i64, i64* %773, align 8
  %775 = icmp ne i64 %774, 0
  br i1 %775, label %776, label %786

776:                                              ; preds = %766
  %777 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %778 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %777, i32 0, i32 0
  %779 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %778, i32 0, i32 7
  %780 = load i32, i32* %779, align 4
  %781 = shl i32 %780, 28
  %782 = load i32, i32* %10, align 4
  %783 = or i32 %782, %781
  store i32 %783, i32* %10, align 4
  %784 = load i32, i32* %9, align 4
  %785 = or i32 %784, 1879048192
  store i32 %785, i32* %9, align 4
  br label %786

786:                                              ; preds = %776, %766
  %787 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %788 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %787, i32 0, i32 3
  %789 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %788, i32 0, i32 2
  %790 = load i64, i64* %789, align 8
  %791 = icmp ne i64 %790, 0
  br i1 %791, label %792, label %804

792:                                              ; preds = %786
  %793 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %794 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %793, i32 0, i32 0
  %795 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %794, i32 0, i32 30
  %796 = load i64, i64* %795, align 8
  %797 = icmp ne i64 %796, 0
  br i1 %797, label %798, label %801

798:                                              ; preds = %792
  %799 = load i32, i32* %10, align 4
  %800 = or i32 %799, 256
  store i32 %800, i32* %10, align 4
  br label %801

801:                                              ; preds = %798, %792
  %802 = load i32, i32* %9, align 4
  %803 = or i32 %802, 256
  store i32 %803, i32* %9, align 4
  br label %804

804:                                              ; preds = %801, %786
  %805 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %806 = load i32, i32* %9, align 4
  %807 = load i32, i32* %10, align 4
  %808 = call i32 @ram_mask(%struct.gk104_ramfuc* %805, i32 1111568, i32 %806, i32 %807)
  store i32 871366656, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %809 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %810 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %809, i32 0, i32 0
  %811 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %810, i32 0, i32 29
  %812 = load i32, i32* %811, align 8
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %817, label %814

814:                                              ; preds = %804
  %815 = load i32, i32* %10, align 4
  %816 = or i32 %815, 538968064
  store i32 %816, i32* %10, align 4
  br label %817

817:                                              ; preds = %814, %804
  %818 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %819 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %818, i32 0, i32 0
  %820 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %819, i32 0, i32 26
  %821 = load i32, i32* %820, align 8
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %826, label %823

823:                                              ; preds = %817
  %824 = load i32, i32* %10, align 4
  %825 = or i32 %824, 310378496
  store i32 %825, i32* %10, align 4
  br label %826

826:                                              ; preds = %823, %817
  %827 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %828 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %827, i32 0, i32 0
  %829 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %828, i32 0, i32 28
  %830 = load i64, i64* %829, align 8
  %831 = icmp ne i64 %830, 0
  br i1 %831, label %832, label %854

832:                                              ; preds = %826
  %833 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %834 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %833, i32 0, i32 0
  %835 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %834, i32 0, i32 27
  %836 = load i64, i64* %835, align 8
  %837 = icmp ne i64 %836, 0
  br i1 %837, label %838, label %853

838:                                              ; preds = %832
  %839 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %840 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %839, i32 0, i32 0
  %841 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %840, i32 0, i32 26
  %842 = load i32, i32* %841, align 8
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %847, label %844

844:                                              ; preds = %838
  %845 = load i32, i32* %9, align 4
  %846 = or i32 %845, 32
  store i32 %846, i32* %9, align 4
  br label %850

847:                                              ; preds = %838
  %848 = load i32, i32* %10, align 4
  %849 = or i32 %848, 32
  store i32 %849, i32* %10, align 4
  br label %850

850:                                              ; preds = %847, %844
  %851 = load i32, i32* %9, align 4
  %852 = or i32 %851, 4
  store i32 %852, i32* %9, align 4
  br label %853

853:                                              ; preds = %850, %832
  br label %859

854:                                              ; preds = %826
  %855 = load i32, i32* %9, align 4
  %856 = or i32 %855, 1073741856
  store i32 %856, i32* %9, align 4
  %857 = load i32, i32* %10, align 4
  %858 = or i32 %857, 4
  store i32 %858, i32* %10, align 4
  br label %859

859:                                              ; preds = %854, %853
  %860 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %861 = load i32, i32* %9, align 4
  %862 = load i32, i32* %10, align 4
  %863 = call i32 @ram_mask(%struct.gk104_ramfuc* %860, i32 1112072, i32 %861, i32 %862)
  %864 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %865 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %866 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %865, i32 0, i32 0
  %867 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %866, i32 0, i32 8
  %868 = load i32, i32* %867, align 8
  %869 = mul nsw i32 286331153, %868
  %870 = call i32 @ram_wr32(%struct.gk104_ramfuc* %864, i32 1112176, i32 %869)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %871 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %872 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %871, i32 0, i32 3
  %873 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %872, i32 0, i32 1
  %874 = load i64, i64* %873, align 8
  %875 = icmp ne i64 %874, 0
  br i1 %875, label %876, label %885

876:                                              ; preds = %859
  %877 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %878 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %877, i32 0, i32 0
  %879 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %878, i32 0, i32 6
  %880 = load i32, i32* %879, align 8
  %881 = load i32, i32* %10, align 4
  %882 = or i32 %881, %880
  store i32 %882, i32* %10, align 4
  %883 = load i32, i32* %9, align 4
  %884 = or i32 %883, 3
  store i32 %884, i32* %9, align 4
  br label %885

885:                                              ; preds = %876, %859
  %886 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %887 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %886, i32 0, i32 3
  %888 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %887, i32 0, i32 0
  %889 = load i64, i64* %888, align 8
  %890 = icmp ne i64 %889, 0
  br i1 %890, label %891, label %903

891:                                              ; preds = %885
  %892 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %893 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %892, i32 0, i32 0
  %894 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %893, i32 0, i32 25
  %895 = load i64, i64* %894, align 8
  %896 = icmp ne i64 %895, 0
  br i1 %896, label %897, label %900

897:                                              ; preds = %891
  %898 = load i32, i32* %10, align 4
  %899 = or i32 %898, 4
  store i32 %899, i32* %10, align 4
  br label %900

900:                                              ; preds = %897, %891
  %901 = load i32, i32* %9, align 4
  %902 = or i32 %901, 4
  store i32 %902, i32* %9, align 4
  br label %903

903:                                              ; preds = %900, %885
  %904 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %905 = load i32, i32* %9, align 4
  %906 = load i32, i32* %10, align 4
  %907 = call i32 @ram_mask(%struct.gk104_ramfuc* %904, i32 1050480, i32 %905, i32 %906)
  %908 = load i32, i32* %9, align 4
  %909 = and i32 %907, %908
  %910 = and i32 %909, 4
  %911 = load i32, i32* %10, align 4
  %912 = and i32 %911, 4
  %913 = icmp ne i32 %910, %912
  br i1 %913, label %914, label %921

914:                                              ; preds = %903
  %915 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %916 = call i32 @ram_mask(%struct.gk104_ramfuc* %915, i32 1050448, i32 8, i32 8)
  %917 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %918 = call i32 @ram_wr32(%struct.gk104_ramfuc* %917, i32 1050384, i32 0)
  %919 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %920 = call i32 @ram_wait(%struct.gk104_ramfuc* %919, i32 1050384, i32 -2147483648, i32 -2147483648, i32 200000)
  br label %921

921:                                              ; preds = %914, %903
  %922 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %923 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %922, i32 0, i32 0
  %924 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %923, i32 0, i32 7
  %925 = load i32, i32* %924, align 4
  %926 = shl i32 %925, 8
  store i32 %926, i32* %10, align 4
  %927 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %928 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %927, i32 0, i32 0
  %929 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %928, i32 0, i32 24
  %930 = load i64, i64* %929, align 8
  %931 = icmp ne i64 %930, 0
  br i1 %931, label %932, label %935

932:                                              ; preds = %921
  %933 = load i32, i32* %10, align 4
  %934 = or i32 %933, -2147483648
  store i32 %934, i32* %10, align 4
  br label %935

935:                                              ; preds = %932, %921
  %936 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %937 = load i32, i32* %10, align 4
  %938 = call i32 @ram_mask(%struct.gk104_ramfuc* %936, i32 1050488, i32 1792, i32 %937)
  %939 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %940 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %941 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %940, i32 0, i32 0
  %942 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %941, i32 0, i32 9
  %943 = load i32, i32* %942, align 4
  %944 = shl i32 %943, 4
  %945 = call i32 @ram_mask(%struct.gk104_ramfuc* %939, i32 1110608, i32 1008, i32 %944)
  %946 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %947 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %946, i32 0, i32 0
  %948 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %947, i32 0, i32 5
  %949 = load i32*, i32** %948, align 8
  %950 = getelementptr inbounds i32, i32* %949, i64 10
  %951 = load i32, i32* %950, align 4
  %952 = and i32 %951, 2130706432
  %953 = ashr i32 %952, 24
  store i32 %953, i32* %10, align 4
  %954 = load i32, i32* %10, align 4
  %955 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %956 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %955, i32 0, i32 0
  %957 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %956, i32 0, i32 10
  %958 = load i32, i32* %957, align 8
  %959 = icmp slt i32 %954, %958
  br i1 %959, label %960, label %965

960:                                              ; preds = %935
  %961 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %962 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %961, i32 0, i32 0
  %963 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %962, i32 0, i32 10
  %964 = load i32, i32* %963, align 8
  store i32 %964, i32* %10, align 4
  br label %965

965:                                              ; preds = %960, %935
  %966 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %967 = load i32, i32* %10, align 4
  %968 = shl i32 %967, 24
  %969 = call i32 @ram_mask(%struct.gk104_ramfuc* %966, i32 1110604, i32 2130706432, i32 %968)
  %970 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %971 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %972 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %971, i32 0, i32 0
  %973 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %972, i32 0, i32 11
  %974 = load i32, i32* %973, align 4
  %975 = shl i32 %974, 16
  %976 = call i32 @ram_mask(%struct.gk104_ramfuc* %970, i32 1110564, i32 2031616, i32 %975)
  %977 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %978 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %979 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %978, i32 0, i32 0
  %980 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %979, i32 0, i32 12
  %981 = load i32, i32* %980, align 8
  %982 = shl i32 %981, 26
  %983 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %984 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %983, i32 0, i32 0
  %985 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %984, i32 0, i32 13
  %986 = load i32, i32* %985, align 4
  %987 = shl i32 %986, 17
  %988 = or i32 %982, %987
  %989 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %990 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %989, i32 0, i32 0
  %991 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %990, i32 0, i32 14
  %992 = load i32, i32* %991, align 8
  %993 = shl i32 %992, 8
  %994 = or i32 %988, %993
  %995 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %996 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %995, i32 0, i32 0
  %997 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %996, i32 0, i32 15
  %998 = load i32, i32* %997, align 4
  %999 = or i32 %994, %998
  %1000 = call i32 @ram_mask(%struct.gk104_ramfuc* %977, i32 1113796, i32 69078791, i32 %999)
  %1001 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1002 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %1003 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %1002, i32 0, i32 0
  %1004 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1003, i32 0, i32 16
  %1005 = load i32, i32* %1004, align 8
  %1006 = shl i32 %1005, 5
  %1007 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %1008 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %1007, i32 0, i32 0
  %1009 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1008, i32 0, i32 17
  %1010 = load i32, i32* %1009, align 4
  %1011 = or i32 %1006, %1010
  %1012 = call i32 @ram_mask(%struct.gk104_ramfuc* %1001, i32 1113800, i32 39, i32 %1011)
  %1013 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1014 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1013, i32 1110160, i32 1073741950)
  %1015 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1016 = call i32 @ram_nsec(%struct.gk104_ramfuc* %1015, i32 2000)
  %1017 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1018 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1017, i32 1110804, i32 1)
  %1019 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1020 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1019, i32 1110800, i32 1)
  %1021 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1022 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1021, i32 1110544, i32 -2147483648)
  %1023 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %1024 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %1023, i32 0, i32 0
  %1025 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1024, i32 0, i32 23
  %1026 = load i64, i64* %1025, align 8
  %1027 = icmp ne i64 %1026, 0
  br i1 %1027, label %1028, label %1043

1028:                                             ; preds = %965
  %1029 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1030 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1029, i32 0, i32 1
  %1031 = load i32, i32* %1030, align 4
  %1032 = icmp eq i32 %1031, 2
  br i1 %1032, label %1033, label %1043

1033:                                             ; preds = %1028
  %1034 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1035 = call i32 @ram_mask(%struct.gk104_ramfuc* %1034, i32 1110676, i32 -16777216, i32 603979776)
  store i32 %1035, i32* %14, align 4
  %1036 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1037 = call i32 @gk104_ram_train(%struct.gk104_ramfuc* %1036, i32 -1139933184, i32 -1543438336)
  %1038 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1039 = call i32 @ram_nsec(%struct.gk104_ramfuc* %1038, i32 1000)
  %1040 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1041 = load i32, i32* %14, align 4
  %1042 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1040, i32 1110676, i32 %1041)
  br label %1043

1043:                                             ; preds = %1033, %1028, %965
  %1044 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1045 = load i32*, i32** @mr, align 8
  %1046 = getelementptr inbounds i32, i32* %1045, i64 3
  %1047 = load i32, i32* %1046, align 4
  %1048 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1049 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1048, i32 0, i32 2
  %1050 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1049, i32 0, i32 0
  %1051 = load i32*, i32** %1050, align 8
  %1052 = getelementptr inbounds i32, i32* %1051, i64 3
  %1053 = load i32, i32* %1052, align 4
  %1054 = call i32 @ram_mask(%struct.gk104_ramfuc* %1044, i32 %1047, i32 4095, i32 %1053)
  %1055 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1056 = load i32*, i32** @mr, align 8
  %1057 = getelementptr inbounds i32, i32* %1056, i64 0
  %1058 = load i32, i32* %1057, align 4
  %1059 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1060 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1059, i32 0, i32 2
  %1061 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1060, i32 0, i32 0
  %1062 = load i32*, i32** %1061, align 8
  %1063 = getelementptr inbounds i32, i32* %1062, i64 0
  %1064 = load i32, i32* %1063, align 4
  %1065 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1055, i32 %1058, i32 %1064)
  %1066 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1067 = load i32*, i32** @mr, align 8
  %1068 = getelementptr inbounds i32, i32* %1067, i64 8
  %1069 = load i32, i32* %1068, align 4
  %1070 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1071 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1070, i32 0, i32 2
  %1072 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1071, i32 0, i32 0
  %1073 = load i32*, i32** %1072, align 8
  %1074 = getelementptr inbounds i32, i32* %1073, i64 8
  %1075 = load i32, i32* %1074, align 4
  %1076 = call i32 @ram_mask(%struct.gk104_ramfuc* %1066, i32 %1069, i32 4095, i32 %1075)
  %1077 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1078 = call i32 @ram_nsec(%struct.gk104_ramfuc* %1077, i32 1000)
  %1079 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1080 = load i32*, i32** @mr, align 8
  %1081 = getelementptr inbounds i32, i32* %1080, i64 1
  %1082 = load i32, i32* %1081, align 4
  %1083 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1084 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1083, i32 0, i32 2
  %1085 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1084, i32 0, i32 0
  %1086 = load i32*, i32** %1085, align 8
  %1087 = getelementptr inbounds i32, i32* %1086, i64 1
  %1088 = load i32, i32* %1087, align 4
  %1089 = call i32 @ram_mask(%struct.gk104_ramfuc* %1079, i32 %1082, i32 4095, i32 %1088)
  %1090 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1091 = load i32*, i32** @mr, align 8
  %1092 = getelementptr inbounds i32, i32* %1091, i64 5
  %1093 = load i32, i32* %1092, align 4
  %1094 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1095 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1094, i32 0, i32 2
  %1096 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1095, i32 0, i32 0
  %1097 = load i32*, i32** %1096, align 8
  %1098 = getelementptr inbounds i32, i32* %1097, i64 5
  %1099 = load i32, i32* %1098, align 4
  %1100 = and i32 %1099, -5
  %1101 = call i32 @ram_mask(%struct.gk104_ramfuc* %1090, i32 %1093, i32 4095, i32 %1100)
  %1102 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1103 = load i32*, i32** @mr, align 8
  %1104 = getelementptr inbounds i32, i32* %1103, i64 6
  %1105 = load i32, i32* %1104, align 4
  %1106 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1107 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1106, i32 0, i32 2
  %1108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1107, i32 0, i32 0
  %1109 = load i32*, i32** %1108, align 8
  %1110 = getelementptr inbounds i32, i32* %1109, i64 6
  %1111 = load i32, i32* %1110, align 4
  %1112 = call i32 @ram_mask(%struct.gk104_ramfuc* %1102, i32 %1105, i32 4095, i32 %1111)
  %1113 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1114 = load i32*, i32** @mr, align 8
  %1115 = getelementptr inbounds i32, i32* %1114, i64 7
  %1116 = load i32, i32* %1115, align 4
  %1117 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1118 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1117, i32 0, i32 2
  %1119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1118, i32 0, i32 0
  %1120 = load i32*, i32** %1119, align 8
  %1121 = getelementptr inbounds i32, i32* %1120, i64 7
  %1122 = load i32, i32* %1121, align 4
  %1123 = call i32 @ram_mask(%struct.gk104_ramfuc* %1113, i32 %1116, i32 4095, i32 %1122)
  %1124 = load i32, i32* %7, align 4
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1126, label %1152

1126:                                             ; preds = %1043
  %1127 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1128 = load i32, i32* @gpio2E, align 4
  %1129 = call i64 @ram_have(%struct.gk104_ramfuc* %1127, i32 %1128)
  %1130 = icmp ne i64 %1129, 0
  br i1 %1130, label %1131, label %1152

1131:                                             ; preds = %1126
  %1132 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1133 = load i32, i32* @gpio2E, align 4
  %1134 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1135 = getelementptr inbounds %struct.gk104_ramfuc, %struct.gk104_ramfuc* %1134, i32 0, i32 0
  %1136 = load i32*, i32** %1135, align 8
  %1137 = getelementptr inbounds i32, i32* %1136, i64 0
  %1138 = load i32, i32* %1137, align 4
  %1139 = call i32 @ram_mask(%struct.gk104_ramfuc* %1132, i32 %1133, i32 12288, i32 %1138)
  store i32 %1139, i32* %15, align 4
  %1140 = load i32, i32* %15, align 4
  %1141 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1142 = load i32, i32* @gpio2E, align 4
  %1143 = call i32 @ram_rd32(%struct.gk104_ramfuc* %1141, i32 %1142)
  %1144 = icmp ne i32 %1140, %1143
  br i1 %1144, label %1145, label %1151

1145:                                             ; preds = %1131
  %1146 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1147 = load i32, i32* @gpiotrig, align 4
  %1148 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1146, i32 %1147, i32 1)
  %1149 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1150 = call i32 @ram_nsec(%struct.gk104_ramfuc* %1149, i32 20000)
  br label %1151

1151:                                             ; preds = %1145, %1131
  br label %1152

1152:                                             ; preds = %1151, %1126, %1043
  %1153 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1154 = call i32 @ram_mask(%struct.gk104_ramfuc* %1153, i32 1110528, i32 -2147483648, i32 -2147483648)
  %1155 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1156 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1155, i32 1110808, i32 1)
  %1157 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1158 = call i32 @ram_mask(%struct.gk104_ramfuc* %1157, i32 1110528, i32 -2147483648, i32 0)
  %1159 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1160 = call i32 @ram_nsec(%struct.gk104_ramfuc* %1159, i32 1000)
  %1161 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1162 = call i32 @ram_nuts(%struct.gk104_ram* %1161, i32 1110528, i32 411076608, i32 0, i32 411076608)
  %1163 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1164 = call i32 @ram_rd32(%struct.gk104_ramfuc* %1163, i32 1112440)
  store i32 %1164, i32* %10, align 4
  %1165 = load i32, i32* %10, align 4
  %1166 = and i32 %1165, -287045
  store i32 %1166, i32* %10, align 4
  %1167 = load i32, i32* %10, align 4
  %1168 = or i32 %1167, 11
  store i32 %1168, i32* %10, align 4
  %1169 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %1170 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %1169, i32 0, i32 0
  %1171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1170, i32 0, i32 22
  %1172 = load i64, i64* %1171, align 8
  %1173 = icmp ne i64 %1172, 0
  br i1 %1173, label %1186, label %1174

1174:                                             ; preds = %1152
  %1175 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %1176 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %1175, i32 0, i32 0
  %1177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1176, i32 0, i32 21
  %1178 = load i64, i64* %1177, align 8
  %1179 = icmp ne i64 %1178, 0
  br i1 %1179, label %1183, label %1180

1180:                                             ; preds = %1174
  %1181 = load i32, i32* %10, align 4
  %1182 = or i32 %1181, 8204
  store i32 %1182, i32* %10, align 4
  br label %1185

1183:                                             ; preds = %1174
  %1184 = load i32, i32* %10, align 4
  store i32 %1184, i32* %10, align 4
  br label %1185

1185:                                             ; preds = %1183, %1180
  br label %1189

1186:                                             ; preds = %1152
  %1187 = load i32, i32* %10, align 4
  %1188 = or i32 %1187, 262212
  store i32 %1188, i32* %10, align 4
  br label %1189

1189:                                             ; preds = %1186, %1185
  %1190 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1191 = load i32, i32* %10, align 4
  %1192 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1190, i32 1112440, i32 %1191)
  %1193 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1194 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1193, i32 0, i32 1
  %1195 = load i32, i32* %1194, align 4
  %1196 = icmp eq i32 %1195, 1
  br i1 %1196, label %1197, label %1204

1197:                                             ; preds = %1189
  %1198 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1199 = call i32 @ram_rd32(%struct.gk104_ramfuc* %1198, i32 1112112)
  %1200 = or i32 %1199, 1
  store i32 %1200, i32* %10, align 4
  %1201 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1202 = load i32, i32* %10, align 4
  %1203 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1201, i32 1112112, i32 %1202)
  br label %1204

1204:                                             ; preds = %1197, %1189
  %1205 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %1206 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %1205, i32 0, i32 0
  %1207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1206, i32 0, i32 22
  %1208 = load i64, i64* %1207, align 8
  %1209 = icmp ne i64 %1208, 0
  br i1 %1209, label %1229, label %1210

1210:                                             ; preds = %1204
  store i32 -2013134848, i32* %10, align 4
  %1211 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %1212 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %1211, i32 0, i32 0
  %1213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1212, i32 0, i32 21
  %1214 = load i64, i64* %1213, align 8
  %1215 = icmp ne i64 %1214, 0
  br i1 %1215, label %1216, label %1219

1216:                                             ; preds = %1210
  %1217 = load i32, i32* %10, align 4
  %1218 = or i32 %1217, 268435456
  store i32 %1218, i32* %10, align 4
  br label %1219

1219:                                             ; preds = %1216, %1210
  %1220 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %1221 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %1220, i32 0, i32 0
  %1222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1221, i32 0, i32 20
  %1223 = load i32, i32* %1222, align 8
  %1224 = icmp ne i32 %1223, 0
  br i1 %1224, label %1228, label %1225

1225:                                             ; preds = %1219
  %1226 = load i32, i32* %10, align 4
  %1227 = or i32 %1226, 524288
  store i32 %1227, i32* %10, align 4
  br label %1228

1228:                                             ; preds = %1225, %1219
  br label %1230

1229:                                             ; preds = %1204
  store i32 -1542586368, i32* %10, align 4
  br label %1230

1230:                                             ; preds = %1229, %1228
  %1231 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1232 = load i32, i32* %10, align 4
  %1233 = call i32 @gk104_ram_train(%struct.gk104_ramfuc* %1231, i32 -1139867648, i32 %1232)
  %1234 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1235 = call i32 @ram_nsec(%struct.gk104_ramfuc* %1234, i32 1000)
  %1236 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1237 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1236, i32 0, i32 1
  %1238 = load i32, i32* %1237, align 4
  %1239 = icmp eq i32 %1238, 2
  br i1 %1239, label %1240, label %1243

1240:                                             ; preds = %1230
  %1241 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1242 = call i32 @ram_mask(%struct.gk104_ramfuc* %1241, i32 1112064, i32 4, i32 4)
  br label %1243

1243:                                             ; preds = %1240, %1230
  %1244 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1245 = load i32*, i32** @mr, align 8
  %1246 = getelementptr inbounds i32, i32* %1245, i64 5
  %1247 = load i32, i32* %1246, align 4
  %1248 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1249 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1248, i32 0, i32 2
  %1250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1249, i32 0, i32 0
  %1251 = load i32*, i32** %1250, align 8
  %1252 = getelementptr inbounds i32, i32* %1251, i64 5
  %1253 = load i32, i32* %1252, align 4
  %1254 = call i32 @ram_mask(%struct.gk104_ramfuc* %1244, i32 %1247, i32 4, i32 %1253)
  %1255 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1256 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1255, i32 0, i32 2
  %1257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1256, i32 0, i32 0
  %1258 = load i32*, i32** %1257, align 8
  %1259 = getelementptr inbounds i32, i32* %1258, i64 5
  %1260 = load i32, i32* %1259, align 4
  %1261 = icmp ne i32 %1254, %1260
  br i1 %1261, label %1262, label %1265

1262:                                             ; preds = %1243
  %1263 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1264 = call i32 @ram_nsec(%struct.gk104_ramfuc* %1263, i32 1000)
  br label %1265

1265:                                             ; preds = %1262, %1243
  %1266 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1267 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1266, i32 0, i32 1
  %1268 = load i32, i32* %1267, align 4
  %1269 = icmp ne i32 %1268, 2
  br i1 %1269, label %1270, label %1275

1270:                                             ; preds = %1265
  %1271 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1272 = call i32 @ram_mask(%struct.gk104_ramfuc* %1271, i32 1112112, i32 16777216, i32 16777216)
  %1273 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1274 = call i32 @ram_mask(%struct.gk104_ramfuc* %1273, i32 1112112, i32 16777216, i32 0)
  br label %1275

1275:                                             ; preds = %1270, %1265
  %1276 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %1277 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %1276, i32 0, i32 0
  %1278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1277, i32 0, i32 19
  %1279 = load i64, i64* %1278, align 8
  %1280 = icmp ne i64 %1279, 0
  br i1 %1280, label %1281, label %1284

1281:                                             ; preds = %1275
  %1282 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1283 = call i32 @gk104_ram_train(%struct.gk104_ramfuc* %1282, i32 -2147352576, i32 16777216)
  br label %1284

1284:                                             ; preds = %1281, %1275
  %1285 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1286 = call i32 @ram_unblock(%struct.gk104_ramfuc* %1285)
  %1287 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1288 = getelementptr inbounds %struct.gk104_ram, %struct.gk104_ram* %1287, i32 0, i32 2
  %1289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1288, i32 0, i32 2
  %1290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1289, align 8
  %1291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1290, i32 0, i32 0
  %1292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1291, i32 0, i32 0
  %1293 = load i32, i32* %1292, align 4
  %1294 = load i32, i32* @NVKM_ENGINE_DISP, align 4
  %1295 = call i64 @nvkm_device_engine(i32 %1293, i32 %1294)
  %1296 = icmp ne i64 %1295, 0
  br i1 %1296, label %1297, label %1300

1297:                                             ; preds = %1284
  %1298 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1299 = call i32 @ram_wr32(%struct.gk104_ramfuc* %1298, i32 6471680, i32 252645120)
  br label %1300

1300:                                             ; preds = %1297, %1284
  %1301 = load %struct.nvkm_ram_data*, %struct.nvkm_ram_data** %6, align 8
  %1302 = getelementptr inbounds %struct.nvkm_ram_data, %struct.nvkm_ram_data* %1301, i32 0, i32 0
  %1303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1302, i32 0, i32 18
  %1304 = load i64, i64* %1303, align 8
  %1305 = icmp ne i64 %1304, 0
  br i1 %1305, label %1306, label %1307

1306:                                             ; preds = %1300
  store i32 2048, i32* %10, align 4
  br label %1308

1307:                                             ; preds = %1300
  store i32 0, i32* %10, align 4
  br label %1308

1308:                                             ; preds = %1307, %1306
  %1309 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %5, align 8
  %1310 = load i32, i32* %10, align 4
  %1311 = call i32 @ram_mask(%struct.gk104_ramfuc* %1309, i32 1110528, i32 2048, i32 %1310)
  %1312 = load %struct.gk104_ram*, %struct.gk104_ram** %3, align 8
  %1313 = load i32, i32* %10, align 4
  %1314 = call i32 @ram_nuts(%struct.gk104_ram* %1312, i32 1110528, i32 411076608, i32 %1313, i32 411076608)
  ret i32 0
}

declare dso_local i32 @ram_mask(%struct.gk104_ramfuc*, i32, i32, i32) #1

declare dso_local i32 @ram_block(%struct.gk104_ramfuc*) #1

declare dso_local i64 @nvkm_device_engine(i32, i32) #1

declare dso_local i32 @ram_wr32(%struct.gk104_ramfuc*, i32, i32) #1

declare dso_local i32 @ram_nuts(%struct.gk104_ram*, i32, i32, i32, i32) #1

declare dso_local i64 @ram_have(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @ram_rd32(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @ram_nsec(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @gk104_ram_train(%struct.gk104_ramfuc*, i32, i32) #1

declare dso_local i32 @r1373f4_init(%struct.gk104_ramfuc*) #1

declare dso_local i32 @r1373f4_fini(%struct.gk104_ramfuc*) #1

declare dso_local i32 @ram_nuke(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @ram_wait(%struct.gk104_ramfuc*, i32, i32, i32, i32) #1

declare dso_local i32 @ram_unblock(%struct.gk104_ramfuc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
