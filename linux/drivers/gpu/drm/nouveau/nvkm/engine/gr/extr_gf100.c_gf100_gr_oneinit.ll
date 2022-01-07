; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.gf100_gr = type { i32, i32*, i32, i32*, i32**, i32*, i64**, i64, i64, %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"FECS\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"GPCCS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gr*)* @gf100_gr_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_gr_oneinit(%struct.nvkm_gr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_gr*, align 8
  %4 = alloca %struct.gf100_gr*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %3, align 8
  %10 = load %struct.nvkm_gr*, %struct.nvkm_gr** %3, align 8
  %11 = call %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr* %10)
  store %struct.gf100_gr* %11, %struct.gf100_gr** %4, align 8
  %12 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %13 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %5, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %6, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %20 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %21 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %20, i32 0, i32 14
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = call i32 @nvkm_falcon_v1_new(%struct.nvkm_subdev* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4231168, i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %2, align 4
  br label %278

28:                                               ; preds = %1
  %29 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %30 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %29, i32 0, i32 14
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %34 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %35 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %34, i32 0, i32 13
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = call i32 @nvkm_falcon_v1_new(%struct.nvkm_subdev* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 4300800, i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %2, align 4
  br label %278

42:                                               ; preds = %28
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %44 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nvkm_pmu_pgob(i32 %45, i32 0)
  %47 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %48 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %47, i32 0, i32 9
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %50, align 8
  %52 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %53 = call i32 %51(%struct.gf100_gr* %52)
  %54 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %55 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %54, i32 0, i32 12
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %57 = call i32 @nvkm_rd32(%struct.nvkm_device* %56, i32 4232708)
  %58 = and i32 %57, 31
  %59 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %60 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %256, %42
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %64 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %259

67:                                               ; preds = %61
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @GPC_UNIT(i32 %69, i32 9736)
  %71 = call i32 @nvkm_rd32(%struct.nvkm_device* %68, i32 %70)
  %72 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %73 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %79 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %82 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @max(i32 %80, i32 %87)
  %89 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %90 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %89, i32 0, i32 11
  store i32 %88, i32* %90, align 4
  %91 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %92 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %99 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %103 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %102, i32 0, i32 9
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %108 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %252, %67
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %116 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %114, %121
  br i1 %122, label %123, label %255

123:                                              ; preds = %113
  %124 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %126, 4
  %128 = add nsw i32 3120, %127
  %129 = call i32 @GPC_UNIT(i32 %125, i32 %128)
  %130 = call i32 @nvkm_rd32(%struct.nvkm_device* %124, i32 %129)
  %131 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %132 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %131, i32 0, i32 4
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %130, i32* %140, align 4
  %141 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %142 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %141, i32 0, i32 4
  %143 = load i32**, i32*** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32*, i32** %143, i64 %145
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %123
  br label %252

154:                                              ; preds = %123
  %155 = load i32, i32* %8, align 4
  %156 = shl i32 1, %155
  %157 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %158 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %156
  store i32 %164, i32* %162, align 4
  %165 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %166 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %165, i32 0, i32 4
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @hweight8(i32 %175)
  %177 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %178 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %177, i32 0, i32 6
  %179 = load i64**, i64*** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64*, i64** %179, i64 %181
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  store i64 %176, i64* %186, align 8
  %187 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %188 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %207, label %191

191:                                              ; preds = %154
  %192 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %193 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %192, i32 0, i32 7
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %196 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %195, i32 0, i32 6
  %197 = load i64**, i64*** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64*, i64** %197, i64 %199
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = icmp sgt i64 %194, %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %191, %154
  %208 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %209 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %208, i32 0, i32 6
  %210 = load i64**, i64*** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64*, i64** %210, i64 %212
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %220 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %219, i32 0, i32 7
  store i64 %218, i64* %220, align 8
  br label %221

221:                                              ; preds = %207, %191
  %222 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %223 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %222, i32 0, i32 8
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %226 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %225, i32 0, i32 6
  %227 = load i64**, i64*** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64*, i64** %227, i64 %229
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = icmp slt i64 %224, %235
  br i1 %236, label %237, label %251

237:                                              ; preds = %221
  %238 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %239 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %238, i32 0, i32 6
  %240 = load i64**, i64*** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64*, i64** %240, i64 %242
  %244 = load i64*, i64** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64, i64* %244, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %250 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %249, i32 0, i32 8
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %237, %221
  br label %252

252:                                              ; preds = %251, %153
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %8, align 4
  br label %113

255:                                              ; preds = %113
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %7, align 4
  br label %61

259:                                              ; preds = %61
  %260 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %261 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @memset(i32 %262, i32 255, i32 4)
  %264 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %265 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %264, i32 0, i32 9
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 2
  %268 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %267, align 8
  %269 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %270 = call i32 %268(%struct.gf100_gr* %269)
  %271 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %272 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %271, i32 0, i32 9
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  %275 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %274, align 8
  %276 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %277 = call i32 %275(%struct.gf100_gr* %276)
  store i32 0, i32* %2, align 4
  br label %278

278:                                              ; preds = %259, %40, %26
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_falcon_v1_new(%struct.nvkm_subdev*, i8*, i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nvkm_pmu_pgob(i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @GPC_UNIT(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @hweight8(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
