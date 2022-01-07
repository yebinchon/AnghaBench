; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_resource_pool = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32**, i64*, i32**, i32**, i32**, %struct.TYPE_9__*, i32**, i32*, i32**, %struct.TYPE_11__**, i32**, %struct.TYPE_12__**, i32*, i32*, i32** }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_11__**)* }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_12__**)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_resource_pool*)* @destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destruct(%struct.dcn10_resource_pool* %0) #0 {
  %2 = alloca %struct.dcn10_resource_pool*, align 8
  %3 = alloca i32, align 4
  store %struct.dcn10_resource_pool* %0, %struct.dcn10_resource_pool** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %40, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %7 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %5, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %4
  %12 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %13 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 22
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %11
  %22 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %23 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 22
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32* @DCN10STRENC_FROM_STRENC(i32* %29)
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %33 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 22
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
  %44 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %45 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 21
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %51 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 21
  %53 = load i32*, i32** %52, align 8
  %54 = call i32* @TO_DCN10_MPC(i32* %53)
  %55 = call i32 @kfree(i32* %54)
  %56 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %57 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 21
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %49, %43
  %60 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %61 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 20
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %67 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 20
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @kfree(i32* %69)
  %71 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %72 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 20
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %65, %59
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %231, %74
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %78 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ult i32 %76, %80
  br i1 %81, label %82, label %234

82:                                               ; preds = %75
  %83 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %84 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 19
  %86 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %86, i64 %88
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = icmp ne %struct.TYPE_12__* %90, null
  br i1 %91, label %92, label %113

92:                                               ; preds = %82
  %93 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %94 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 19
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %96, i64 %98
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32 (%struct.TYPE_12__**)*, i32 (%struct.TYPE_12__**)** %103, align 8
  %105 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %106 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 19
  %108 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %108, i64 %110
  %112 = call i32 %104(%struct.TYPE_12__** %111)
  br label %113

113:                                              ; preds = %92, %82
  %114 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %115 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 18
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %113
  %124 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %125 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 18
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %3, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = call i32 @dcn10_dpp_destroy(i32** %130)
  br label %132

132:                                              ; preds = %123, %113
  %133 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %134 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 17
  %136 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %136, i64 %138
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = icmp ne %struct.TYPE_11__* %140, null
  br i1 %141, label %142, label %163

142:                                              ; preds = %132
  %143 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %144 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 17
  %146 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %146, i64 %148
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32 (%struct.TYPE_11__**)*, i32 (%struct.TYPE_11__**)** %153, align 8
  %155 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %156 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 17
  %158 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %158, i64 %160
  %162 = call i32 %154(%struct.TYPE_11__** %161)
  br label %163

163:                                              ; preds = %142, %132
  %164 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %165 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 16
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %3, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %191

173:                                              ; preds = %163
  %174 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %175 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 16
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %3, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = call i32* @TO_DCN10_HUBP(i32* %181)
  %183 = call i32 @kfree(i32* %182)
  %184 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %185 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 16
  %187 = load i32**, i32*** %186, align 8
  %188 = load i32, i32* %3, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  store i32* null, i32** %190, align 8
  br label %191

191:                                              ; preds = %173, %163
  %192 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %193 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 15
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %199 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 15
  %201 = call i32 @dal_irq_service_destroy(i32** %200)
  br label %202

202:                                              ; preds = %197, %191
  %203 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %204 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 14
  %206 = load i32**, i32*** %205, align 8
  %207 = load i32, i32* %3, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %230

212:                                              ; preds = %202
  %213 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %214 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 14
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %3, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = call i32* @DCN10TG_FROM_TG(i32* %220)
  %222 = call i32 @kfree(i32* %221)
  %223 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %224 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 14
  %226 = load i32**, i32*** %225, align 8
  %227 = load i32, i32* %3, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  store i32* null, i32** %229, align 8
  br label %230

230:                                              ; preds = %212, %202
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %3, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %3, align 4
  br label %75

234:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %318, %234
  %236 = load i32, i32* %3, align 4
  %237 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %238 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 13
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp ult i32 %236, %242
  br i1 %243, label %244, label %321

244:                                              ; preds = %235
  %245 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %246 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 12
  %248 = load i32**, i32*** %247, align 8
  %249 = load i32, i32* %3, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %248, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %263

254:                                              ; preds = %244
  %255 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %256 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 12
  %258 = load i32**, i32*** %257, align 8
  %259 = load i32, i32* %3, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32*, i32** %258, i64 %260
  %262 = call i32 @dce110_engine_destroy(i32** %261)
  br label %263

263:                                              ; preds = %254, %244
  %264 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %265 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 11
  %267 = load i32**, i32*** %266, align 8
  %268 = load i32, i32* %3, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32*, i32** %267, i64 %269
  %271 = load i32*, i32** %270, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %290

273:                                              ; preds = %263
  %274 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %275 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 11
  %277 = load i32**, i32*** %276, align 8
  %278 = load i32, i32* %3, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32*, i32** %277, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = call i32 @kfree(i32* %281)
  %283 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %284 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 11
  %286 = load i32**, i32*** %285, align 8
  %287 = load i32, i32* %3, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds i32*, i32** %286, i64 %288
  store i32* null, i32** %289, align 8
  br label %290

