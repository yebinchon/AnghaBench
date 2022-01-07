; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_map_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_map_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_table = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }
%struct.dma_buf_attachment = type { %struct.udl_drm_dmabuf_attachment*, i32, %struct.TYPE_6__* }
%struct.udl_drm_dmabuf_attachment = type { i32, i32, %struct.sg_table }
%struct.TYPE_6__ = type { i32, i32 }
%struct.udl_gem_object = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.scatterlist*, i32 }
%struct.TYPE_7__ = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.udl_device* }
%struct.udl_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"[DEV:%s] size:%zd dir=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to map pages.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to allocate sgt.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to alloc sgt.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to map sgl with iommu.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sg_table* (%struct.dma_buf_attachment*, i32)* @udl_map_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sg_table* @udl_map_dma_buf(%struct.dma_buf_attachment* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_table*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.udl_drm_dmabuf_attachment*, align 8
  %7 = alloca %struct.udl_gem_object*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.udl_device*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.sg_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %18 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %17, i32 0, i32 0
  %19 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %18, align 8
  store %struct.udl_drm_dmabuf_attachment* %19, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %20 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %21 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.udl_gem_object* @to_udl_bo(i32 %24)
  store %struct.udl_gem_object* %25, %struct.udl_gem_object** %7, align 8
  %26 = load %struct.udl_gem_object*, %struct.udl_gem_object** %7, align 8
  %27 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.drm_device*, %struct.drm_device** %28, align 8
  store %struct.drm_device* %29, %struct.drm_device** %8, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load %struct.udl_device*, %struct.udl_device** %31, align 8
  store %struct.udl_device* %32, %struct.udl_device** %9, align 8
  store %struct.sg_table* null, %struct.sg_table** %12, align 8
  %33 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %34 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_name(i32 %35)
  %37 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %38 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @DRM_DEBUG_PRIME(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41, i32 %42)
  %44 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %45 = getelementptr inbounds %struct.udl_drm_dmabuf_attachment, %struct.udl_drm_dmabuf_attachment* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %2
  %50 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %51 = getelementptr inbounds %struct.udl_drm_dmabuf_attachment, %struct.udl_drm_dmabuf_attachment* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %56 = getelementptr inbounds %struct.udl_drm_dmabuf_attachment, %struct.udl_drm_dmabuf_attachment* %55, i32 0, i32 2
  store %struct.sg_table* %56, %struct.sg_table** %3, align 8
  br label %191

