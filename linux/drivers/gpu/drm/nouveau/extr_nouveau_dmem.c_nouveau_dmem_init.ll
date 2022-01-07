; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nouveau_dmem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__, i32, i32, i32, %struct.nouveau_drm* }
%struct.TYPE_12__ = type { i32*, %struct.resource, i32 }
%struct.resource = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.nouveau_dmem_chunk = type { i64, i32, %struct.nouveau_drm* }
%struct.page = type { %struct.nouveau_dmem_chunk* }

@NV_DEVICE_INFO_V0_PASCAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMEM_CHUNK_SIZE = common dso_local global i64 0, align 8
@iomem_resource = common dso_local global i32 0, align 4
@MEMORY_DEVICE_PRIVATE = common dso_local global i32 0, align 4
@nouveau_dmem_pagemap_ops = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@DMEM_CHUNK_NPAGES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"DMEM: registered %ldMB of device memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_dmem_init(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_dmem_chunk*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %12 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %13 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %3, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NV_DEVICE_INFO_V0_PASCAL, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %182

26:                                               ; preds = %1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 56, i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_11__*
  %30 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %30, i32 0, i32 0
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %31, align 8
  %32 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %182

34:                                               ; preds = %26
  %35 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %36 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %37 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 5
  store %struct.nouveau_drm* %35, %struct.nouveau_drm** %39, align 8
  %40 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %41 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %46 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %51 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %56 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %61 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* @DMEM_CHUNK_SIZE, align 8
  %67 = call i64 @ALIGN(i32 %65, i64 %66)
  store i64 %67, i64* %6, align 8
  %68 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %69 = call i32 @nouveau_dmem_migrate_init(%struct.nouveau_drm* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %34
  br label %175

73:                                               ; preds = %34
  %74 = load %struct.device*, %struct.device** %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call %struct.resource* @devm_request_free_mem_region(%struct.device* %74, i32* @iomem_resource, i64 %75)
  store %struct.resource* %76, %struct.resource** %4, align 8
  %77 = load %struct.resource*, %struct.resource** %4, align 8
  %78 = call i64 @IS_ERR(%struct.resource* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %175

81:                                               ; preds = %73
  %82 = load i32, i32* @MEMORY_DEVICE_PRIVATE, align 4
  %83 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %84 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  store i32 %82, i32* %87, align 8
  %88 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %89 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load %struct.resource*, %struct.resource** %4, align 8
  %94 = bitcast %struct.resource* %92 to i8*
  %95 = bitcast %struct.resource* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %94, i8* align 8 %95, i64 8, i1 false)
  %96 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %97 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32* @nouveau_dmem_pagemap_ops, i32** %100, align 8
  %101 = load %struct.device*, %struct.device** %3, align 8
  %102 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %103 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = call %struct.resource* @devm_memremap_pages(%struct.device* %101, %struct.TYPE_12__* %105)
  %107 = call i64 @IS_ERR(%struct.resource* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %81
  br label %175

110:                                              ; preds = %81
  %111 = load %struct.resource*, %struct.resource** %4, align 8
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PAGE_SHIFT, align 8
  %115 = lshr i64 %113, %114
  store i64 %115, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %116

116:                                              ; preds = %167, %110
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* @DMEM_CHUNK_SIZE, align 8
  %120 = udiv i64 %118, %119
  %121 = icmp ult i64 %117, %120
  br i1 %121, label %122, label %170

122:                                              ; preds = %116
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i8* @kzalloc(i32 24, i32 %123)
  %125 = bitcast i8* %124 to %struct.nouveau_dmem_chunk*
  store %struct.nouveau_dmem_chunk* %125, %struct.nouveau_dmem_chunk** %9, align 8
  %126 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %9, align 8
  %127 = icmp eq %struct.nouveau_dmem_chunk* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %130 = call i32 @nouveau_dmem_fini(%struct.nouveau_drm* %129)
  br label %182

131:                                              ; preds = %122
  %132 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %133 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %9, align 8
  %134 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %133, i32 0, i32 2
  store %struct.nouveau_drm* %132, %struct.nouveau_drm** %134, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @DMEM_CHUNK_NPAGES, align 8
  %138 = mul i64 %136, %137
  %139 = add i64 %135, %138
  %140 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %9, align 8
  %141 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %9, align 8
  %143 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %142, i32 0, i32 1
  %144 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %145 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = call i32 @list_add_tail(i32* %143, i32* %147)
  %149 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %9, align 8
  %150 = getelementptr inbounds %struct.nouveau_dmem_chunk, %struct.nouveau_dmem_chunk* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call %struct.page* @pfn_to_page(i64 %151)
  store %struct.page* %152, %struct.page** %10, align 8
  store i64 0, i64* %11, align 8
  br label %153

153:                                              ; preds = %161, %131
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* @DMEM_CHUNK_NPAGES, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load %struct.nouveau_dmem_chunk*, %struct.nouveau_dmem_chunk** %9, align 8
  %159 = load %struct.page*, %struct.page** %10, align 8
  %160 = getelementptr inbounds %struct.page, %struct.page* %159, i32 0, i32 0
  store %struct.nouveau_dmem_chunk* %158, %struct.nouveau_dmem_chunk** %160, align 8
  br label %161

161:                                              ; preds = %157
  %162 = load i64, i64* %11, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %11, align 8
  %164 = load %struct.page*, %struct.page** %10, align 8
  %165 = getelementptr inbounds %struct.page, %struct.page* %164, i32 1
  store %struct.page* %165, %struct.page** %10, align 8
  br label %153

166:                                              ; preds = %153
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %5, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %5, align 8
  br label %116

170:                                              ; preds = %116
  %171 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %172 = load i64, i64* %6, align 8
  %173 = lshr i64 %172, 20
  %174 = call i32 @NV_INFO(%struct.nouveau_drm* %171, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %173)
  br label %182

175:                                              ; preds = %109, %80, %72
  %176 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %177 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %176, i32 0, i32 0
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = call i32 @kfree(%struct.TYPE_11__* %178)
  %180 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %181 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %180, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %181, align 8
  br label %182

182:                                              ; preds = %175, %170, %128, %33, %25
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @ALIGN(i32, i64) #1

declare dso_local i32 @nouveau_dmem_migrate_init(%struct.nouveau_drm*) #1

declare dso_local %struct.resource* @devm_request_free_mem_region(%struct.device*, i32*, i64) #1

declare dso_local i64 @IS_ERR(%struct.resource*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.resource* @devm_memremap_pages(%struct.device*, %struct.TYPE_12__*) #1

declare dso_local i32 @nouveau_dmem_fini(%struct.nouveau_drm*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
