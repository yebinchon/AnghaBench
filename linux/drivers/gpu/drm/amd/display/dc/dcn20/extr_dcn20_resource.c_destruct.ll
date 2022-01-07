; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn20_resource_pool = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32**, i64*, i32**, i32**, %struct.TYPE_9__*, i32**, %struct.TYPE_11__**, i32**, i32**, i32**, i32*, i32**, %struct.TYPE_12__**, i32**, i32*, i32*, i32**, i32** }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_11__**)* }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_12__**)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn20_resource_pool*)* @destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destruct(%struct.dcn20_resource_pool* %0) #0 {
  %2 = alloca %struct.dcn20_resource_pool*, align 8
  %3 = alloca i32, align 4
  store %struct.dcn20_resource_pool* %0, %struct.dcn20_resource_pool** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %40, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %7 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %5, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %4
  %12 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %13 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 26
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %11
  %22 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %23 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 26
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @DCN10STRENC_FROM_STRENC(i32* %29)
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %33 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 26
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %21, %11
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %4

43:                                               ; preds = %4
  %44 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %45 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 24
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %51 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 24
  %53 = load i32*, i32** %52, align 8
  %54 = call i32* @TO_DCN20_MPC(i32* %53)
  %55 = call i32 @kfree(i32* %54)
  %56 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %57 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 24
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %49, %43
  %60 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %61 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 23
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %67 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 23
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @kfree(i32* %69)
  %71 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %72 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 23
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %65, %59
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %172, %74
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %78 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ult i32 %76, %80
  br i1 %81, label %82, label %175

82:                                               ; preds = %75
  %83 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %84 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 22
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %82
  %93 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %94 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 22
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = call i32 @dcn20_dpp_destroy(i32** %99)
  br label %101

101:                                              ; preds = %92, %82
  %102 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %103 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 21
  %105 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %105, i64 %107
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = icmp ne %struct.TYPE_12__* %109, null
  br i1 %110, label %111, label %132

111:                                              ; preds = %101
  %112 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %113 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 21
  %115 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %115, i64 %117
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_12__**)*, i32 (%struct.TYPE_12__**)** %122, align 8
  %124 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %125 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 21
  %127 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %127, i64 %129
  %131 = call i32 %123(%struct.TYPE_12__** %130)
  br label %132

132:                                              ; preds = %111, %101
  %133 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %134 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 20
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %160

142:                                              ; preds = %132
  %143 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %144 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 20
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = call i32* @TO_DCN20_HUBP(i32* %150)
  %152 = call i32 @kfree(i32* %151)
  %153 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %154 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 20
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %3, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  store i32* null, i32** %159, align 8
  br label %160

160:                                              ; preds = %142, %132
  %161 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %162 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 19
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %168 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 19
  %170 = call i32 @dal_irq_service_destroy(i32** %169)
  br label %171

171:                                              ; preds = %166, %160
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %3, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %3, align 4
  br label %75

175:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %176

176:                                              ; preds = %259, %175
  %177 = load i32, i32* %3, align 4
  %178 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %179 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 13
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ult i32 %177, %183
  br i1 %184, label %185, label %262

185:                                              ; preds = %176
  %186 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %187 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 18
  %189 = load i32**, i32*** %188, align 8
  %190 = load i32, i32* %3, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %204

195:                                              ; preds = %185
  %196 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %197 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 18
  %199 = load i32**, i32*** %198, align 8
  %200 = load i32, i32* %3, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  %203 = call i32 @dce110_engine_destroy(i32** %202)
  br label %204

204:                                              ; preds = %195, %185
  %205 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %206 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 17
  %208 = load i32**, i32*** %207, align 8
  %209 = load i32, i32* %3, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %231

214:                                              ; preds = %204
  %215 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %216 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 17
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %3, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @kfree(i32* %222)
  %224 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %225 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 17
  %227 = load i32**, i32*** %226, align 8
  %228 = load i32, i32* %3, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %227, i64 %229
  store i32* null, i32** %230, align 8
  br label %231

