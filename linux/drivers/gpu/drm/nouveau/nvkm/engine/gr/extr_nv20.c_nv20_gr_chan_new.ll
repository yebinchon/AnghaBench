; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv20.c_nv20_gr_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv20.c_nv20_gr_chan_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv20_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nv20_gr_chan = type { i32, i32, %struct.nvkm_object, %struct.nv20_gr* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv20_gr_chan = common dso_local global i32 0, align 4
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gr*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)* @nv20_gr_chan_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv20_gr_chan_new(%struct.nvkm_gr* %0, %struct.nvkm_fifo_chan* %1, %struct.nvkm_oclass* %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_gr*, align 8
  %7 = alloca %struct.nvkm_fifo_chan*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca %struct.nvkm_object**, align 8
  %10 = alloca %struct.nv20_gr*, align 8
  %11 = alloca %struct.nv20_gr_chan*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %6, align 8
  store %struct.nvkm_fifo_chan* %1, %struct.nvkm_fifo_chan** %7, align 8
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %8, align 8
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %9, align 8
  %14 = load %struct.nvkm_gr*, %struct.nvkm_gr** %6, align 8
  %15 = call %struct.nv20_gr* @nv20_gr(%struct.nvkm_gr* %14)
  store %struct.nv20_gr* %15, %struct.nv20_gr** %10, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.nv20_gr_chan* @kzalloc(i32 24, i32 %16)
  store %struct.nv20_gr_chan* %17, %struct.nv20_gr_chan** %11, align 8
  %18 = icmp ne %struct.nv20_gr_chan* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %283

22:                                               ; preds = %4
  %23 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %24 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %25 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %24, i32 0, i32 2
  %26 = call i32 @nvkm_object_ctor(i32* @nv20_gr_chan, %struct.nvkm_oclass* %23, %struct.nvkm_object* %25)
  %27 = load %struct.nv20_gr*, %struct.nv20_gr** %10, align 8
  %28 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %29 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %28, i32 0, i32 3
  store %struct.nv20_gr* %27, %struct.nv20_gr** %29, align 8
  %30 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %31 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %34 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %36 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %35, i32 0, i32 2
  %37 = load %struct.nvkm_object**, %struct.nvkm_object*** %9, align 8
  store %struct.nvkm_object* %36, %struct.nvkm_object** %37, align 8
  %38 = load %struct.nv20_gr*, %struct.nv20_gr** %10, align 8
  %39 = getelementptr inbounds %struct.nv20_gr, %struct.nv20_gr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %45 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %46 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %45, i32 0, i32 1
  %47 = call i32 @nvkm_memory_new(i32 %43, i32 %44, i32 14320, i32 16, i32 1, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %22
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %283

52:                                               ; preds = %22
  %53 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %54 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nvkm_kmap(i32 %55)
  %57 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %58 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %61 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 24
  %64 = or i32 1, %63
  %65 = call i32 @nvkm_wo32(i32 %59, i32 0, i32 %64)
  %66 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %67 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nvkm_wo32(i32 %68, i32 828, i32 -65536)
  %70 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %71 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nvkm_wo32(i32 %72, i32 928, i32 268369920)
  %74 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %75 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @nvkm_wo32(i32 %76, i32 932, i32 268369920)
  %78 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %79 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nvkm_wo32(i32 %80, i32 1148, i32 257)
  %82 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %83 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @nvkm_wo32(i32 %84, i32 1168, i32 273)
  %86 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %87 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @nvkm_wo32(i32 %88, i32 1192, i32 1145044992)
  store i32 1236, i32* %13, align 4
  br label %90

90:                                               ; preds = %99, %52
  %91 = load i32, i32* %13, align 4
  %92 = icmp sle i32 %91, 1248
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %95 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @nvkm_wo32(i32 %96, i32 %97, i32 197379)
  br label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 4
  store i32 %101, i32* %13, align 4
  br label %90

102:                                              ; preds = %90
  store i32 1268, i32* %13, align 4
  br label %103

103:                                              ; preds = %112, %102
  %104 = load i32, i32* %13, align 4
  %105 = icmp sle i32 %104, 1280
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %108 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @nvkm_wo32(i32 %109, i32 %110, i32 524288)
  br label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 4
  store i32 %114, i32* %13, align 4
  br label %103

115:                                              ; preds = %103
  store i32 1292, i32* %13, align 4
  br label %116

116:                                              ; preds = %125, %115
  %117 = load i32, i32* %13, align 4
  %118 = icmp sle i32 %117, 1304
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %121 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @nvkm_wo32(i32 %122, i32 %123, i32 16850944)
  br label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 4
  store i32 %127, i32* %13, align 4
  br label %116

128:                                              ; preds = %116
  store i32 1308, i32* %13, align 4
  br label %129

129:                                              ; preds = %138, %128
  %130 = load i32, i32* %13, align 4
  %131 = icmp sle i32 %130, 1320
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %134 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @nvkm_wo32(i32 %135, i32 %136, i32 67000)
  br label %138

138:                                              ; preds = %132
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 4
  store i32 %140, i32* %13, align 4
  br label %129

141:                                              ; preds = %129
  store i32 1324, i32* %13, align 4
  br label %142

142:                                              ; preds = %151, %141
  %143 = load i32, i32* %13, align 4
  %144 = icmp sle i32 %143, 1336
  br i1 %144, label %145, label %154

145:                                              ; preds = %142
  %146 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %147 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @nvkm_wo32(i32 %148, i32 %149, i32 524296)
  br label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 4
  store i32 %153, i32* %13, align 4
  br label %142

154:                                              ; preds = %142
  store i32 1372, i32* %13, align 4
  br label %155

155:                                              ; preds = %164, %154
  %156 = load i32, i32* %13, align 4
  %157 = icmp sle i32 %156, 1432
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %160 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @nvkm_wo32(i32 %161, i32 %162, i32 134152192)
  br label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 4
  store i32 %166, i32* %13, align 4
  br label %155

167:                                              ; preds = %155
  %168 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %169 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @nvkm_wo32(i32 %170, i32 1444, i32 1266679807)
  %172 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %173 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @nvkm_wo32(i32 %174, i32 1532, i32 1)
  %176 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %177 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @nvkm_wo32(i32 %178, i32 1540, i32 16384)
  %180 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %181 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @nvkm_wo32(i32 %182, i32 1552, i32 1)
  %184 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %185 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @nvkm_wo32(i32 %186, i32 1560, i32 262144)
  %188 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %189 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @nvkm_wo32(i32 %190, i32 1564, i32 65536)
  store i32 7196, i32* %13, align 4
  br label %192

192:                                              ; preds = %214, %167
  %193 = load i32, i32* %13, align 4
  %194 = icmp sle i32 %193, 9356
  br i1 %194, label %195, label %217

195:                                              ; preds = %192
  %196 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %197 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 0
  %201 = call i32 @nvkm_wo32(i32 %198, i32 %200, i32 275779577)
  %202 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %203 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 4
  %207 = call i32 @nvkm_wo32(i32 %204, i32 %206, i32 70649964)
  %208 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %209 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %13, align 4
  %212 = add nsw i32 %211, 8
  %213 = call i32 @nvkm_wo32(i32 %210, i32 %212, i32 786459)
  br label %214

214:                                              ; preds = %195
  %215 = load i32, i32* %13, align 4
  %216 = add nsw i32 %215, 16
  store i32 %216, i32* %13, align 4
  br label %192

217:                                              ; preds = %192
  %218 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %219 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @nvkm_wo32(i32 %220, i32 10268, i32 1065353216)
  %222 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %223 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @nvkm_wo32(i32 %224, i32 10288, i32 1065353216)
  %226 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %227 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @nvkm_wo32(i32 %228, i32 10332, i32 1073741824)
  %230 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %231 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @nvkm_wo32(i32 %232, i32 10336, i32 1065353216)
  %234 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %235 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @nvkm_wo32(i32 %236, i32 10340, i32 1056964608)
  %238 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %239 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @nvkm_wo32(i32 %240, i32 10348, i32 1073741824)
  %242 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %243 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @nvkm_wo32(i32 %244, i32 10352, i32 1065353216)
  %246 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %247 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @nvkm_wo32(i32 %248, i32 10360, i32 -1082130432)
  %250 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %251 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @nvkm_wo32(i32 %252, i32 10368, i32 -1082130432)
  %254 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %255 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @nvkm_wo32(i32 %256, i32 13476, i32 1040384)
  %258 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %259 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @nvkm_wo32(i32 %260, i32 13616, i32 1016)
  %262 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %263 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @nvkm_wo32(i32 %264, i32 13632, i32 3137536)
  store i32 13660, i32* %13, align 4
  br label %266

266:                                              ; preds = %275, %217
  %267 = load i32, i32* %13, align 4
  %268 = icmp sle i32 %267, 13688
  br i1 %268, label %269, label %278

269:                                              ; preds = %266
  %270 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %271 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %13, align 4
  %274 = call i32 @nvkm_wo32(i32 %272, i32 %273, i32 1856124)
  br label %275

275:                                              ; preds = %269
  %276 = load i32, i32* %13, align 4
  %277 = add nsw i32 %276, 4
  store i32 %277, i32* %13, align 4
  br label %266

278:                                              ; preds = %266
  %279 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %280 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @nvkm_done(i32 %281)
  store i32 0, i32* %5, align 4
  br label %283

283:                                              ; preds = %278, %50, %19
  %284 = load i32, i32* %5, align 4
  ret i32 %284
}

declare dso_local %struct.nv20_gr* @nv20_gr(%struct.nvkm_gr*) #1

declare dso_local %struct.nv20_gr_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

declare dso_local i32 @nvkm_memory_new(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @nvkm_wo32(i32, i32, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
