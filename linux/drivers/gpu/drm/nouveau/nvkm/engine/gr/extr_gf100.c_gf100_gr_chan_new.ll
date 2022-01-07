; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_chan_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_vmm_map_v0 = type { i32 }
%struct.nvkm_gr = type { i32 }
%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.gf100_gr = type { %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio*, %struct.TYPE_9__ }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.gf100_gr_data = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.gf100_gr_chan = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_11__*, %struct.nvkm_object, %struct.gf100_gr* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }

@__const.gf100_gr_chan_new.args = private unnamed_addr constant %struct.gf100_vmm_map_v0 { i32 1 }, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gf100_gr_chan = common dso_local global i32 0, align 4
@NVKM_MEM_TARGET_INST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gr*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)* @gf100_gr_chan_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_gr_chan_new(%struct.nvkm_gr* %0, %struct.nvkm_fifo_chan* %1, %struct.nvkm_oclass* %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_gr*, align 8
  %7 = alloca %struct.nvkm_fifo_chan*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca %struct.nvkm_object**, align 8
  %10 = alloca %struct.gf100_gr*, align 8
  %11 = alloca %struct.gf100_gr_data*, align 8
  %12 = alloca %struct.gf100_gr_mmio*, align 8
  %13 = alloca %struct.gf100_gr_chan*, align 8
  %14 = alloca %struct.gf100_vmm_map_v0, align 4
  %15 = alloca %struct.nvkm_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %6, align 8
  store %struct.nvkm_fifo_chan* %1, %struct.nvkm_fifo_chan** %7, align 8
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %8, align 8
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %9, align 8
  %21 = load %struct.nvkm_gr*, %struct.nvkm_gr** %6, align 8
  %22 = call %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr* %21)
  store %struct.gf100_gr* %22, %struct.gf100_gr** %10, align 8
  %23 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %24 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %23, i32 0, i32 1
  %25 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %24, align 8
  %26 = bitcast %struct.gf100_gr_mmio* %25 to %struct.gf100_gr_data*
  store %struct.gf100_gr_data* %26, %struct.gf100_gr_data** %11, align 8
  %27 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %28 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %27, i32 0, i32 0
  %29 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %28, align 8
  store %struct.gf100_gr_mmio* %29, %struct.gf100_gr_mmio** %12, align 8
  %30 = bitcast %struct.gf100_vmm_map_v0* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.gf100_vmm_map_v0* @__const.gf100_gr_chan_new.args to i8*), i64 4, i1 false)
  %31 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %32 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %35, align 8
  store %struct.nvkm_device* %36, %struct.nvkm_device** %15, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.gf100_gr_chan* @kzalloc(i32 48, i32 %37)
  store %struct.gf100_gr_chan* %38, %struct.gf100_gr_chan** %13, align 8
  %39 = icmp ne %struct.gf100_gr_chan* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %271