231:                                              ; preds = %214, %204
  %232 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %233 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 16
  %235 = load i32**, i32*** %234, align 8
  %236 = load i32, i32* %3, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i32*, i32** %235, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %258

241:                                              ; preds = %231
  %242 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %243 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 16
  %245 = load i32**, i32*** %244, align 8
  %246 = load i32, i32* %3, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @kfree(i32* %249)
  %251 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %252 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 16
  %254 = load i32**, i32*** %253, align 8
  %255 = load i32, i32* %3, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i32*, i32** %254, i64 %256
  store i32* null, i32** %257, align 8
  br label %258

258:                                              ; preds = %241, %231
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %3, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %3, align 4
  br label %176

262:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  br label %263

263:                                              ; preds = %304, %262
  %264 = load i32, i32* %3, align 4
  %265 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %266 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 13
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = icmp ult i32 %264, %270
  br i1 %271, label %272, label %307

272:                                              ; preds = %263
  %273 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %274 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 15
  %276 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %275, align 8
  %277 = load i32, i32* %3, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %276, i64 %278
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %279, align 8
  %281 = icmp ne %struct.TYPE_11__* %280, null
  br i1 %281, label %282, label %303

282:                                              ; preds = %272
  %283 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %284 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 15
  %286 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %285, align 8
  %287 = load i32, i32* %3, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %286, i64 %288
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32 (%struct.TYPE_11__**)*, i32 (%struct.TYPE_11__**)** %293, align 8
  %295 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %296 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 15
  %298 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %297, align 8
  %299 = load i32, i32* %3, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %298, i64 %300
  %302 = call i32 %294(%struct.TYPE_11__** %301)
  br label %303

303:                                              ; preds = %282, %272
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %3, align 4
  %306 = add i32 %305, 1
  store i32 %306, i32* %3, align 4
  br label %263

307:                                              ; preds = %263
  store i32 0, i32* %3, align 4
  br label %308

308:                                              ; preds = %346, %307
  %309 = load i32, i32* %3, align 4
  %310 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %311 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 13
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = icmp ult i32 %309, %315
  br i1 %316, label %317, label %349

317:                                              ; preds = %308
  %318 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %319 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 14
  %321 = load i32**, i32*** %320, align 8
  %322 = load i32, i32* %3, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds i32*, i32** %321, i64 %323
  %325 = load i32*, i32** %324, align 8
  %326 = icmp ne i32* %325, null
  br i1 %326, label %327, label %345

327:                                              ; preds = %317
  %328 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %329 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 14
  %331 = load i32**, i32*** %330, align 8
  %332 = load i32, i32* %3, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i32*, i32** %331, i64 %333
  %335 = load i32*, i32** %334, align 8
  %336 = call i32* @DCN10TG_FROM_TG(i32* %335)
  %337 = call i32 @kfree(i32* %336)
  %338 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %339 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 14
  %341 = load i32**, i32*** %340, align 8
  %342 = load i32, i32* %3, align 4
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds i32*, i32** %341, i64 %343
  store i32* null, i32** %344, align 8
  br label %345

345:                                              ; preds = %327, %317
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %3, align 4
  %348 = add i32 %347, 1
  store i32 %348, i32* %3, align 4
  br label %308

349:                                              ; preds = %308
  store i32 0, i32* %3, align 4
  br label %350

350:                                              ; preds = %416, %349
  %351 = load i32, i32* %3, align 4
  %352 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %353 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 13
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 4
  %358 = icmp ult i32 %351, %357
  br i1 %358, label %359, label %419

359:                                              ; preds = %350
  %360 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %361 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 12
  %363 = load i32**, i32*** %362, align 8
  %364 = load i32, i32* %3, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds i32*, i32** %363, i64 %365
  %367 = load i32*, i32** %366, align 8
  %368 = icmp ne i32* %367, null
  br i1 %368, label %369, label %387

