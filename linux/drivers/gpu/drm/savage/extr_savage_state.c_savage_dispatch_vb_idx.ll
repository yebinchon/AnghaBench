; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_vb_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_state.c_savage_dispatch_vb_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"wrong number of indices %u in TRILIST\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"wrong number of indices %u in TRIFAN/STRIP\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid primitive type %u\0A\00", align 1
@SAVAGE_SKIP_ALL_S3D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"invalid skip flags 0x%04x\0A\00", align 1
@SAVAGE_SKIP_ALL_S4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"vertex size greater than vb stride (%u > %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"idx[%u]=%u out of range (0-%u)\0A\00", align 1
@__const.savage_dispatch_vb_idx.reorder = private unnamed_addr constant [3 x i32] [i32 2, i32 -1, i32 -1], align 4
@BCI_CMD_DRAW_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32*, i32*, i32, i32)* @savage_dispatch_vb_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savage_dispatch_vb_idx(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [3 x i32], align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* @DMA_LOCALS, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %270

40:                                               ; preds = %6
  %41 = load i32, i32* %15, align 4
  switch i32 %41, label %62 [
    i32 129, label %42
    i32 130, label %43
    i32 128, label %53
    i32 131, label %53
  ]

42:                                               ; preds = %40
  store i8 1, i8* %14, align 1
  store i32 130, i32* %15, align 4
  br label %43

43:                                               ; preds = %40, %42
  %44 = load i32, i32* %17, align 4
  %45 = urem i32 %44, 3
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %17, align 4
  %49 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %270

52:                                               ; preds = %43
  br label %67

53:                                               ; preds = %40, %40
  %54 = load i32, i32* %17, align 4
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %17, align 4
  %58 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %270

61:                                               ; preds = %53
  br label %67

62:                                               ; preds = %40
  %63 = load i32, i32* %15, align 4
  %64 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %270

67:                                               ; preds = %61, %52
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @S3_SAVAGE3D_SERIES(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @SAVAGE_SKIP_ALL_S3D, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* %16, align 4
  %79 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %270

82:                                               ; preds = %73
  store i32 8, i32* %18, align 4
  br label %93

83:                                               ; preds = %67
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @SAVAGE_SKIP_ALL_S4, align 4
  %86 = icmp ugt i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* %16, align 4
  %89 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %7, align 4
  br label %270

92:                                               ; preds = %83
  store i32 10, i32* %18, align 4
  br label %93

93:                                               ; preds = %92, %82
  %94 = load i32, i32* %16, align 4
  %95 = and i32 %94, 1
  %96 = load i32, i32* %16, align 4
  %97 = lshr i32 %96, 1
  %98 = and i32 %97, 1
  %99 = add i32 %95, %98
  %100 = load i32, i32* %16, align 4
  %101 = lshr i32 %100, 2
  %102 = and i32 %101, 1
  %103 = add i32 %99, %102
  %104 = load i32, i32* %16, align 4
  %105 = lshr i32 %104, 3
  %106 = and i32 %105, 1
  %107 = add i32 %103, %106
  %108 = load i32, i32* %16, align 4
  %109 = lshr i32 %108, 4
  %110 = and i32 %109, 1
  %111 = add i32 %107, %110
  %112 = load i32, i32* %16, align 4
  %113 = lshr i32 %112, 5
  %114 = and i32 %113, 1
  %115 = add i32 %111, %114
  %116 = load i32, i32* %16, align 4
  %117 = lshr i32 %116, 6
  %118 = and i32 %117, 1
  %119 = add i32 %115, %118
  %120 = load i32, i32* %16, align 4
  %121 = lshr i32 %120, 7
  %122 = and i32 %121, 1
  %123 = add i32 %119, %122
  %124 = load i32, i32* %18, align 4
  %125 = sub i32 %124, %123
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %93
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  br label %270

135:                                              ; preds = %93
  %136 = load i32, i32* %15, align 4
  %137 = shl i32 %136, 25
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %258, %135
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %269

141:                                              ; preds = %138
  %142 = load i32, i32* %17, align 4
  %143 = icmp ugt i32 %142, 255
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %147

145:                                              ; preds = %141
  %146 = load i32, i32* %17, align 4
  br label %147

147:                                              ; preds = %145, %144
  %148 = phi i32 [ 255, %144 ], [ %146, %145 ]
  store i32 %148, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %179, %147
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %20, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %182

153:                                              ; preds = %149
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %19, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %13, align 4
  %161 = mul i32 %160, 4
  %162 = udiv i32 %159, %161
  %163 = icmp ugt i32 %158, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %153
  %165 = load i32, i32* %19, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %19, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* %13, align 4
  %173 = mul i32 %172, 4
  %174 = udiv i32 %171, %173
  %175 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %165, i32 %170, i32 %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %7, align 4
  br label %270

178:                                              ; preds = %153
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %19, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %19, align 4
  br label %149

182:                                              ; preds = %149
  %183 = load i8, i8* %14, align 1
  %184 = icmp ne i8 %183, 0
  br i1 %184, label %185, label %225

185:                                              ; preds = %182
  %186 = bitcast [3 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 bitcast ([3 x i32]* @__const.savage_dispatch_vb_idx.reorder to i8*), i64 12, i1 false)
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %18, align 4
  %189 = mul i32 %187, %188
  %190 = add i32 %189, 1
  %191 = call i32 @BEGIN_DMA(i32 %190)
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @DMA_DRAW_PRIMITIVE(i32 %192, i32 %193, i32 %194)
  store i32 0, i32* %19, align 4
  br label %196

196:                                              ; preds = %220, %185
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* %20, align 4
  %199 = icmp ult i32 %197, %198
  br i1 %199, label %200, label %223

200:                                              ; preds = %196
  %201 = load i32*, i32** %10, align 8
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* %19, align 4
  %204 = urem i32 %203, 3
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = add i32 %202, %207
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %201, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %22, align 4
  %212 = load i32*, i32** %11, align 8
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %22, align 4
  %215 = mul i32 %213, %214
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  %218 = load i32, i32* %18, align 4
  %219 = call i32 @DMA_COPY(i32* %217, i32 %218)
  br label %220

220:                                              ; preds = %200
  %221 = load i32, i32* %19, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %19, align 4
  br label %196

223:                                              ; preds = %196
  %224 = call i32 (...) @DMA_COMMIT()
  br label %258

225:                                              ; preds = %182
  %226 = load i32, i32* %20, align 4
  %227 = load i32, i32* %18, align 4
  %228 = mul i32 %226, %227
  %229 = add i32 %228, 1
  %230 = call i32 @BEGIN_DMA(i32 %229)
  %231 = load i32, i32* %20, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %16, align 4
  %234 = call i32 @DMA_DRAW_PRIMITIVE(i32 %231, i32 %232, i32 %233)
  store i32 0, i32* %19, align 4
  br label %235

235:                                              ; preds = %253, %225
  %236 = load i32, i32* %19, align 4
  %237 = load i32, i32* %20, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %239, label %256

239:                                              ; preds = %235
  %240 = load i32*, i32** %10, align 8
  %241 = load i32, i32* %19, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %23, align 4
  %245 = load i32*, i32** %11, align 8
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* %23, align 4
  %248 = mul i32 %246, %247
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %245, i64 %249
  %251 = load i32, i32* %18, align 4
  %252 = call i32 @DMA_COPY(i32* %250, i32 %251)
  br label %253

253:                                              ; preds = %239
  %254 = load i32, i32* %19, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %19, align 4
  br label %235

256:                                              ; preds = %235
  %257 = call i32 (...) @DMA_COMMIT()
  br label %258

258:                                              ; preds = %256, %223
  %259 = load i32, i32* %20, align 4
  %260 = load i32*, i32** %10, align 8
  %261 = zext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  store i32* %262, i32** %10, align 8
  %263 = load i32, i32* %20, align 4
  %264 = load i32, i32* %17, align 4
  %265 = sub i32 %264, %263
  store i32 %265, i32* %17, align 4
  %266 = load i32, i32* @BCI_CMD_DRAW_CONT, align 4
  %267 = load i32, i32* %15, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %15, align 4
  br label %138

269:                                              ; preds = %138
  store i32 0, i32* %7, align 4
  br label %270

270:                                              ; preds = %269, %164, %129, %87, %77, %62, %56, %47, %39
  %271 = load i32, i32* %7, align 4
  ret i32 %271
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
