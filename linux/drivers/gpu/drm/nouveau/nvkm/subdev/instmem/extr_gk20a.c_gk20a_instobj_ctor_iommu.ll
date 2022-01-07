; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_gk20a.c_gk20a_instobj_ctor_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_gk20a.c_gk20a_instobj_ctor_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk20a_instmem = type { i32, i32, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.gk20a_instobj = type { %struct.nvkm_mm_node*, %struct.TYPE_6__ }
%struct.nvkm_mm_node = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.gk20a_instobj_iommu = type { %struct.page**, i64*, %struct.gk20a_instobj }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gk20a_instobj_func_iommu = common dso_local global i32 0, align 4
@gk20a_instobj_ptrs = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DMA mapping error!\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"IOMMU space is full!\0A\00", align 1
@IOMMU_READ = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"IOMMU mapping failure: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gk20a_instmem*, i32, i32, %struct.gk20a_instobj**)* @gk20a_instobj_ctor_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk20a_instobj_ctor_iommu(%struct.gk20a_instmem* %0, i32 %1, i32 %2, %struct.gk20a_instobj** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gk20a_instmem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gk20a_instobj**, align 8
  %10 = alloca %struct.gk20a_instobj_iommu*, align 8
  %11 = alloca %struct.nvkm_subdev*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.nvkm_mm_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.gk20a_instmem* %0, %struct.gk20a_instmem** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.gk20a_instobj** %3, %struct.gk20a_instobj*** %9, align 8
  %20 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %21 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.nvkm_subdev* %22, %struct.nvkm_subdev** %11, align 8
  %23 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  %24 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.device*, %struct.device** %26, align 8
  store %struct.device* %27, %struct.device** %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 16, %29
  %31 = add i64 32, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.gk20a_instobj_iommu* @kzalloc(i32 %32, i32 %33)
  store %struct.gk20a_instobj_iommu* %34, %struct.gk20a_instobj_iommu** %10, align 8
  %35 = icmp ne %struct.gk20a_instobj_iommu* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %266

39:                                               ; preds = %4
  %40 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %41 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %40, i32 0, i32 2
  %42 = load %struct.gk20a_instobj**, %struct.gk20a_instobj*** %9, align 8
  store %struct.gk20a_instobj* %41, %struct.gk20a_instobj** %42, align 8
  %43 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %44 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %43, i32 0, i32 0
  %45 = load %struct.page**, %struct.page*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.page*, %struct.page** %45, i64 %47
  %49 = bitcast %struct.page** %48 to i8*
  %50 = bitcast i8* %49 to i64*
  %51 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %52 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %51, i32 0, i32 1
  store i64* %50, i64** %52, align 8
  %53 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %54 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.gk20a_instobj, %struct.gk20a_instobj* %54, i32 0, i32 1
  %56 = call i32 @nvkm_memory_ctor(i32* @gk20a_instobj_func_iommu, %struct.TYPE_6__* %55)
  %57 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %58 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.gk20a_instobj, %struct.gk20a_instobj* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32* @gk20a_instobj_ptrs, i32** %60, align 8
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %103, %39
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %106

65:                                               ; preds = %61
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.page* @alloc_page(i32 %66)
  store %struct.page* %67, %struct.page** %16, align 8
  %68 = load %struct.page*, %struct.page** %16, align 8
  %69 = icmp eq %struct.page* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %14, align 4
  br label %220

73:                                               ; preds = %65
  %74 = load %struct.page*, %struct.page** %16, align 8
  %75 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %76 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %75, i32 0, i32 0
  %77 = load %struct.page**, %struct.page*** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.page*, %struct.page** %77, i64 %79
  store %struct.page* %74, %struct.page** %80, align 8
  %81 = load %struct.device*, %struct.device** %12, align 8
  %82 = load %struct.page*, %struct.page** %16, align 8
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %85 = call i64 @dma_map_page(%struct.device* %81, %struct.page* %82, i32 0, i64 %83, i32 %84)
  store i64 %85, i64* %17, align 8
  %86 = load %struct.device*, %struct.device** %12, align 8
  %87 = load i64, i64* %17, align 8
  %88 = call i64 @dma_mapping_error(%struct.device* %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %73
  %91 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  %92 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %14, align 4
  br label %220

95:                                               ; preds = %73
  %96 = load i64, i64* %17, align 8
  %97 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %98 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %96, i64* %102, align 8
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %61

106:                                              ; preds = %61
  %107 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %108 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mutex_lock(i32 %109)
  %111 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %112 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %118 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = ashr i32 %116, %119
  %121 = call i32 @nvkm_mm_head(i32 %113, i32 0, i32 1, i32 %114, i32 %115, i32 %120, %struct.nvkm_mm_node** %13)
  store i32 %121, i32* %14, align 4
  %122 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %123 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @mutex_unlock(i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %106
  %129 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  %130 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %220

131:                                              ; preds = %106
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %186, %131
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %189

136:                                              ; preds = %132
  %137 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %13, align 8
  %138 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %139, %140
  %142 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %143 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = shl i32 %141, %144
  store i32 %145, i32* %18, align 4
  %146 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %147 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %18, align 4
  %150 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %151 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @PAGE_SIZE, align 8
  %158 = load i32, i32* @IOMMU_READ, align 4
  %159 = load i32, i32* @IOMMU_WRITE, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @iommu_map(i32 %148, i32 %149, i64 %156, i64 %157, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %185

164:                                              ; preds = %136
  %165 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %11, align 8
  %166 = load i32, i32* %14, align 4
  %167 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_error(%struct.nvkm_subdev* %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %172, %164
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %15, align 4
  %171 = icmp sgt i32 %169, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load i64, i64* @PAGE_SIZE, align 8
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = sub nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %18, align 4
  %178 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %179 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %18, align 4
  %182 = load i64, i64* @PAGE_SIZE, align 8
  %183 = call i32 @iommu_unmap(i32 %180, i32 %181, i64 %182)
  br label %168

184:                                              ; preds = %168
  br label %207

185:                                              ; preds = %136
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %132

189:                                              ; preds = %132
  %190 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %191 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %194 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = sub nsw i64 %192, %196
  %198 = call i32 @BIT(i64 %197)
  %199 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %13, align 8
  %200 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  %203 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %13, align 8
  %204 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %205 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.gk20a_instobj, %struct.gk20a_instobj* %205, i32 0, i32 0
  store %struct.nvkm_mm_node* %203, %struct.nvkm_mm_node** %206, align 8
  store i32 0, i32* %5, align 4
  br label %266

207:                                              ; preds = %184
  %208 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %209 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @mutex_lock(i32 %210)
  %212 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %213 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @nvkm_mm_free(i32 %214, %struct.nvkm_mm_node** %13)
  %216 = load %struct.gk20a_instmem*, %struct.gk20a_instmem** %6, align 8
  %217 = getelementptr inbounds %struct.gk20a_instmem, %struct.gk20a_instmem* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @mutex_unlock(i32 %218)
  br label %220

220:                                              ; preds = %207, %128, %90, %70
  store i32 0, i32* %15, align 4
  br label %221

221:                                              ; preds = %261, %220
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %234

225:                                              ; preds = %221
  %226 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %227 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %226, i32 0, i32 0
  %228 = load %struct.page**, %struct.page*** %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.page*, %struct.page** %228, i64 %230
  %232 = load %struct.page*, %struct.page** %231, align 8
  %233 = icmp ne %struct.page* %232, null
  br label %234

234:                                              ; preds = %225, %221
  %235 = phi i1 [ false, %221 ], [ %233, %225 ]
  br i1 %235, label %236, label %264

236:                                              ; preds = %234
  %237 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %238 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %237, i32 0, i32 1
  %239 = load i64*, i64** %238, align 8
  %240 = load i32, i32* %15, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %19, align 8
  %244 = load i64, i64* %19, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %236
  %247 = load %struct.device*, %struct.device** %12, align 8
  %248 = load i64, i64* %19, align 8
  %249 = load i64, i64* @PAGE_SIZE, align 8
  %250 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %251 = call i32 @dma_unmap_page(%struct.device* %247, i64 %248, i64 %249, i32 %250)
  br label %252

252:                                              ; preds = %246, %236
  %253 = load %struct.gk20a_instobj_iommu*, %struct.gk20a_instobj_iommu** %10, align 8
  %254 = getelementptr inbounds %struct.gk20a_instobj_iommu, %struct.gk20a_instobj_iommu* %253, i32 0, i32 0
  %255 = load %struct.page**, %struct.page*** %254, align 8
  %256 = load i32, i32* %15, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.page*, %struct.page** %255, i64 %257
  %259 = load %struct.page*, %struct.page** %258, align 8
  %260 = call i32 @__free_page(%struct.page* %259)
  br label %261

261:                                              ; preds = %252
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %15, align 4
  br label %221

264:                                              ; preds = %234
  %265 = load i32, i32* %14, align 4
  store i32 %265, i32* %5, align 4
  br label %266

266:                                              ; preds = %264, %189, %36
  %267 = load i32, i32* %5, align 4
  ret i32 %267
}

declare dso_local %struct.gk20a_instobj_iommu* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_memory_ctor(i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @dma_map_page(%struct.device*, %struct.page*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @nvkm_mm_head(i32, i32, i32, i32, i32, i32, %struct.nvkm_mm_node**) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @iommu_map(i32, i32, i64, i64, i32) #1

declare dso_local i32 @iommu_unmap(i32, i32, i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @nvkm_mm_free(i32, %struct.nvkm_mm_node**) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