369:                                              ; preds = %359
  %370 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %371 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 12
  %373 = load i32**, i32*** %372, align 8
  %374 = load i32, i32* %3, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds i32*, i32** %373, i64 %375
  %377 = load i32*, i32** %376, align 8
  %378 = call i32* @TO_DCN20_DWBC(i32* %377)
  %379 = call i32 @kfree(i32* %378)
  %380 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %381 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 12
  %383 = load i32**, i32*** %382, align 8
  %384 = load i32, i32* %3, align 4
  %385 = zext i32 %384 to i64
  %386 = getelementptr inbounds i32*, i32** %383, i64 %385
  store i32* null, i32** %386, align 8
  br label %387

387:                                              ; preds = %369, %359
  %388 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %389 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 11
  %391 = load i32**, i32*** %390, align 8
  %392 = load i32, i32* %3, align 4
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds i32*, i32** %391, i64 %393
  %395 = load i32*, i32** %394, align 8
  %396 = icmp ne i32* %395, null
  br i1 %396, label %397, label %415

397:                                              ; preds = %387
  %398 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %399 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 11
  %401 = load i32**, i32*** %400, align 8
  %402 = load i32, i32* %3, align 4
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds i32*, i32** %401, i64 %403
  %405 = load i32*, i32** %404, align 8
  %406 = call i32* @TO_DCN20_MMHUBBUB(i32* %405)
  %407 = call i32 @kfree(i32* %406)
  %408 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %409 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 11
  %411 = load i32**, i32*** %410, align 8
  %412 = load i32, i32* %3, align 4
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds i32*, i32** %411, i64 %413
  store i32* null, i32** %414, align 8
  br label %415

415:                                              ; preds = %397, %387
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %3, align 4
  %418 = add i32 %417, 1
  store i32 %418, i32* %3, align 4
  br label %350

419:                                              ; preds = %350
  store i32 0, i32* %3, align 4
  br label %420

420:                                              ; preds = %447, %419
  %421 = load i32, i32* %3, align 4
  %422 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %423 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = icmp ult i32 %421, %425
  br i1 %426, label %427, label %450

427:                                              ; preds = %420
  %428 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %429 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 10
  %431 = load i64*, i64** %430, align 8
  %432 = load i32, i32* %3, align 4
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds i64, i64* %431, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %446

437:                                              ; preds = %427
  %438 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %439 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i32 0, i32 10
  %441 = load i64*, i64** %440, align 8
  %442 = load i32, i32* %3, align 4
  %443 = zext i32 %442 to i64
  %444 = getelementptr inbounds i64, i64* %441, i64 %443
  %445 = call i32 @dce_aud_destroy(i64* %444)
  br label %446

446:                                              ; preds = %437, %427
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %3, align 4
  %449 = add i32 %448, 1
  store i32 %449, i32* %3, align 4
  br label %420

450:                                              ; preds = %420
  store i32 0, i32* %3, align 4
  br label %451

451:                                              ; preds = %485, %450
  %452 = load i32, i32* %3, align 4
  %453 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %454 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 4
  %457 = icmp ult i32 %452, %456
  br i1 %457, label %458, label %488

458:                                              ; preds = %451
  %459 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %460 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 9
  %462 = load i32**, i32*** %461, align 8
  %463 = load i32, i32* %3, align 4
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds i32*, i32** %462, i64 %464
  %466 = load i32*, i32** %465, align 8
  %467 = icmp ne i32* %466, null
  br i1 %467, label %468, label %484

468:                                              ; preds = %458
  %469 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %470 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 9
  %472 = load i32**, i32*** %471, align 8
  %473 = load i32, i32* %3, align 4
  %474 = zext i32 %473 to i64
  %475 = getelementptr inbounds i32*, i32** %472, i64 %474
  %476 = call i32 @dcn20_clock_source_destroy(i32** %475)
  %477 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %478 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 9
  %480 = load i32**, i32*** %479, align 8
  %481 = load i32, i32* %3, align 4
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds i32*, i32** %480, i64 %482
  store i32* null, i32** %483, align 8
  br label %484