43:                                               ; preds = %4
  %44 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %45 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %46 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %45, i32 0, i32 5
  %47 = call i32 @nvkm_object_ctor(i32* @gf100_gr_chan, %struct.nvkm_oclass* %44, %struct.nvkm_object* %46)
  %48 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %49 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %50 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %49, i32 0, i32 6
  store %struct.gf100_gr* %48, %struct.gf100_gr** %50, align 8
  %51 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %52 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @nvkm_vmm_ref(i32 %53)
  %55 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %56 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %58 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %57, i32 0, i32 5
  %59 = load %struct.nvkm_object**, %struct.nvkm_object*** %9, align 8
  store %struct.nvkm_object* %58, %struct.nvkm_object** %59, align 8
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  %61 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %62 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %63 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %62, i32 0, i32 0
  %64 = call i32 @nvkm_memory_new(%struct.nvkm_device* %60, i32 %61, i32 4096, i32 256, i32 0, i32* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %43
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %5, align 4
  br label %271

69:                                               ; preds = %43
  %70 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %71 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %74 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %73, i32 0, i32 4
  %75 = call i32 @nvkm_vmm_get(i32 %72, i32 12, i32 4096, %struct.TYPE_11__** %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %5, align 4
  br label %271

80:                                               ; preds = %69
  %81 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %82 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %85 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %88 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %87, i32 0, i32 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = call i32 @nvkm_memory_map(i32 %83, i32 0, i32 %86, %struct.TYPE_11__* %89, %struct.gf100_vmm_map_v0* %14, i32 4)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %5, align 4
  br label %271

95:                                               ; preds = %80
  store i32 0, i32* %17, align 4
  br label %96

96:                                               ; preds = %188, %95
  %97 = load %struct.gf100_gr_data*, %struct.gf100_gr_data** %11, align 8
  %98 = getelementptr inbounds %struct.gf100_gr_data, %struct.gf100_gr_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* %17, align 4
  %103 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %104 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %103, i32 0, i32 1
  %105 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %104, align 8
  %106 = call i32 @ARRAY_SIZE(%struct.gf100_gr_mmio* %105)
  %107 = icmp slt i32 %102, %106
  br label %108

108:                                              ; preds = %101, %96
  %109 = phi i1 [ false, %96 ], [ %107, %101 ]
  br i1 %109, label %110, label %191

110:                                              ; preds = %108
  %111 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  %112 = load i32, i32* @NVKM_MEM_TARGET_INST, align 4
  %113 = load %struct.gf100_gr_data*, %struct.gf100_gr_data** %11, align 8
  %114 = getelementptr inbounds %struct.gf100_gr_data, %struct.gf100_gr_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.gf100_gr_data*, %struct.gf100_gr_data** %11, align 8
  %117 = getelementptr inbounds %struct.gf100_gr_data, %struct.gf100_gr_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %120 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %119, i32 0, i32 2
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = call i32 @nvkm_memory_new(%struct.nvkm_device* %111, i32 %112, i32 %115, i32 %118, i32 0, i32* %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %110
  %130 = load i32, i32* %16, align 4
  store i32 %130, i32* %5, align 4
  br label %271

131:                                              ; preds = %110
  %132 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %133 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %136 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %135, i32 0, i32 2
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @nvkm_memory_size(i32 %142)
  %144 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %145 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %144, i32 0, i32 2
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = call i32 @nvkm_vmm_get(i32 %134, i32 12, i32 %143, %struct.TYPE_11__** %150)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %131
  %155 = load i32, i32* %16, align 4
  store i32 %155, i32* %5, align 4
  br label %271

156:                                              ; preds = %131
  %157 = load %struct.gf100_gr_data*, %struct.gf100_gr_data** %11, align 8
  %158 = getelementptr inbounds %struct.gf100_gr_data, %struct.gf100_gr_data* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.gf100_vmm_map_v0, %struct.gf100_vmm_map_v0* %14, i32 0, i32 0
  store i32 %159, i32* %160, align 4
  %161 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %162 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %161, i32 0, i32 2
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %170 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %173 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %172, i32 0, i32 2
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = call i32 @nvkm_memory_map(i32 %168, i32 0, i32 %171, %struct.TYPE_11__* %179, %struct.gf100_vmm_map_v0* %14, i32 4)
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %156
  %184 = load i32, i32* %16, align 4
  store i32 %184, i32* %5, align 4
  br label %271

185:                                              ; preds = %156
  %186 = load %struct.gf100_gr_data*, %struct.gf100_gr_data** %11, align 8
  %187 = getelementptr inbounds %struct.gf100_gr_data, %struct.gf100_gr_data* %186, i32 1
  store %struct.gf100_gr_data* %187, %struct.gf100_gr_data** %11, align 8
  br label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %96

191:                                              ; preds = %108
  %192 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %193 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @nvkm_kmap(i32 %194)
  store i32 0, i32* %17, align 4
  br label %196

196:                                              ; preds = %263, %191
  %197 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %12, align 8
  %198 = getelementptr inbounds %struct.gf100_gr_mmio, %struct.gf100_gr_mmio* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load i32, i32* %17, align 4
  %203 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %204 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %203, i32 0, i32 0
  %205 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %204, align 8
  %206 = call i32 @ARRAY_SIZE(%struct.gf100_gr_mmio* %205)
  %207 = icmp slt i32 %202, %206
  br label %208

208:                                              ; preds = %201, %196
  %209 = phi i1 [ false, %196 ], [ %207, %201 ]
  br i1 %209, label %210, label %266

210:                                              ; preds = %208
  %211 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %12, align 8
  %212 = getelementptr inbounds %struct.gf100_gr_mmio, %struct.gf100_gr_mmio* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %18, align 4
  %214 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %12, align 8
  %215 = getelementptr inbounds %struct.gf100_gr_mmio, %struct.gf100_gr_mmio* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  store i32 %216, i32* %19, align 4
  %217 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %12, align 8
  %218 = getelementptr inbounds %struct.gf100_gr_mmio, %struct.gf100_gr_mmio* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = icmp uge i64 %219, 0
  br i1 %220, label %221, label %240

221:                                              ; preds = %210
  %222 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %223 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %222, i32 0, i32 2
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %223, align 8
  %225 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %12, align 8
  %226 = getelementptr inbounds %struct.gf100_gr_mmio, %struct.gf100_gr_mmio* %225, i32 0, i32 5
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  store i32 %232, i32* %20, align 4
  %233 = load i32, i32* %20, align 4
  %234 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %12, align 8
  %235 = getelementptr inbounds %struct.gf100_gr_mmio, %struct.gf100_gr_mmio* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = ashr i32 %233, %236
  %238 = load i32, i32* %19, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %19, align 4
  br label %240

240:                                              ; preds = %221, %210
  %241 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %242 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %245 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  %248 = mul nsw i32 %246, 4
  %249 = load i32, i32* %18, align 4
  %250 = call i32 @nvkm_wo32(i32 %243, i32 %248, i32 %249)
  %251 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %252 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %255 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  %258 = mul nsw i32 %256, 4
  %259 = load i32, i32* %19, align 4
  %260 = call i32 @nvkm_wo32(i32 %253, i32 %258, i32 %259)
  %261 = load %struct.gf100_gr_mmio*, %struct.gf100_gr_mmio** %12, align 8
  %262 = getelementptr inbounds %struct.gf100_gr_mmio, %struct.gf100_gr_mmio* %261, i32 1
  store %struct.gf100_gr_mmio* %262, %struct.gf100_gr_mmio** %12, align 8
  br label %263

263:                                              ; preds = %240
  %264 = load i32, i32* %17, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %17, align 4
  br label %196

266:                                              ; preds = %208
  %267 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %13, align 8
  %268 = getelementptr inbounds %struct.gf100_gr_chan, %struct.gf100_gr_chan* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @nvkm_done(i32 %269)
  store i32 0, i32* %5, align 4
  br label %271

271:                                              ; preds = %266, %183, %154, %129, %93, %78, %67, %40
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

declare dso_local %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.gf100_gr_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

declare dso_local i32 @nvkm_vmm_ref(i32) #1

declare dso_local i32 @nvkm_memory_new(%struct.nvkm_device*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @nvkm_vmm_get(i32, i32, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @nvkm_memory_map(i32, i32, i32, %struct.TYPE_11__*, %struct.gf100_vmm_map_v0*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.gf100_gr_mmio*) #1

declare dso_local i32 @nvkm_memory_size(i32) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @nvkm_wo32(i32, i32, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
