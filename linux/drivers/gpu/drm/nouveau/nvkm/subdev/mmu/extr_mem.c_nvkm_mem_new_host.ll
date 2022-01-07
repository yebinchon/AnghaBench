; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_mem.c_nvkm_mem_new_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_mem.c_nvkm_mem_new_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nvkm_memory = type { i32 }
%union.anon = type { %struct.nvif_mem_ram_v0 }
%struct.nvif_mem_ram_v0 = type { i32, i32* }
%struct.nvkm_mem = type { i32, i32, %struct.page**, i32*, %struct.nvkm_memory, i32, %struct.nvkm_mmu* }
%struct.page = type { i32 }
%struct.nvif_mem_ram_vn = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@NVKM_MEM_COHERENT = common dso_local global i32 0, align 4
@NVKM_MEM_UNCACHED = common dso_local global i32 0, align 4
@NVKM_MEM_TARGET_HOST = common dso_local global i32 0, align 4
@NVKM_MEM_TARGET_NCOH = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_mem_dma = common dso_local global i32 0, align 4
@nvkm_mem_sgl = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_mmu*, i32, i32, i32, i8*, i32, %struct.nvkm_memory**)* @nvkm_mem_new_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_mem_new_host(%struct.nvkm_mmu* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.nvkm_memory** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_mmu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nvkm_memory**, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca %union.anon*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nvkm_mem*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.page*, align 8
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.nvkm_memory** %6, %struct.nvkm_memory*** %15, align 8
  %23 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %24 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.device*, %struct.device** %27, align 8
  store %struct.device* %28, %struct.device** %16, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = bitcast i8* %29 to %union.anon*
  store %union.anon* %30, %union.anon** %17, align 8
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* @GFP_USER, align 4
  %34 = load i32, i32* @__GFP_ZERO, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %21, align 4
  %36 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %37 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NVKM_MEM_COHERENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %7
  %48 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %49 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NVKM_MEM_UNCACHED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @NVKM_MEM_TARGET_HOST, align 4
  store i32 %60, i32* %19, align 4
  br label %63

61:                                               ; preds = %47, %7
  %62 = load i32, i32* @NVKM_MEM_TARGET_NCOH, align 4
  store i32 %62, i32* %19, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %261

70:                                               ; preds = %63
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.nvkm_mem* @kzalloc(i32 40, i32 %71)
  store %struct.nvkm_mem* %72, %struct.nvkm_mem** %20, align 8
  %73 = icmp ne %struct.nvkm_mem* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %261

77:                                               ; preds = %70
  %78 = load i32, i32* %19, align 4
  %79 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %80 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %82 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %83 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %82, i32 0, i32 6
  store %struct.nvkm_mmu* %81, %struct.nvkm_mmu** %83, align 8
  %84 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %85 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %84, i32 0, i32 4
  %86 = load %struct.nvkm_memory**, %struct.nvkm_memory*** %15, align 8
  store %struct.nvkm_memory* %85, %struct.nvkm_memory** %86, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load %union.anon*, %union.anon** %17, align 8
  %89 = bitcast %union.anon* %88 to %struct.nvif_mem_ram_v0*
  %90 = bitcast %struct.nvif_mem_ram_v0* %89 to { i32, i32* }*
  %91 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %90, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @nvif_unpack(i32 %87, i8** %13, i32* %14, i32 %92, i32* %94, i32 0, i32 0, i32 0)
  store i32 %95, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %137, label %97

97:                                               ; preds = %77
  %98 = load %union.anon*, %union.anon** %17, align 8
  %99 = bitcast %union.anon* %98 to %struct.nvif_mem_ram_v0*
  %100 = getelementptr inbounds %struct.nvif_mem_ram_v0, %struct.nvif_mem_ram_v0* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %105 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %104, i32 0, i32 4
  %106 = call i32 @nvkm_memory_ctor(i32* @nvkm_mem_dma, %struct.nvkm_memory* %105)
  %107 = load %union.anon*, %union.anon** %17, align 8
  %108 = bitcast %union.anon* %107 to %struct.nvif_mem_ram_v0*
  %109 = getelementptr inbounds %struct.nvif_mem_ram_v0, %struct.nvif_mem_ram_v0* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %112 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %111, i32 0, i32 3
  store i32* %110, i32** %112, align 8
  br label %123

113:                                              ; preds = %97
  %114 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %115 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %114, i32 0, i32 4
  %116 = call i32 @nvkm_memory_ctor(i32* @nvkm_mem_sgl, %struct.nvkm_memory* %115)
  %117 = load %union.anon*, %union.anon** %17, align 8
  %118 = bitcast %union.anon* %117 to %struct.nvif_mem_ram_v0*
  %119 = getelementptr inbounds %struct.nvif_mem_ram_v0, %struct.nvif_mem_ram_v0* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %122 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %113, %103
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @PAGE_SIZE, align 4
  %126 = call i32 @IS_ALIGNED(i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %8, align 4
  br label %261

131:                                              ; preds = %123
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @PAGE_SHIFT, align 4
  %134 = ashr i32 %132, %133
  %135 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %136 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  store i32 0, i32* %8, align 4
  br label %261

137:                                              ; preds = %77
  %138 = load i32, i32* %18, align 4
  %139 = load %union.anon*, %union.anon** %17, align 8
  %140 = bitcast %union.anon* %139 to %struct.nvif_mem_ram_vn*
  %141 = getelementptr inbounds %struct.nvif_mem_ram_vn, %struct.nvif_mem_ram_vn* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @nvif_unvers(i32 %138, i8** %13, i32* %14, i32 %142)
  store i32 %143, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %147 = call i32 @kfree(%struct.nvkm_mem* %146)
  %148 = load i32, i32* %18, align 4
  store i32 %148, i32* %8, align 4
  br label %261

149:                                              ; preds = %137
  br label %150

150:                                              ; preds = %149
  %151 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %152 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %151, i32 0, i32 4
  %153 = call i32 @nvkm_memory_ctor(i32* @nvkm_mem_dma, %struct.nvkm_memory* %152)
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @PAGE_SIZE, align 4
  %156 = call i32 @ALIGN(i32 %154, i32 %155)
  %157 = load i32, i32* @PAGE_SHIFT, align 4
  %158 = ashr i32 %156, %157
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i8* @kvmalloc_array(i32 %159, i32 8, i32 %160)
  %162 = bitcast i8* %161 to %struct.page**
  %163 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %164 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %163, i32 0, i32 2
  store %struct.page** %162, %struct.page*** %164, align 8
  %165 = icmp ne %struct.page** %162, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %150
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %8, align 4
  br label %261

169:                                              ; preds = %150
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call i8* @kvmalloc_array(i32 %170, i32 4, i32 %171)
  %173 = bitcast i8* %172 to i32*
  %174 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %175 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %174, i32 0, i32 3
  store i32* %173, i32** %175, align 8
  %176 = icmp ne i32* %173, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %169
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %8, align 4
  br label %261

180:                                              ; preds = %169
  %181 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %182 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %183, 32
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @GFP_HIGHUSER, align 4
  %187 = load i32, i32* %21, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %21, align 4
  br label %193

189:                                              ; preds = %180
  %190 = load i32, i32* @GFP_DMA32, align 4
  %191 = load i32, i32* %21, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %21, align 4
  br label %193

193:                                              ; preds = %189, %185
  %194 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %195 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %194, i32 0, i32 1
  store i32 0, i32* %195, align 4
  br label %196

196:                                              ; preds = %253, %193
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %260

199:                                              ; preds = %196
  %200 = load i32, i32* %21, align 4
  %201 = call %struct.page* @alloc_page(i32 %200)
  store %struct.page* %201, %struct.page** %22, align 8
  %202 = load %struct.page*, %struct.page** %22, align 8
  %203 = icmp ne %struct.page* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %8, align 4
  br label %261

207:                                              ; preds = %199
  %208 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %9, align 8
  %209 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load %struct.device*, %struct.device** %212, align 8
  %214 = load %struct.page*, %struct.page** %22, align 8
  %215 = load i32, i32* @PAGE_SIZE, align 4
  %216 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %217 = call i32 @dma_map_page(%struct.device* %213, %struct.page* %214, i32 0, i32 %215, i32 %216)
  %218 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %219 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %222 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %220, i64 %224
  store i32 %217, i32* %225, align 4
  %226 = load %struct.device*, %struct.device** %16, align 8
  %227 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %228 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %231 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %229, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @dma_mapping_error(%struct.device* %226, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %207
  %239 = load %struct.page*, %struct.page** %22, align 8
  %240 = call i32 @__free_page(%struct.page* %239)
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %8, align 4
  br label %261

243:                                              ; preds = %207
  %244 = load %struct.page*, %struct.page** %22, align 8
  %245 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %246 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %245, i32 0, i32 2
  %247 = load %struct.page**, %struct.page*** %246, align 8
  %248 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %249 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.page*, %struct.page** %247, i64 %251
  store %struct.page* %244, %struct.page** %252, align 8
  br label %253

253:                                              ; preds = %243
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %12, align 4
  %256 = load %struct.nvkm_mem*, %struct.nvkm_mem** %20, align 8
  %257 = getelementptr inbounds %struct.nvkm_mem, %struct.nvkm_mem* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 4
  br label %196

260:                                              ; preds = %196
  store i32 0, i32* %8, align 4
  br label %261

261:                                              ; preds = %260, %238, %204, %177, %166, %145, %131, %128, %74, %67
  %262 = load i32, i32* %8, align 4
  ret i32 %262
}

declare dso_local %struct.nvkm_mem* @kzalloc(i32, i32) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @nvkm_memory_ctor(i32*, %struct.nvkm_memory*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

declare dso_local i32 @kfree(%struct.nvkm_mem*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @kvmalloc_array(i32, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @dma_map_page(%struct.device*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
