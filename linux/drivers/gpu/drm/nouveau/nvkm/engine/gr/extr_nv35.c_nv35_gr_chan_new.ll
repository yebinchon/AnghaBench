; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv35.c_nv35_gr_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv35.c_nv35_gr_chan_new.c"
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
@nv35_gr_chan = common dso_local global i32 0, align 4
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gr*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)* @nv35_gr_chan_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv35_gr_chan_new(%struct.nvkm_gr* %0, %struct.nvkm_fifo_chan* %1, %struct.nvkm_oclass* %2, %struct.nvkm_object** %3) #0 {
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
  br label %325

22:                                               ; preds = %4
  %23 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %24 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %25 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %24, i32 0, i32 2
  %26 = call i32 @nvkm_object_ctor(i32* @nv35_gr_chan, %struct.nvkm_oclass* %23, %struct.nvkm_object* %25)
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
  %47 = call i32 @nvkm_memory_new(i32 %43, i32 %44, i32 22396, i32 16, i32 1, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %22
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %325

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
  %69 = call i32 @nvkm_wo32(i32 %68, i32 1036, i32 257)
  %70 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %71 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @nvkm_wo32(i32 %72, i32 1056, i32 273)
  %74 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %75 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @nvkm_wo32(i32 %76, i32 1060, i32 96)
  %78 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %79 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nvkm_wo32(i32 %80, i32 1088, i32 128)
  %82 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %83 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @nvkm_wo32(i32 %84, i32 1092, i32 -65536)
  %86 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %87 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @nvkm_wo32(i32 %88, i32 1096, i32 1)
  %90 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %91 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @nvkm_wo32(i32 %92, i32 1116, i32 1145044992)
  %94 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %95 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @nvkm_wo32(i32 %96, i32 1160, i32 -65536)
  store i32 1244, i32* %13, align 4
  br label %98

98:                                               ; preds = %107, %52
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 1252
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %103 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @nvkm_wo32(i32 %104, i32 %105, i32 268369920)
  br label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 4
  store i32 %109, i32* %13, align 4
  br label %98

110:                                              ; preds = %98
  %111 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %112 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @nvkm_wo32(i32 %113, i32 1256, i32 69888)
  store i32 1284, i32* %13, align 4
  br label %115

115:                                              ; preds = %124, %110
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %116, 1348
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %120 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @nvkm_wo32(i32 %121, i32 %122, i32 134152192)
  br label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 4
  store i32 %126, i32* %13, align 4
  br label %115

127:                                              ; preds = %115
  %128 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %129 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @nvkm_wo32(i32 %130, i32 1356, i32 1266679807)
  %132 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %133 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @nvkm_wo32(i32 %134, i32 1416, i32 128)
  %136 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %137 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @nvkm_wo32(i32 %138, i32 1420, i32 807407616)
  %140 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %141 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @nvkm_wo32(i32 %142, i32 1424, i32 1885360192)
  %144 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %145 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @nvkm_wo32(i32 %146, i32 1428, i32 -1196910456)
  %148 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %149 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @nvkm_wo32(i32 %150, i32 1432, i32 -118957880)
  %152 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %153 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @nvkm_wo32(i32 %154, i32 1452, i32 -1342177280)
  store i32 1540, i32* %13, align 4
  br label %156

156:                                              ; preds = %165, %127
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %157, 1604
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %161 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @nvkm_wo32(i32 %162, i32 %163, i32 66952)
  br label %165

165:                                              ; preds = %159
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 4
  store i32 %167, i32* %13, align 4
  br label %156

168:                                              ; preds = %156
  store i32 1604, i32* %13, align 4
  br label %169

169:                                              ; preds = %178, %168
  %170 = load i32, i32* %13, align 4
  %171 = icmp slt i32 %170, 1668
  br i1 %171, label %172, label %181

172:                                              ; preds = %169
  %173 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %174 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @nvkm_wo32(i32 %175, i32 %176, i32 197379)
  br label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 4
  store i32 %180, i32* %13, align 4
  br label %169

181:                                              ; preds = %169
  store i32 1732, i32* %13, align 4
  br label %182

182:                                              ; preds = %191, %181
  %183 = load i32, i32* %13, align 4
  %184 = icmp slt i32 %183, 1796
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %187 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @nvkm_wo32(i32 %188, i32 %189, i32 568036)
  br label %191

191:                                              ; preds = %185
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 4
  store i32 %193, i32* %13, align 4
  br label %182

194:                                              ; preds = %182
  store i32 1796, i32* %13, align 4
  br label %195

195:                                              ; preds = %204, %194
  %196 = load i32, i32* %13, align 4
  %197 = icmp slt i32 %196, 1860
  br i1 %197, label %198, label %207

198:                                              ; preds = %195
  %199 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %200 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @nvkm_wo32(i32 %201, i32 %202, i32 16850944)
  br label %204

204:                                              ; preds = %198
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 4
  store i32 %206, i32* %13, align 4
  br label %195

207:                                              ; preds = %195
  store i32 1860, i32* %13, align 4
  br label %208

208:                                              ; preds = %217, %207
  %209 = load i32, i32* %13, align 4
  %210 = icmp slt i32 %209, 1924
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %213 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %13, align 4
  %216 = call i32 @nvkm_wo32(i32 %214, i32 %215, i32 524296)
  br label %217

217:                                              ; preds = %211
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 4
  store i32 %219, i32* %13, align 4
  br label %208

220:                                              ; preds = %208
  %221 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %222 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @nvkm_wo32(i32 %223, i32 2144, i32 262144)
  %225 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %226 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @nvkm_wo32(i32 %227, i32 2148, i32 65536)
  store i32 2152, i32* %13, align 4
  br label %229

229:                                              ; preds = %238, %220
  %230 = load i32, i32* %13, align 4
  %231 = icmp slt i32 %230, 2168
  br i1 %231, label %232, label %241

232:                                              ; preds = %229
  %233 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %234 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %13, align 4
  %237 = call i32 @nvkm_wo32(i32 %235, i32 %236, i32 262148)
  br label %238

238:                                              ; preds = %232
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, 4
  store i32 %240, i32* %13, align 4
  br label %229

241:                                              ; preds = %229
  store i32 7964, i32* %13, align 4
  br label %242

242:                                              ; preds = %264, %241
  %243 = load i32, i32* %13, align 4
  %244 = icmp sle i32 %243, 12428
  br i1 %244, label %245, label %267

245:                                              ; preds = %242
  %246 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %247 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %249, 0
  %251 = call i32 @nvkm_wo32(i32 %248, i32 %250, i32 275779577)
  %252 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %253 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, 4
  %257 = call i32 @nvkm_wo32(i32 %254, i32 %256, i32 70649964)
  %258 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %259 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %13, align 4
  %262 = add nsw i32 %261, 8
  %263 = call i32 @nvkm_wo32(i32 %260, i32 %262, i32 786459)
  br label %264

264:                                              ; preds = %245
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 16
  store i32 %266, i32* %13, align 4
  br label %242

267:                                              ; preds = %242
  store i32 12476, i32* %13, align 4
  br label %268

268:                                              ; preds = %277, %267
  %269 = load i32, i32* %13, align 4
  %270 = icmp slt i32 %269, 12492
  br i1 %270, label %271, label %280

271:                                              ; preds = %268
  %272 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %273 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %13, align 4
  %276 = call i32 @nvkm_wo32(i32 %274, i32 %275, i32 65535)
  br label %277

277:                                              ; preds = %271
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 4
  store i32 %279, i32* %13, align 4
  br label %268

280:                                              ; preds = %268
  %281 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %282 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @nvkm_wo32(i32 %283, i32 13392, i32 1065353216)
  %285 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %286 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @nvkm_wo32(i32 %287, i32 14348, i32 1065353216)
  %289 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %290 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @nvkm_wo32(i32 %291, i32 14368, i32 1065353216)
  %293 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %294 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @nvkm_wo32(i32 %295, i32 14412, i32 1073741824)
  %297 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %298 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @nvkm_wo32(i32 %299, i32 14416, i32 1065353216)
  %301 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %302 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @nvkm_wo32(i32 %303, i32 14420, i32 1056964608)
  %305 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %306 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @nvkm_wo32(i32 %307, i32 14428, i32 1073741824)
  %309 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %310 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @nvkm_wo32(i32 %311, i32 14432, i32 1065353216)
  %313 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %314 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @nvkm_wo32(i32 %315, i32 14440, i32 -1082130432)
  %317 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %318 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @nvkm_wo32(i32 %319, i32 14448, i32 -1082130432)
  %321 = load %struct.nv20_gr_chan*, %struct.nv20_gr_chan** %11, align 8
  %322 = getelementptr inbounds %struct.nv20_gr_chan, %struct.nv20_gr_chan* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @nvkm_done(i32 %323)
  store i32 0, i32* %5, align 4
  br label %325

325:                                              ; preds = %280, %50, %19
  %326 = load i32, i32* %5, align 4
  ret i32 %326
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
