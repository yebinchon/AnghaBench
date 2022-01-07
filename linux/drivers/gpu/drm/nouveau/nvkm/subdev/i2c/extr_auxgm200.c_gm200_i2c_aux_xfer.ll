; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_auxgm200.c_gm200_i2c_aux_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_auxgm200.c_gm200_i2c_aux_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_aux = type { i32 }
%struct.gm200_i2c_aux = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%d: %08x %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"sink not detected\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"wr %08x\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"timeout %08x\00", align 1
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%02d %08x %08x\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rd %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_i2c_aux*, i32, i32, i32, i32*, i32*)* @gm200_i2c_aux_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm200_i2c_aux_xfer(%struct.nvkm_i2c_aux* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.nvkm_i2c_aux*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.gm200_i2c_aux*, align 8
  %14 = alloca %struct.nvkm_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.nvkm_i2c_aux* %0, %struct.nvkm_i2c_aux** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %7, align 8
  %24 = call %struct.gm200_i2c_aux* @gm200_i2c_aux(%struct.nvkm_i2c_aux* %23)
  store %struct.gm200_i2c_aux* %24, %struct.gm200_i2c_aux** %13, align 8
  %25 = load %struct.gm200_i2c_aux*, %struct.gm200_i2c_aux** %13, align 8
  %26 = getelementptr inbounds %struct.gm200_i2c_aux, %struct.gm200_i2c_aux* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %32, align 8
  store %struct.nvkm_device* %33, %struct.nvkm_device** %14, align 8
  %34 = load %struct.gm200_i2c_aux*, %struct.gm200_i2c_aux** %13, align 8
  %35 = getelementptr inbounds %struct.gm200_i2c_aux, %struct.gm200_i2c_aux* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 80
  store i32 %37, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %38 = bitcast [4 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 16, i1 false)
  %39 = load %struct.gm200_i2c_aux*, %struct.gm200_i2c_aux** %13, align 8
  %40 = getelementptr inbounds %struct.gm200_i2c_aux, %struct.gm200_i2c_aux* %39, i32 0, i32 1
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.TYPE_9__*, i8*, ...) @AUX_TRACE(%struct.TYPE_9__* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %44)
  %46 = load %struct.gm200_i2c_aux*, %struct.gm200_i2c_aux** %13, align 8
  %47 = call i32 @gm200_i2c_aux_init(%struct.gm200_i2c_aux* %46)
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %21, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %6
  br label %261

