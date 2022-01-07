; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_map_fault_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_mmu.c_panfrost_mmu_map_fault_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32 }
%struct.panfrost_gem_object = type { i32, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.sg_table*, %struct.TYPE_6__, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__, i32, %struct.page** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sg_table = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"matching BO is not heap type (GPU VA = %llx)\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SZ_2M = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_FAULT_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_NOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"mapped page fault @ AS%d %llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panfrost_device*, i32, i32)* @panfrost_mmu_map_fault_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_mmu_map_fault_addr(%struct.panfrost_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.panfrost_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.panfrost_gem_object*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sg_table*, align 8
  %14 = alloca %struct.page**, align 8
  store %struct.panfrost_device* %0, %struct.panfrost_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.panfrost_gem_object* @addr_to_drm_mm_node(%struct.panfrost_device* %15, i32 %16, i32 %17)
  store %struct.panfrost_gem_object* %18, %struct.panfrost_gem_object** %10, align 8
  %19 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %20 = icmp ne %struct.panfrost_gem_object* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %270

24:                                               ; preds = %3
  %25 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %26 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %31 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %34 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = call i32 @dev_WARN(i32 %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %264

42:                                               ; preds = %24
  %43 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %44 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load i32, i32* @SZ_2M, align 4
  %53 = sub nsw i32 %52, 1
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %61 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %67 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %71 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 3
  %73 = load %struct.page**, %struct.page*** %72, align 8
  %74 = icmp ne %struct.page** %73, null
  br i1 %74, label %137, label %75

75:                                               ; preds = %42
  %76 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %77 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SZ_2M, align 4
  %82 = sdiv i32 %80, %81
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = load i32, i32* @__GFP_ZERO, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @kvmalloc_array(i32 %82, i32 8, i32 %85)
  %87 = bitcast i8* %86 to %struct.sg_table*
  %88 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %89 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %88, i32 0, i32 3
  store %struct.sg_table* %87, %struct.sg_table** %89, align 8
  %90 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %91 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %90, i32 0, i32 3
  %92 = load %struct.sg_table*, %struct.sg_table** %91, align 8
  %93 = icmp ne %struct.sg_table* %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %75
  %95 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %96 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %264

101:                                              ; preds = %75
  %102 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %103 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @PAGE_SHIFT, align 4
  %108 = ashr i32 %106, %107
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = load i32, i32* @__GFP_ZERO, align 4
  %111 = or i32 %109, %110
  %112 = call i8* @kvmalloc_array(i32 %108, i32 8, i32 %111)
  %113 = bitcast i8* %112 to %struct.page**
  store %struct.page** %113, %struct.page*** %14, align 8
  %114 = load %struct.page**, %struct.page*** %14, align 8
  %115 = icmp ne %struct.page** %114, null
  br i1 %115, label %129, label %116

116:                                              ; preds = %101
  %117 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %118 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %117, i32 0, i32 3
  %119 = load %struct.sg_table*, %struct.sg_table** %118, align 8
  %120 = call i32 @kfree(%struct.sg_table* %119)
  %121 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %122 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %121, i32 0, i32 3
  store %struct.sg_table* null, %struct.sg_table** %122, align 8
  %123 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %124 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %8, align 4
  br label %264

129:                                              ; preds = %101
  %130 = load %struct.page**, %struct.page*** %14, align 8
  %131 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %132 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  store %struct.page** %130, %struct.page*** %133, align 8
  %134 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %135 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  br label %142

137:                                              ; preds = %42
  %138 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %139 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = load %struct.page**, %struct.page*** %140, align 8
  store %struct.page** %141, %struct.page*** %14, align 8
  br label %142

142:                                              ; preds = %137, %129
  %143 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %144 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load %struct.address_space*, %struct.address_space** %148, align 8
  store %struct.address_space* %149, %struct.address_space** %11, align 8
  %150 = load %struct.address_space*, %struct.address_space** %11, align 8
  %151 = call i32 @mapping_set_unevictable(%struct.address_space* %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %186, %142
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @NUM_FAULT_PAGES, align 4
  %157 = add nsw i32 %155, %156
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %189

159:                                              ; preds = %153
  %160 = load %struct.address_space*, %struct.address_space** %11, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call %struct.page* @shmem_read_mapping_page(%struct.address_space* %160, i32 %161)
  %163 = load %struct.page**, %struct.page*** %14, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.page*, %struct.page** %163, i64 %165
  store %struct.page* %162, %struct.page** %166, align 8
  %167 = load %struct.page**, %struct.page*** %14, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.page*, %struct.page** %167, i64 %169
  %171 = load %struct.page*, %struct.page** %170, align 8
  %172 = call i64 @IS_ERR(%struct.page* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %159
  %175 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %176 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load %struct.page**, %struct.page*** %14, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.page*, %struct.page** %179, i64 %181
  %183 = load %struct.page*, %struct.page** %182, align 8
  %184 = call i32 @PTR_ERR(%struct.page* %183)
  store i32 %184, i32* %8, align 4
  br label %260

185:                                              ; preds = %159
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %153

189:                                              ; preds = %153
  %190 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %191 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  %193 = call i32 @mutex_unlock(i32* %192)
  %194 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %195 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %194, i32 0, i32 3
  %196 = load %struct.sg_table*, %struct.sg_table** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* @SZ_2M, align 4
  %199 = load i32, i32* @PAGE_SIZE, align 4
  %200 = sdiv i32 %198, %199
  %201 = sdiv i32 %197, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %196, i64 %202
  store %struct.sg_table* %203, %struct.sg_table** %13, align 8
  %204 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %205 = load %struct.page**, %struct.page*** %14, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.page*, %struct.page** %205, i64 %207
  %209 = load i32, i32* @NUM_FAULT_PAGES, align 4
  %210 = load i32, i32* @SZ_2M, align 4
  %211 = load i32, i32* @GFP_KERNEL, align 4
  %212 = call i32 @sg_alloc_table_from_pages(%struct.sg_table* %204, %struct.page** %208, i32 %209, i32 0, i32 %210, i32 %211)
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %189
  br label %260

216:                                              ; preds = %189
  %217 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %218 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %221 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %224 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %227 = call i32 @dma_map_sg(i32 %219, i32 %222, i32 %225, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %216
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %8, align 4
  br label %257

232:                                              ; preds = %216
  %233 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %234 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %235 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %234, i32 0, i32 2
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @IOMMU_WRITE, align 4
  %239 = load i32, i32* @IOMMU_READ, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @IOMMU_NOEXEC, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %244 = call i32 @mmu_map_sg(%struct.panfrost_device* %233, %struct.TYPE_8__* %236, i32 %237, i32 %242, %struct.sg_table* %243)
  %245 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %246 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %245, i32 0, i32 0
  store i32 1, i32* %246, align 8
  %247 = load %struct.panfrost_device*, %struct.panfrost_device** %5, align 8
  %248 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* %7, align 4
  %252 = call i32 @dev_dbg(i32 %249, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %250, i32 %251)
  %253 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %254 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 1
  %256 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_10__* %255)
  store i32 0, i32* %4, align 4
  br label %270

257:                                              ; preds = %229
  %258 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %259 = call i32 @sg_free_table(%struct.sg_table* %258)
  br label %260

260:                                              ; preds = %257, %215, %174
  %261 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %262 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %261, i32 0, i32 1
  %263 = call i32 @drm_gem_shmem_put_pages(%struct.TYPE_9__* %262)
  br label %264

264:                                              ; preds = %260, %116, %94, %29
  %265 = load %struct.panfrost_gem_object*, %struct.panfrost_gem_object** %10, align 8
  %266 = getelementptr inbounds %struct.panfrost_gem_object, %struct.panfrost_gem_object* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = call i32 @drm_gem_object_put_unlocked(%struct.TYPE_10__* %267)
  %269 = load i32, i32* %8, align 4
  store i32 %269, i32* %4, align 4
  br label %270

270:                                              ; preds = %264, %232, %21
  %271 = load i32, i32* %4, align 4
  ret i32 %271
}

declare dso_local %struct.panfrost_gem_object* @addr_to_drm_mm_node(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @dev_WARN(i32, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.sg_table*) #1

declare dso_local i32 @mapping_set_unevictable(%struct.address_space*) #1

declare dso_local %struct.page* @shmem_read_mapping_page(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @sg_alloc_table_from_pages(%struct.sg_table*, %struct.page**, i32, i32, i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @mmu_map_sg(%struct.panfrost_device*, %struct.TYPE_8__*, i32, i32, %struct.sg_table*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.TYPE_10__*) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @drm_gem_shmem_put_pages(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