57:                                               ; preds = %49, %2
  %58 = load %struct.udl_gem_object*, %struct.udl_gem_object** %7, align 8
  %59 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load %struct.udl_gem_object*, %struct.udl_gem_object** %7, align 8
  %64 = call i32 @udl_gem_get_pages(%struct.udl_gem_object* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %16, align 4
  %70 = call %struct.sg_table* @ERR_PTR(i32 %69)
  store %struct.sg_table* %70, %struct.sg_table** %3, align 8
  br label %191

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.udl_gem_object*, %struct.udl_gem_object** %7, align 8
  %74 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %14, align 4
  %79 = load %struct.udl_gem_object*, %struct.udl_gem_object** %7, align 8
  %80 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call %struct.TYPE_8__* @drm_prime_pages_to_sg(i32 %81, i32 %82)
  %84 = load %struct.udl_gem_object*, %struct.udl_gem_object** %7, align 8
  %85 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %84, i32 0, i32 0
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %85, align 8
  %86 = load %struct.udl_gem_object*, %struct.udl_gem_object** %7, align 8
  %87 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = call i64 @IS_ERR(%struct.TYPE_8__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %72
  %92 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.udl_gem_object*, %struct.udl_gem_object** %7, align 8
  %94 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call %struct.sg_table* @ERR_CAST(%struct.TYPE_8__* %95)
  store %struct.sg_table* %96, %struct.sg_table** %3, align 8
  br label %191

97:                                               ; preds = %72
  %98 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %99 = getelementptr inbounds %struct.udl_drm_dmabuf_attachment, %struct.udl_drm_dmabuf_attachment* %98, i32 0, i32 2
  store %struct.sg_table* %99, %struct.sg_table** %12, align 8
  %100 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %101 = load %struct.udl_gem_object*, %struct.udl_gem_object** %7, align 8
  %102 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i32 @sg_alloc_table(%struct.sg_table* %100, i32 %105, i32 %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %97
  %111 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  %114 = call %struct.sg_table* @ERR_PTR(i32 %113)
  store %struct.sg_table* %114, %struct.sg_table** %3, align 8
  br label %191

115:                                              ; preds = %97
  %116 = load %struct.udl_device*, %struct.udl_device** %9, align 8
  %117 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %116, i32 0, i32 0
  %118 = call i32 @mutex_lock(i32* %117)
  %119 = load %struct.udl_gem_object*, %struct.udl_gem_object** %7, align 8
  %120 = getelementptr inbounds %struct.udl_gem_object, %struct.udl_gem_object* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.scatterlist*, %struct.scatterlist** %122, align 8
  store %struct.scatterlist* %123, %struct.scatterlist** %10, align 8
  %124 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %125 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %124, i32 0, i32 1
  %126 = load %struct.scatterlist*, %struct.scatterlist** %125, align 8
  store %struct.scatterlist* %126, %struct.scatterlist** %11, align 8
  store i32 0, i32* %13, align 4
  br label %127

127:                                              ; preds = %148, %115
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %130 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ult i32 %128, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %127
  %134 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %135 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %136 = call i32 @sg_page(%struct.scatterlist* %135)
  %137 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %138 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %141 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @sg_set_page(%struct.scatterlist* %134, i32 %136, i32 %139, i32 %142)
  %144 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %145 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %144)
  store %struct.scatterlist* %145, %struct.scatterlist** %10, align 8
  %146 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %147 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %146)
  store %struct.scatterlist* %147, %struct.scatterlist** %11, align 8
  br label %148

148:                                              ; preds = %133
  %149 = load i32, i32* %13, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %127

151:                                              ; preds = %127
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @DMA_NONE, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %177

155:                                              ; preds = %151
  %156 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %157 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %160 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %159, i32 0, i32 1
  %161 = load %struct.scatterlist*, %struct.scatterlist** %160, align 8
  %162 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %163 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @dma_map_sg(i32 %158, %struct.scatterlist* %161, i32 %164, i32 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %155
  %170 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %172 = call i32 @sg_free_table(%struct.sg_table* %171)
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  %175 = call %struct.sg_table* @ERR_PTR(i32 %174)
  store %struct.sg_table* %175, %struct.sg_table** %12, align 8
  br label %186

176:                                              ; preds = %155
  br label %177

177:                                              ; preds = %176, %151
  %178 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %179 = getelementptr inbounds %struct.udl_drm_dmabuf_attachment, %struct.udl_drm_dmabuf_attachment* %178, i32 0, i32 1
  store i32 1, i32* %179, align 4
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %182 = getelementptr inbounds %struct.udl_drm_dmabuf_attachment, %struct.udl_drm_dmabuf_attachment* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %184 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %185 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %184, i32 0, i32 0
  store %struct.udl_drm_dmabuf_attachment* %183, %struct.udl_drm_dmabuf_attachment** %185, align 8
  br label %186

186:                                              ; preds = %177, %169
  %187 = load %struct.udl_device*, %struct.udl_device** %9, align 8
  %188 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %187, i32 0, i32 0
  %189 = call i32 @mutex_unlock(i32* %188)
  %190 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  store %struct.sg_table* %190, %struct.sg_table** %3, align 8
  br label %191

191:                                              ; preds = %186, %110, %91, %67, %54
  %192 = load %struct.sg_table*, %struct.sg_table** %3, align 8
  ret %struct.sg_table* %192
}

declare dso_local %struct.udl_gem_object* @to_udl_bo(i32) #1

declare dso_local i32 @DRM_DEBUG_PRIME(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @udl_gem_get_pages(%struct.udl_gem_object*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.sg_table* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_8__* @drm_prime_pages_to_sg(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local %struct.sg_table* @ERR_CAST(%struct.TYPE_8__*) #1

declare dso_local i32 @sg_alloc_table(%struct.sg_table*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