51:                                               ; preds = %6
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 55640, %53
  %55 = call i32 @nvkm_rd32(%struct.nvkm_device* %52, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = and i32 %56, 268435456
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = load %struct.gm200_i2c_aux*, %struct.gm200_i2c_aux** %13, align 8
  %61 = getelementptr inbounds %struct.gm200_i2c_aux, %struct.gm200_i2c_aux* %60, i32 0, i32 1
  %62 = call i32 (%struct.TYPE_9__*, i8*, ...) @AUX_TRACE(%struct.TYPE_9__* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %21, align 4
  br label %261

65:                                               ; preds = %51
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %102, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %71 = load i32*, i32** %11, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i32* %70, i32* %71, i32 %73)
  store i32 0, i32* %22, align 4
  br label %75

75:                                               ; preds = %98, %69
  %76 = load i32, i32* %22, align 4
  %77 = icmp slt i32 %76, 16
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load %struct.gm200_i2c_aux*, %struct.gm200_i2c_aux** %13, align 8
  %80 = getelementptr inbounds %struct.gm200_i2c_aux, %struct.gm200_i2c_aux* %79, i32 0, i32 1
  %81 = load i32, i32* %22, align 4
  %82 = sdiv i32 %81, 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.TYPE_9__*, i8*, ...) @AUX_TRACE(%struct.TYPE_9__* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 55600, %88
  %90 = load i32, i32* %22, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %22, align 4
  %93 = sdiv i32 %92, 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @nvkm_wr32(%struct.nvkm_device* %87, i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %78
  %99 = load i32, i32* %22, align 4
  %100 = add nsw i32 %99, 4
  store i32 %100, i32* %22, align 4
  br label %75

101:                                              ; preds = %75
  br label %102

102:                                              ; preds = %101, %65
  %103 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 55636, %104
  %106 = call i32 @nvkm_rd32(%struct.nvkm_device* %103, i32 %105)
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %16, align 4
  %108 = and i32 %107, -127488
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %9, align 4
  %110 = shl i32 %109, 12
  %111 = load i32, i32* %16, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %16, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %102
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 1
  br label %121

120:                                              ; preds = %102
  br label %121

121:                                              ; preds = %120, %116
  %122 = phi i32 [ %119, %116 ], [ 256, %120 ]
  %123 = load i32, i32* %16, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %16, align 4
  %125 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 55632, %126
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @nvkm_wr32(%struct.nvkm_device* %125, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %219, %121
  %131 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 55636, %132
  %134 = load i32, i32* %16, align 4
  %135 = or i32 -2147483648, %134
  %136 = call i32 @nvkm_wr32(%struct.nvkm_device* %131, i32 %133, i32 %135)
  %137 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 55636, %138
  %140 = load i32, i32* %16, align 4
  %141 = or i32 0, %140
  %142 = call i32 @nvkm_wr32(%struct.nvkm_device* %137, i32 %139, i32 %141)
  %143 = load i32, i32* %19, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %130
  %146 = call i32 @udelay(i32 400)
  br label %147

147:                                              ; preds = %145, %130
  %148 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 55636, %149
  %151 = load i32, i32* %16, align 4
  %152 = or i32 65536, %151
  %153 = call i32 @nvkm_wr32(%struct.nvkm_device* %148, i32 %150, i32 %152)
  store i32 1000, i32* %18, align 4
  br label %154

154:                                              ; preds = %171, %147
  %155 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 55636, %156
  %158 = call i32 @nvkm_rd32(%struct.nvkm_device* %155, i32 %157)
  store i32 %158, i32* %16, align 4
  %159 = call i32 @udelay(i32 1)
  %160 = load i32, i32* %18, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %18, align 4
  %162 = icmp ne i32 %160, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %154
  %164 = load %struct.gm200_i2c_aux*, %struct.gm200_i2c_aux** %13, align 8
  %165 = getelementptr inbounds %struct.gm200_i2c_aux, %struct.gm200_i2c_aux* %164, i32 0, i32 1
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @AUX_ERR(%struct.TYPE_9__* %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %21, align 4
  br label %261

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %16, align 4
  %173 = and i32 %172, 65536
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %154, label %175

175:                                              ; preds = %171
  store i32 0, i32* %21, align 4
  %176 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 55640, %177
  %179 = call i32 @nvkm_mask(%struct.nvkm_device* %176, i32 %178, i32 0, i32 0)
  store i32 %179, i32* %17, align 4
  %180 = load i32, i32* %17, align 4
  %181 = and i32 %180, 983040
  %182 = icmp eq i32 %181, 524288
  br i1 %182, label %187, label %183

183:                                              ; preds = %175
  %184 = load i32, i32* %17, align 4
  %185 = and i32 %184, 983040
  %186 = icmp eq i32 %185, 131072
  br i1 %186, label %187, label %188

187:                                              ; preds = %183, %175
  store i32 1, i32* %21, align 4
  br label %188

188:                                              ; preds = %187, %183
  %189 = load i32, i32* %17, align 4
  %190 = and i32 %189, 256
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i32, i32* @ETIMEDOUT, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %21, align 4
  br label %195

195:                                              ; preds = %192, %188
  %196 = load i32, i32* %17, align 4
  %197 = and i32 %196, 3584
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i32, i32* @EIO, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %21, align 4
  br label %202

202:                                              ; preds = %199, %195
  %203 = load %struct.gm200_i2c_aux*, %struct.gm200_i2c_aux** %13, align 8
  %204 = getelementptr inbounds %struct.gm200_i2c_aux, %struct.gm200_i2c_aux* %203, i32 0, i32 1
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %17, align 4
  %208 = call i32 (%struct.TYPE_9__*, i8*, ...) @AUX_TRACE(%struct.TYPE_9__* %204, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %205, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %202
  %210 = load i32, i32* %21, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, i32* %19, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %19, align 4
  %218 = icmp slt i32 %216, 32
  br label %219

219:                                              ; preds = %215, %212, %209
  %220 = phi i1 [ false, %212 ], [ false, %209 ], [ %218, %215 ]
  br i1 %220, label %130, label %221

221:                                              ; preds = %219
  %222 = load i32, i32* %9, align 4
  %223 = and i32 %222, 1
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %260

225:                                              ; preds = %221
  store i32 0, i32* %22, align 4
  br label %226

226:                                              ; preds = %248, %225
  %227 = load i32, i32* %22, align 4
  %228 = icmp slt i32 %227, 16
  br i1 %228, label %229, label %251

229:                                              ; preds = %226
  %230 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 55616, %231
  %233 = load i32, i32* %22, align 4
  %234 = add nsw i32 %232, %233
  %235 = call i32 @nvkm_rd32(%struct.nvkm_device* %230, i32 %234)
  %236 = load i32, i32* %22, align 4
  %237 = sdiv i32 %236, 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %238
  store i32 %235, i32* %239, align 4
  %240 = load %struct.gm200_i2c_aux*, %struct.gm200_i2c_aux** %13, align 8
  %241 = getelementptr inbounds %struct.gm200_i2c_aux, %struct.gm200_i2c_aux* %240, i32 0, i32 1
  %242 = load i32, i32* %22, align 4
  %243 = sdiv i32 %242, 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (%struct.TYPE_9__*, i8*, ...) @AUX_TRACE(%struct.TYPE_9__* %241, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %229
  %249 = load i32, i32* %22, align 4
  %250 = add nsw i32 %249, 4
  store i32 %250, i32* %22, align 4
  br label %226

251:                                              ; preds = %226
  %252 = load i32*, i32** %11, align 8
  %253 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %254 = load i32*, i32** %12, align 8
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @memcpy(i32* %252, i32* %253, i32 %255)
  %257 = load i32, i32* %17, align 4
  %258 = and i32 %257, 31
  %259 = load i32*, i32** %12, align 8
  store i32 %258, i32* %259, align 4
  br label %260

260:                                              ; preds = %251, %221
  br label %261

261:                                              ; preds = %260, %163, %59, %50
  %262 = load %struct.gm200_i2c_aux*, %struct.gm200_i2c_aux** %13, align 8
  %263 = call i32 @gm200_i2c_aux_fini(%struct.gm200_i2c_aux* %262)
  %264 = load i32, i32* %21, align 4
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i32, i32* %21, align 4
  br label %272

268:                                              ; preds = %261
  %269 = load i32, i32* %17, align 4
  %270 = and i32 %269, 983040
  %271 = ashr i32 %270, 16
  br label %272

272:                                              ; preds = %268, %266
  %273 = phi i32 [ %267, %266 ], [ %271, %268 ]
  ret i32 %273
}

declare dso_local %struct.gm200_i2c_aux* @gm200_i2c_aux(%struct.nvkm_i2c_aux*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @AUX_TRACE(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @gm200_i2c_aux_init(%struct.gm200_i2c_aux*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AUX_ERR(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @gm200_i2c_aux_fini(%struct.gm200_i2c_aux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
