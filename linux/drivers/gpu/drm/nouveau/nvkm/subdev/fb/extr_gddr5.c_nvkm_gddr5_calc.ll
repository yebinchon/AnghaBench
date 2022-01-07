; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gddr5.c_nvkm_gddr5_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gddr5.c_nvkm_gddr5_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_gddr5_calc(%struct.nvkm_ram* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_ram*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %21 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 1000000
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %19, align 4
  %25 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %26 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %35 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %80 [
    i32 17, label %40
  ]

40:                                               ; preds = %2
  %41 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %42 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %48 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %7, align 4
  %53 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %54 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %60 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %59, i32 0, i32 3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %10, align 4
  %65 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %66 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  %71 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %72 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 12
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %12, align 4
  br label %83

80:                                               ; preds = %2
  %81 = load i32, i32* @ENOSYS, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %419

83:                                               ; preds = %40
  %84 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %85 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %146 [
    i32 32, label %90
  ]

90:                                               ; preds = %83
  %91 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %92 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 7
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 3968
  %100 = ashr i32 %99, 7
  store i32 %100, i32* %13, align 4
  %101 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %102 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 7
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 31
  store i32 %109, i32* %14, align 4
  %110 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %111 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 7
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 8323072
  %119 = ashr i32 %118, 16
  store i32 %119, i32* %15, align 4
  %120 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %121 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %120, i32 0, i32 3
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %125, i32* %126, align 4
  %127 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %128 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %127, i32 0, i32 3
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %132, i32* %133, align 4
  %134 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %135 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %17, align 4
  %140 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %141 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %140, i32 0, i32 3
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %18, align 4
  br label %149

146:                                              ; preds = %83
  %147 = load i32, i32* @ENOSYS, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %419

149:                                              ; preds = %90
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %167, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %13, align 4
  %154 = icmp sgt i32 %153, 7
  br i1 %154, label %167, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %14, align 4
  %157 = icmp slt i32 %156, 5
  br i1 %157, label %167, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %14, align 4
  %160 = icmp sgt i32 %159, 36
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %15, align 4
  %163 = icmp slt i32 %162, 4
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %15, align 4
  %166 = icmp sgt i32 %165, 35
  br i1 %166, label %167, label %170

167:                                              ; preds = %164, %161, %158, %155, %152, %149
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %419

170:                                              ; preds = %164
  %171 = load i32, i32* %14, align 4
  %172 = sub nsw i32 %171, 5
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %15, align 4
  %174 = sub nsw i32 %173, 4
  store i32 %174, i32* %15, align 4
  %175 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %176 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, -3968
  store i32 %180, i32* %178, align 4
  %181 = load i32, i32* %15, align 4
  %182 = and i32 %181, 15
  %183 = shl i32 %182, 8
  %184 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %185 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %183
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* %14, align 4
  %191 = and i32 %190, 15
  %192 = shl i32 %191, 3
  %193 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %194 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %192
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* %13, align 4
  %200 = and i32 %199, 7
  %201 = shl i32 %200, 0
  %202 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %203 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %201
  store i32 %207, i32* %205, align 4
  %208 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %209 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, -192
  store i32 %213, i32* %211, align 4
  %214 = load i32, i32* %8, align 4
  %215 = and i32 %214, 1
  %216 = shl i32 %215, 7
  %217 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %218 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %216
  store i32 %222, i32* %220, align 4
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, 3
  %226 = shl i32 %225, 4
  %227 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %228 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %226
  store i32 %232, i32* %230, align 4
  %233 = load i32, i32* %17, align 4
  %234 = and i32 %233, 3
  %235 = shl i32 %234, 2
  %236 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %237 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %235
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* %18, align 4
  %243 = and i32 %242, 3
  %244 = shl i32 %243, 0
  %245 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %246 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %244
  store i32 %250, i32* %248, align 4
  %251 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %252 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %257 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* %5, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %277

260:                                              ; preds = %170
  %261 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %262 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, -49
  store i32 %266, i32* %264, align 4
  %267 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, 3
  %270 = shl i32 %269, 4
  %271 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %272 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = or i32 %275, %270
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %260, %170
  %278 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %279 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %278, i32 0, i32 1
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 3
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %282, -33
  store i32 %283, i32* %281, align 4
  %284 = load i32, i32* %19, align 4
  %285 = and i32 %284, 1
  %286 = shl i32 %285, 5
  %287 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %288 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 3
  %291 = load i32, i32* %290, align 4
  %292 = or i32 %291, %286
  store i32 %292, i32* %290, align 4
  %293 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %294 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 5
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, -5
  store i32 %298, i32* %296, align 4
  %299 = load i32, i32* %12, align 4
  %300 = shl i32 %299, 2
  %301 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %302 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 5
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %300
  store i32 %306, i32* %304, align 4
  %307 = load i32, i32* %11, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %277
  %310 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %311 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 6
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %314, 4080
  %316 = ashr i32 %315, 4
  store i32 %316, i32* %11, align 4
  br label %317

317:                                              ; preds = %309, %277
  %318 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %319 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 6
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, 1
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %317
  store i32 1, i32* %6, align 4
  br label %326

326:                                              ; preds = %325, %317
  %327 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %328 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 6
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, -4082
  store i32 %332, i32* %330, align 4
  %333 = load i32, i32* %11, align 4
  %334 = and i32 %333, 255
  %335 = shl i32 %334, 4
  %336 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %337 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 6
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %340, %335
  store i32 %341, i32* %339, align 4
  %342 = load i32, i32* %6, align 4
  %343 = and i32 %342, 1
  %344 = shl i32 %343, 0
  %345 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %346 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 6
  %349 = load i32, i32* %348, align 4
  %350 = or i32 %349, %344
  store i32 %350, i32* %348, align 4
  %351 = load i32, i32* %10, align 4
  %352 = call i64 @NOTE00(i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %370

354:                                              ; preds = %326
  %355 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %356 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %355, i32 0, i32 1
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 7
  %359 = load i32, i32* %358, align 4
  %360 = and i32 %359, -769
  store i32 %360, i32* %358, align 4
  %361 = load i32, i32* %10, align 4
  %362 = and i32 %361, 3
  %363 = shl i32 %362, 8
  %364 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %365 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 7
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %363
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %354, %326
  %371 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %372 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %371, i32 0, i32 1
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 7
  %375 = load i32, i32* %374, align 4
  %376 = and i32 %375, -137
  store i32 %376, i32* %374, align 4
  %377 = load i32, i32* %9, align 4
  %378 = and i32 %377, 1
  %379 = shl i32 %378, 7
  %380 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %381 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 7
  %384 = load i32, i32* %383, align 4
  %385 = or i32 %384, %379
  store i32 %385, i32* %383, align 4
  %386 = load i32, i32* %7, align 4
  %387 = and i32 %386, 1
  %388 = shl i32 %387, 3
  %389 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %390 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %389, i32 0, i32 1
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 7
  %393 = load i32, i32* %392, align 4
  %394 = or i32 %393, %388
  store i32 %394, i32* %392, align 4
  %395 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %396 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 8
  %399 = load i32, i32* %398, align 4
  %400 = and i32 %399, -4
  store i32 %400, i32* %398, align 4
  %401 = load i32, i32* %15, align 4
  %402 = and i32 %401, 16
  %403 = ashr i32 %402, 3
  %404 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %405 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %404, i32 0, i32 1
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 8
  %408 = load i32, i32* %407, align 4
  %409 = or i32 %408, %403
  store i32 %409, i32* %407, align 4
  %410 = load i32, i32* %14, align 4
  %411 = and i32 %410, 16
  %412 = ashr i32 %411, 4
  %413 = load %struct.nvkm_ram*, %struct.nvkm_ram** %4, align 8
  %414 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %413, i32 0, i32 1
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 8
  %417 = load i32, i32* %416, align 4
  %418 = or i32 %417, %412
  store i32 %418, i32* %416, align 4
  store i32 0, i32* %3, align 4
  br label %419

419:                                              ; preds = %370, %167, %146, %80
  %420 = load i32, i32* %3, align 4
  ret i32 %420
}

declare dso_local i64 @NOTE00(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
