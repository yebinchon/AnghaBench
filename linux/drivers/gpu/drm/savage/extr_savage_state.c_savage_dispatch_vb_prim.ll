; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_vb_prim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_vb_prim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"wrong number of vertices %u in TRILIST\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"wrong number of vertices %u in TRIFAN/STRIP\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid primitive type %u\0A\00", align 1
@SAVAGE_SKIP_ALL_S3D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid skip flags 0x%04x\0A\00", align 1
@SAVAGE_SKIP_ALL_S4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"vertex size greater than vb stride (%u > %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"vertex indices (%u-%u) out of range (0-%u)\0A\00", align 1
@__const.savage_dispatch_vb_prim.reorder = private unnamed_addr constant [3 x i32] [i32 -1, i32 -1, i32 -1], align 4
@BCI_CMD_DRAW_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32*, i32, i32)* @savage_dispatch_vb_prim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_dispatch_vb_prim(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [3 x i32], align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8 0, i8* %12, align 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* @DMA_LOCALS, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %276

42:                                               ; preds = %5
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %64 [
    i32 129, label %44
    i32 130, label %45
    i32 128, label %55
    i32 131, label %55
  ]

44:                                               ; preds = %42
  store i8 1, i8* %12, align 1
  store i32 130, i32* %13, align 4
  br label %45

45:                                               ; preds = %42, %44
  %46 = load i32, i32* %15, align 4
  %47 = urem i32 %46, 3
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %15, align 4
  %51 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %276

54:                                               ; preds = %45
  br label %69

55:                                               ; preds = %42, %42
  %56 = load i32, i32* %15, align 4
  %57 = icmp ult i32 %56, 3
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %276

63:                                               ; preds = %55
  br label %69

64:                                               ; preds = %42
  %65 = load i32, i32* %13, align 4
  %66 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %276

69:                                               ; preds = %63, %54
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @S3_SAVAGE3D_SERIES(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @SAVAGE_SKIP_ALL_S3D, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %276

84:                                               ; preds = %75
  store i32 8, i32* %17, align 4
  br label %95

85:                                               ; preds = %69
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @SAVAGE_SKIP_ALL_S4, align 4
  %88 = icmp ugt i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  %91 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %276

94:                                               ; preds = %85
  store i32 10, i32* %17, align 4
  br label %95

95:                                               ; preds = %94, %84
  %96 = load i32, i32* %14, align 4
  %97 = and i32 %96, 1
  %98 = load i32, i32* %14, align 4
  %99 = lshr i32 %98, 1
  %100 = and i32 %99, 1
  %101 = add i32 %97, %100
  %102 = load i32, i32* %14, align 4
  %103 = lshr i32 %102, 2
  %104 = and i32 %103, 1
  %105 = add i32 %101, %104
  %106 = load i32, i32* %14, align 4
  %107 = lshr i32 %106, 3
  %108 = and i32 %107, 1
  %109 = add i32 %105, %108
  %110 = load i32, i32* %14, align 4
  %111 = lshr i32 %110, 4
  %112 = and i32 %111, 1
  %113 = add i32 %109, %112
  %114 = load i32, i32* %14, align 4
  %115 = lshr i32 %114, 5
  %116 = and i32 %115, 1
  %117 = add i32 %113, %116
  %118 = load i32, i32* %14, align 4
  %119 = lshr i32 %118, 6
  %120 = and i32 %119, 1
  %121 = add i32 %117, %120
  %122 = load i32, i32* %14, align 4
  %123 = lshr i32 %122, 7
  %124 = and i32 %123, 1
  %125 = add i32 %121, %124
  %126 = load i32, i32* %17, align 4
  %127 = sub i32 %126, %125
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ugt i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %95
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %276

137:                                              ; preds = %95
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %15, align 4
  %140 = add i32 %138, %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = mul i32 %142, 4
  %144 = udiv i32 %141, %143
  %145 = icmp ugt i32 %140, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %137
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add i32 %148, %149
  %151 = sub i32 %150, 1
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = mul i32 %153, 4
  %155 = udiv i32 %152, %154
  %156 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %147, i32 %151, i32 %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %6, align 4
  br label %276

159:                                              ; preds = %137
  %160 = load i32, i32* %13, align 4
  %161 = shl i32 %160, 25
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %265, %159
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %275

165:                                              ; preds = %162
  %166 = load i32, i32* %15, align 4
  %167 = icmp ugt i32 %166, 255
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %171

169:                                              ; preds = %165
  %170 = load i32, i32* %15, align 4
  br label %171

171:                                              ; preds = %169, %168
  %172 = phi i32 [ 255, %168 ], [ %170, %169 ]
  store i32 %172, i32* %19, align 4
  %173 = load i8, i8* %12, align 1
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %175, label %218

175:                                              ; preds = %171
  %176 = bitcast [3 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 4 bitcast ([3 x i32]* @__const.savage_dispatch_vb_prim.reorder to i8*), i64 12, i1 false)
  %177 = load i32, i32* %16, align 4
  %178 = urem i32 %177, 3
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %179
  store i32 2, i32* %180, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %17, align 4
  %183 = mul i32 %181, %182
  %184 = add i32 %183, 1
  %185 = call i32 @BEGIN_DMA(i32 %184)
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @DMA_DRAW_PRIMITIVE(i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %16, align 4
  store i32 %190, i32* %18, align 4
  br label %191

191:                                              ; preds = %213, %175
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %19, align 4
  %195 = add i32 %193, %194
  %196 = icmp ult i32 %192, %195
  br i1 %196, label %197, label %216

197:                                              ; preds = %191
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %18, align 4
  %200 = urem i32 %199, 3
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add i32 %198, %203
  store i32 %204, i32* %21, align 4
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %21, align 4
  %208 = mul i32 %206, %207
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load i32, i32* %17, align 4
  %212 = call i32 @DMA_COPY(i32* %210, i32 %211)
  br label %213

213:                                              ; preds = %197
  %214 = load i32, i32* %18, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %18, align 4
  br label %191

216:                                              ; preds = %191
  %217 = call i32 (...) @DMA_COMMIT()
  br label %265

218:                                              ; preds = %171
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %17, align 4
  %221 = mul i32 %219, %220
  %222 = add i32 %221, 1
  %223 = call i32 @BEGIN_DMA(i32 %222)
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @DMA_DRAW_PRIMITIVE(i32 %224, i32 %225, i32 %226)
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %17, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %242

231:                                              ; preds = %218
  %232 = load i32*, i32** %9, align 8
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* %16, align 4
  %235 = mul i32 %233, %234
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %232, i64 %236
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %19, align 4
  %240 = mul i32 %238, %239
  %241 = call i32 @DMA_COPY(i32* %237, i32 %240)
  br label %263

242:                                              ; preds = %218
  %243 = load i32, i32* %16, align 4
  store i32 %243, i32* %18, align 4
  br label %244

244:                                              ; preds = %259, %242
  %245 = load i32, i32* %18, align 4
  %246 = load i32, i32* %16, align 4
  %247 = load i32, i32* %19, align 4
  %248 = add i32 %246, %247
  %249 = icmp ult i32 %245, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %244
  %251 = load i32*, i32** %9, align 8
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %18, align 4
  %254 = mul i32 %252, %253
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %251, i64 %255
  %257 = load i32, i32* %17, align 4
  %258 = call i32 @DMA_COPY(i32* %256, i32 %257)
  br label %259

259:                                              ; preds = %250
  %260 = load i32, i32* %18, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %18, align 4
  br label %244

262:                                              ; preds = %244
  br label %263

263:                                              ; preds = %262, %231
  %264 = call i32 (...) @DMA_COMMIT()
  br label %265

265:                                              ; preds = %263, %216
  %266 = load i32, i32* %19, align 4
  %267 = load i32, i32* %16, align 4
  %268 = add i32 %267, %266
  store i32 %268, i32* %16, align 4
  %269 = load i32, i32* %19, align 4
  %270 = load i32, i32* %15, align 4
  %271 = sub i32 %270, %269
  store i32 %271, i32* %15, align 4
  %272 = load i32, i32* @BCI_CMD_DRAW_CONT, align 4
  %273 = load i32, i32* %13, align 4
  %274 = or i32 %273, %272
  store i32 %274, i32* %13, align 4
  br label %162

275:                                              ; preds = %162
  store i32 0, i32* %6, align 4
  br label %276

276:                                              ; preds = %275, %146, %131, %89, %79, %64, %58, %49, %41
  %277 = load i32, i32* %6, align 4
  ret i32 %277
}

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i64 @S3_SAVAGE3D_SERIES(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_DRAW_PRIMITIVE(i32, i32, i32) #1

declare dso_local i32 @DMA_COPY(i32*, i32) #1

declare dso_local i32 @DMA_COMMIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