484:                                              ; preds = %468, %458
  br label %485

485:                                              ; preds = %484
  %486 = load i32, i32* %3, align 4
  %487 = add i32 %486, 1
  store i32 %487, i32* %3, align 4
  br label %451

488:                                              ; preds = %451
  %489 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %490 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %490, i32 0, i32 8
  %492 = load i32*, i32** %491, align 8
  %493 = icmp ne i32* %492, null
  br i1 %493, label %494, label %502

494:                                              ; preds = %488
  %495 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %496 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %496, i32 0, i32 8
  %498 = call i32 @dcn20_clock_source_destroy(i32** %497)
  %499 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %500 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %500, i32 0, i32 8
  store i32* null, i32** %501, align 8
  br label %502

502:                                              ; preds = %494, %488
  %503 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %504 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 7
  %506 = load i32*, i32** %505, align 8
  %507 = icmp ne i32* %506, null
  br i1 %507, label %508, label %513

508:                                              ; preds = %502
  %509 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %510 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 7
  %512 = call i32 @dce_abm_destroy(i32** %511)
  br label %513

513:                                              ; preds = %508, %502
  %514 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %515 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %515, i32 0, i32 6
  %517 = load i32*, i32** %516, align 8
  %518 = icmp ne i32* %517, null
  br i1 %518, label %519, label %524

519:                                              ; preds = %513
  %520 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %521 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %521, i32 0, i32 6
  %523 = call i32 @dce_dmcu_destroy(i32** %522)
  br label %524

524:                                              ; preds = %519, %513
  %525 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %526 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %526, i32 0, i32 5
  %528 = load i32*, i32** %527, align 8
  %529 = icmp ne i32* %528, null
  br i1 %529, label %530, label %535

530:                                              ; preds = %524
  %531 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %532 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 5
  %534 = call i32 @dcn_dccg_destroy(i32** %533)
  br label %535

535:                                              ; preds = %530, %524
  %536 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %537 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %537, i32 0, i32 4
  %539 = load i32*, i32** %538, align 8
  %540 = icmp ne i32* %539, null
  br i1 %540, label %541, label %546

541:                                              ; preds = %535
  %542 = load %struct.dcn20_resource_pool*, %struct.dcn20_resource_pool** %2, align 8
  %543 = getelementptr inbounds %struct.dcn20_resource_pool, %struct.dcn20_resource_pool* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %543, i32 0, i32 4
  %545 = call i32 @dcn20_pp_smu_destroy(i32** %544)
  br label %546

546:                                              ; preds = %541, %535
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @DCN10STRENC_FROM_STRENC(i32*) #1

declare dso_local i32* @TO_DCN20_MPC(i32*) #1

declare dso_local i32 @dcn20_dpp_destroy(i32**) #1

declare dso_local i32* @TO_DCN20_HUBP(i32*) #1

declare dso_local i32 @dal_irq_service_destroy(i32**) #1

declare dso_local i32 @dce110_engine_destroy(i32**) #1

declare dso_local i32* @DCN10TG_FROM_TG(i32*) #1

declare dso_local i32* @TO_DCN20_DWBC(i32*) #1

declare dso_local i32* @TO_DCN20_MMHUBBUB(i32*) #1

declare dso_local i32 @dce_aud_destroy(i64*) #1

declare dso_local i32 @dcn20_clock_source_destroy(i32**) #1

declare dso_local i32 @dce_abm_destroy(i32**) #1

declare dso_local i32 @dce_dmcu_destroy(i32**) #1

declare dso_local i32 @dcn_dccg_destroy(i32**) #1

declare dso_local i32 @dcn20_pp_smu_destroy(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
