; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv25.c_nv25_gr_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv25.c_nv25_gr_chan_new.c"
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
@nv25_gr_chan = common dso_local global i32 0, align 4
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gr*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)* @nv25_gr_chan_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv25_gr_chan_new(%struct.nvkm_gr* %0, %struct.nvkm_fifo_chan* %1, %struct.nvkm_oclass* %2, %struct.nvkm_object** %3) #0 {
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
  br label %319

22:                                               ; preds = %4
  %23 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %24 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %25 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %24, i32 0, i32 2
  %26 = call i32 @nvkm_object_ctor(i32* @nv25_gr_chan, %struct.nvkm_oclass* %23, %struct.nvkm_object* %25)
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
  %47 = call i32 @nvkm_memory_new(i32 %43, i32 %44, i32 14116, i32 16, i32 1, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %22
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %319

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
  %65 = call i32 @nvkm_wo32(i32 %59, i32 40, i32 %64)
  %66 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %67 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @nvkm_wo32(i32 %68, i32 860, i32 -65536)
  %70 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %71 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nvkm_wo32(i32 %72, i32 960, i32 268369920)
  %74 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %75 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @nvkm_wo32(i32 %76, i32 964, i32 268369920)
  %78 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %79 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nvkm_wo32(i32 %80, i32 1180, i32 257)
  %82 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %83 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @nvkm_wo32(i32 %84, i32 1200, i32 273)
  %86 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %87 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @nvkm_wo32(i32 %88, i32 1224, i32 128)
  %90 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %91 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @nvkm_wo32(i32 %92, i32 1228, i32 -65536)
  %94 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %95 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @nvkm_wo32(i32 %96, i32 1232, i32 1)
  %98 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %99 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @nvkm_wo32(i32 %100, i32 1252, i32 1145044992)
  %102 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %103 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @nvkm_wo32(i32 %104, i32 1276, i32 1266679808)
  store i32 1296, i32* %13, align 4
  br label %106

106:                                              ; preds = %115, %52
  %107 = load i32, i32* %13, align 4
  %108 = icmp sle i32 %107, 1308
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %111 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @nvkm_wo32(i32 %112, i32 %113, i32 197379)
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 4
  store i32 %117, i32* %13, align 4
  br label %106

118:                                              ; preds = %106
  store i32 1328, i32* %13, align 4
  br label %119

119:                                              ; preds = %128, %118
  %120 = load i32, i32* %13, align 4
  %121 = icmp sle i32 %120, 1340
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %124 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @nvkm_wo32(i32 %125, i32 %126, i32 524288)
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 4
  store i32 %130, i32* %13, align 4
  br label %119

131:                                              ; preds = %119
  store i32 1352, i32* %13, align 4
  br label %132

132:                                              ; preds = %141, %131
  %133 = load i32, i32* %13, align 4
  %134 = icmp sle i32 %133, 1364
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %137 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @nvkm_wo32(i32 %138, i32 %139, i32 16850944)
  br label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %13, align 4
  br label %132

144:                                              ; preds = %132
  store i32 1368, i32* %13, align 4
  br label %145

145:                                              ; preds = %154, %144
  %146 = load i32, i32* %13, align 4
  %147 = icmp sle i32 %146, 1380
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %150 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @nvkm_wo32(i32 %151, i32 %152, i32 67000)
  br label %154

154:                                              ; preds = %148
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 4
  store i32 %156, i32* %13, align 4
  br label %145

157:                                              ; preds = %145
  store i32 1384, i32* %13, align 4
  br label %158

158:                                              ; preds = %167, %157
  %159 = load i32, i32* %13, align 4
  %160 = icmp sle i32 %159, 1396
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %163 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @nvkm_wo32(i32 %164, i32 %165, i32 524296)
  br label %167

167:                                              ; preds = %161
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 4
  store i32 %169, i32* %13, align 4
  br label %158

170:                                              ; preds = %158
  store i32 1432, i32* %13, align 4
  br label %171

171:                                              ; preds = %180, %170
  %172 = load i32, i32* %13, align 4
  %173 = icmp sle i32 %172, 1492
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %176 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @nvkm_wo32(i32 %177, i32 %178, i32 134152192)
  br label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 4
  store i32 %182, i32* %13, align 4
  br label %171

183:                                              ; preds = %171
  %184 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %185 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @nvkm_wo32(i32 %186, i32 1504, i32 1266679807)
  %188 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %189 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @nvkm_wo32(i32 %190, i32 1568, i32 128)
  %192 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %193 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @nvkm_wo32(i32 %194, i32 1572, i32 807407616)
  %196 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %197 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @nvkm_wo32(i32 %198, i32 1576, i32 1885360192)
  %200 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %201 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @nvkm_wo32(i32 %202, i32 1580, i32 -1331654528)
  %204 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %205 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @nvkm_wo32(i32 %206, i32 1584, i32 -253701952)
  %208 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %209 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @nvkm_wo32(i32 %210, i32 1636, i32 1)
  %212 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %213 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @nvkm_wo32(i32 %214, i32 1644, i32 16384)
  %216 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %217 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @nvkm_wo32(i32 %218, i32 1656, i32 1)
  %220 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %221 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @nvkm_wo32(i32 %222, i32 1664, i32 262144)
  %224 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %225 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @nvkm_wo32(i32 %226, i32 1668, i32 65536)
  store i32 6916, i32* %13, align 4
  br label %228

228:                                              ; preds = %250, %183
  %229 = load i32, i32* %13, align 4
  %230 = icmp sle i32 %229, 9076
  br i1 %230, label %231, label %253

231:                                              ; preds = %228
  %232 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %233 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 0
  %237 = call i32 @nvkm_wo32(i32 %234, i32 %236, i32 275779577)
  %238 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %239 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %241, 4
  %243 = call i32 @nvkm_wo32(i32 %240, i32 %242, i32 70649964)
  %244 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %245 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 8
  %249 = call i32 @nvkm_wo32(i32 %246, i32 %248, i32 786459)
  br label %250

250:                                              ; preds = %231
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %251, 16
  store i32 %252, i32* %13, align 4
  br label %228

253:                                              ; preds = %228
  %254 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %255 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @nvkm_wo32(i32 %256, i32 9988, i32 1065353216)
  %258 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %259 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @nvkm_wo32(i32 %260, i32 10008, i32 1065353216)
  %262 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %263 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @nvkm_wo32(i32 %264, i32 10052, i32 1073741824)
  %266 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %267 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @nvkm_wo32(i32 %268, i32 10056, i32 1065353216)
  %270 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %271 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @nvkm_wo32(i32 %272, i32 10060, i32 1056964608)
  %274 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %275 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @nvkm_wo32(i32 %276, i32 10068, i32 1073741824)
  %278 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %279 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @nvkm_wo32(i32 %280, i32 10072, i32 1065353216)
  %282 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %283 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @nvkm_wo32(i32 %284, i32 10080, i32 -1082130432)
  %286 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %287 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @nvkm_wo32(i32 %288, i32 10088, i32 -1082130432)
  %290 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %291 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @nvkm_wo32(i32 %292, i32 12428, i32 1040384)
  %294 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %295 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @nvkm_wo32(i32 %296, i32 12552, i32 1016)
  %298 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %299 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @nvkm_wo32(i32 %300, i32 13416, i32 3137536)
  store i32 13444, i32* %13, align 4
  br label %302

302:                                              ; preds = %311, %253
  %303 = load i32, i32* %13, align 4
  %304 = icmp sle i32 %303, 13472
  br i1 %304, label %305, label %314

305:                                              ; preds = %302
  %306 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %307 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %13, align 4
  %310 = call i32 @nvkm_wo32(i32 %308, i32 %309, i32 1856124)
  br label %311

311:                                              ; preds = %305
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 4
  store i32 %313, i32* %13, align 4
  br label %302

314:                                              ; preds = %302
  %315 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %316 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @nvkm_done(i32 %317)
  store i32 0, i32* %5, align 4
  br label %319

319:                                              ; preds = %314, %50, %19
  %320 = load i32, i32* %5, align 4
  ret i32 %320
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