290:                                              ; preds = %273, %263
  %291 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %292 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 10
  %294 = load i32**, i32*** %293, align 8
  %295 = load i32, i32* %3, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32*, i32** %294, i64 %296
  %298 = load i32*, i32** %297, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %317

300:                                              ; preds = %290
  %301 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %302 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 10
  %304 = load i32**, i32*** %303, align 8
  %305 = load i32, i32* %3, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i32*, i32** %304, i64 %306
  %308 = load i32*, i32** %307, align 8
  %309 = call i32 @kfree(i32* %308)
  %310 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %311 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 10
  %313 = load i32**, i32*** %312, align 8
  %314 = load i32, i32* %3, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds i32*, i32** %313, i64 %315
  store i32* null, i32** %316, align 8
  br label %317

317:                                              ; preds = %300, %290
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %3, align 4
  %320 = add i32 %319, 1
  store i32 %320, i32* %3, align 4
  br label %235

321:                                              ; preds = %235
  store i32 0, i32* %3, align 4
  br label %322

322:                                              ; preds = %349, %321
  %323 = load i32, i32* %3, align 4
  %324 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %325 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = icmp ult i32 %323, %327
  br i1 %328, label %329, label %352

329:                                              ; preds = %322
  %330 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %331 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 9
  %333 = load i64*, i64** %332, align 8
  %334 = load i32, i32* %3, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %329
  %340 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %341 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 9
  %343 = load i64*, i64** %342, align 8
  %344 = load i32, i32* %3, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i64, i64* %343, i64 %345
  %347 = call i32 @dce_aud_destroy(i64* %346)
  br label %348

348:                                              ; preds = %339, %329
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %3, align 4
  %351 = add i32 %350, 1
  store i32 %351, i32* %3, align 4
  br label %322

352:                                              ; preds = %322
  store i32 0, i32* %3, align 4
  br label %353

353:                                              ; preds = %387, %352
  %354 = load i32, i32* %3, align 4
  %355 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %356 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = icmp ult i32 %354, %358
  br i1 %359, label %360, label %390

360:                                              ; preds = %353
  %361 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %362 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 8
  %364 = load i32**, i32*** %363, align 8
  %365 = load i32, i32* %3, align 4
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds i32*, i32** %364, i64 %366
  %368 = load i32*, i32** %367, align 8
  %369 = icmp ne i32* %368, null
  br i1 %369, label %370, label %386

370:                                              ; preds = %360
  %371 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %372 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 8
  %374 = load i32**, i32*** %373, align 8
  %375 = load i32, i32* %3, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds i32*, i32** %374, i64 %376
  %378 = call i32 @dcn10_clock_source_destroy(i32** %377)
  %379 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %380 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 8
  %382 = load i32**, i32*** %381, align 8
  %383 = load i32, i32* %3, align 4
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds i32*, i32** %382, i64 %384
  store i32* null, i32** %385, align 8
  br label %386

386:                                              ; preds = %370, %360
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %3, align 4
  %389 = add i32 %388, 1
  store i32 %389, i32* %3, align 4
  br label %353

390:                                              ; preds = %353
  %391 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %392 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 7
  %394 = load i32*, i32** %393, align 8
  %395 = icmp ne i32* %394, null
  br i1 %395, label %396, label %404

396:                                              ; preds = %390
  %397 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %398 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 7
  %400 = call i32 @dcn10_clock_source_destroy(i32** %399)
  %401 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %402 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 7
  store i32* null, i32** %403, align 8
  br label %404

404:                                              ; preds = %396, %390
  %405 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %406 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 6
  %408 = load i32*, i32** %407, align 8
  %409 = icmp ne i32* %408, null
  br i1 %409, label %410, label %415

410:                                              ; preds = %404
  %411 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %412 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 6
  %414 = call i32 @dce_abm_destroy(i32** %413)
  br label %415

415:                                              ; preds = %410, %404
  %416 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %417 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i32 0, i32 5
  %419 = load i32*, i32** %418, align 8
  %420 = icmp ne i32* %419, null
  br i1 %420, label %421, label %426

421:                                              ; preds = %415
  %422 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %423 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 5
  %425 = call i32 @dce_dmcu_destroy(i32** %424)
  br label %426

426:                                              ; preds = %421, %415
  %427 = load %struct.dcn10_resource_pool*, %struct.dcn10_resource_pool** %2, align 8
  %428 = getelementptr inbounds %struct.dcn10_resource_pool, %struct.dcn10_resource_pool* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 4
  %430 = load i32*, i32** %429, align 8
  %431 = call i32 @kfree(i32* %430)
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @DCN10STRENC_FROM_STRENC(i32*) #1

declare dso_local i32* @TO_DCN10_MPC(i32*) #1

declare dso_local i32 @dcn10_dpp_destroy(i32**) #1

declare dso_local i32* @TO_DCN10_HUBP(i32*) #1

declare dso_local i32 @dal_irq_service_destroy(i32**) #1

declare dso_local i32* @DCN10TG_FROM_TG(i32*) #1

declare dso_local i32 @dce110_engine_destroy(i32**) #1

declare dso_local i32 @dce_aud_destroy(i64*) #1

declare dso_local i32 @dcn10_clock_source_destroy(i32**) #1

declare dso_local i32 @dce_abm_destroy(i32**) #1

declare dso_local i32 @dce_dmcu_destroy(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
