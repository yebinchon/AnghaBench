; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_import_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_amdgpu_amdkfd_gpuvm_import_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.dma_buf = type { %struct.drm_gem_object*, i32* }
%struct.drm_gem_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.kgd_mem = type { i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_vm = type { i32 }

@amdgpu_dmabuf_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_VM_PAGE_READABLE = common dso_local global i32 0, align 4
@AMDGPU_VM_PAGE_WRITEABLE = common dso_local global i32 0, align 4
@AMDGPU_VM_PAGE_EXECUTABLE = common dso_local global i32 0, align 4
@AMDGPU_VM_MTYPE_NC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_gpuvm_import_dmabuf(%struct.kgd_dev* %0, %struct.dma_buf* %1, i32 %2, i8* %3, %struct.kgd_mem** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kgd_dev*, align 8
  %10 = alloca %struct.dma_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.kgd_mem**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.amdgpu_device*, align 8
  %17 = alloca %struct.drm_gem_object*, align 8
  %18 = alloca %struct.amdgpu_bo*, align 8
  %19 = alloca %struct.amdgpu_vm*, align 8
  store %struct.kgd_dev* %0, %struct.kgd_dev** %9, align 8
  store %struct.dma_buf* %1, %struct.dma_buf** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store %struct.kgd_mem** %4, %struct.kgd_mem*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.kgd_dev*, %struct.kgd_dev** %9, align 8
  %21 = bitcast %struct.kgd_dev* %20 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %16, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = bitcast i8* %22 to %struct.amdgpu_vm*
  store %struct.amdgpu_vm* %23, %struct.amdgpu_vm** %19, align 8
  %24 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %25 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, @amdgpu_dmabuf_ops
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %145

31:                                               ; preds = %7
  %32 = load %struct.dma_buf*, %struct.dma_buf** %10, align 8
  %33 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %32, i32 0, i32 0
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %33, align 8
  store %struct.drm_gem_object* %34, %struct.drm_gem_object** %17, align 8
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %38, align 8
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  %41 = icmp ne %struct.amdgpu_device* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %145

45:                                               ; preds = %31
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %47 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %46)
  store %struct.amdgpu_bo* %47, %struct.amdgpu_bo** %18, align 8
  %48 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %49 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %52 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %145

59:                                               ; preds = %45
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.kgd_mem* @kzalloc(i32 40, i32 %60)
  %62 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  store %struct.kgd_mem* %61, %struct.kgd_mem** %62, align 8
  %63 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %64 = load %struct.kgd_mem*, %struct.kgd_mem** %63, align 8
  %65 = icmp ne %struct.kgd_mem* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %145

69:                                               ; preds = %59
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %74 = call i32 @amdgpu_bo_size(%struct.amdgpu_bo* %73)
  %75 = load i32*, i32** %14, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %81 = call i32 @amdgpu_bo_mmap_offset(%struct.amdgpu_bo* %80)
  %82 = load i32*, i32** %15, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %85 = load %struct.kgd_mem*, %struct.kgd_mem** %84, align 8
  %86 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %85, i32 0, i32 8
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %89 = load %struct.kgd_mem*, %struct.kgd_mem** %88, align 8
  %90 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %89, i32 0, i32 7
  %91 = call i32 @mutex_init(i32* %90)
  %92 = load i32, i32* @AMDGPU_VM_PAGE_READABLE, align 4
  %93 = load i32, i32* @AMDGPU_VM_PAGE_WRITEABLE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @AMDGPU_VM_PAGE_EXECUTABLE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @AMDGPU_VM_MTYPE_NC, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %100 = load %struct.kgd_mem*, %struct.kgd_mem** %99, align 8
  %101 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %103 = call i32 @amdgpu_bo_ref(%struct.amdgpu_bo* %102)
  %104 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %105 = load %struct.kgd_mem*, %struct.kgd_mem** %104, align 8
  %106 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %105, i32 0, i32 6
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %109 = load %struct.kgd_mem*, %struct.kgd_mem** %108, align 8
  %110 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %109, i32 0, i32 5
  store i32 %107, i32* %110, align 8
  %111 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %112 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %83
  %118 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  br label %121

119:                                              ; preds = %83
  %120 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %124 = load %struct.kgd_mem*, %struct.kgd_mem** %123, align 8
  %125 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %127 = load %struct.kgd_mem*, %struct.kgd_mem** %126, align 8
  %128 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %127, i32 0, i32 4
  store i64 0, i64* %128, align 8
  %129 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %19, align 8
  %130 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %133 = load %struct.kgd_mem*, %struct.kgd_mem** %132, align 8
  %134 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 4
  %135 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %136 = load %struct.kgd_mem*, %struct.kgd_mem** %135, align 8
  %137 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %19, align 8
  %138 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @add_kgd_mem_to_kfd_bo_list(%struct.kgd_mem* %136, i32 %139, i32 0)
  %141 = load %struct.kgd_mem**, %struct.kgd_mem*** %13, align 8
  %142 = load %struct.kgd_mem*, %struct.kgd_mem** %141, align 8
  %143 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %142, i32 0, i32 2
  %144 = call i32 @amdgpu_sync_create(i32* %143)
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %121, %66, %56, %42, %28
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.kgd_mem* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_mmap_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @amdgpu_bo_ref(%struct.amdgpu_bo*) #1

declare dso_local i32 @add_kgd_mem_to_kfd_bo_list(%struct.kgd_mem*, i32, i32) #1

declare dso_local i32 @amdgpu_sync_create(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
