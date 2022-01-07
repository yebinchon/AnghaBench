; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_get_dmabuf_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd.c_amdgpu_amdkfd_get_dmabuf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_dev = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.dma_buf = type { %struct.drm_gem_object*, i32* }
%struct.drm_gem_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.amdgpu_device* }
%struct.amdgpu_bo = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@amdgpu_dmabuf_ops = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@ALLOC_MEM_FLAGS_VRAM = common dso_local global i32 0, align 4
@ALLOC_MEM_FLAGS_GTT = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@ALLOC_MEM_FLAGS_PUBLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_amdkfd_get_dmabuf_info(%struct.kgd_dev* %0, i32 %1, %struct.kgd_dev** %2, i32* %3, i8* %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.kgd_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kgd_dev**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.amdgpu_device*, align 8
  %19 = alloca %struct.dma_buf*, align 8
  %20 = alloca %struct.drm_gem_object*, align 8
  %21 = alloca %struct.amdgpu_bo*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.kgd_dev* %0, %struct.kgd_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.kgd_dev** %2, %struct.kgd_dev*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load %struct.kgd_dev*, %struct.kgd_dev** %10, align 8
  %25 = bitcast %struct.kgd_dev* %24 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %25, %struct.amdgpu_device** %18, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %23, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.dma_buf* @dma_buf_get(i32 %28)
  store %struct.dma_buf* %29, %struct.dma_buf** %19, align 8
  %30 = load %struct.dma_buf*, %struct.dma_buf** %19, align 8
  %31 = call i64 @IS_ERR(%struct.dma_buf* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %8
  %34 = load %struct.dma_buf*, %struct.dma_buf** %19, align 8
  %35 = call i32 @PTR_ERR(%struct.dma_buf* %34)
  store i32 %35, i32* %9, align 4
  br label %140

36:                                               ; preds = %8
  %37 = load %struct.dma_buf*, %struct.dma_buf** %19, align 8
  %38 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, @amdgpu_dmabuf_ops
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %136

42:                                               ; preds = %36
  %43 = load %struct.dma_buf*, %struct.dma_buf** %19, align 8
  %44 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %43, i32 0, i32 0
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %44, align 8
  store %struct.drm_gem_object* %45, %struct.drm_gem_object** %20, align 8
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %20, align 8
  %47 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %136

58:                                               ; preds = %42
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %20, align 8
  %60 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %62, align 8
  store %struct.amdgpu_device* %63, %struct.amdgpu_device** %18, align 8
  %64 = load %struct.drm_gem_object*, %struct.drm_gem_object** %20, align 8
  %65 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %64)
  store %struct.amdgpu_bo* %65, %struct.amdgpu_bo** %21, align 8
  %66 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %21, align 8
  %67 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %70 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %58
  br label %136

75:                                               ; preds = %58
  store i32 0, i32* %23, align 4
  %76 = load %struct.kgd_dev**, %struct.kgd_dev*** %12, align 8
  %77 = icmp ne %struct.kgd_dev** %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %18, align 8
  %80 = bitcast %struct.amdgpu_device* %79 to %struct.kgd_dev*
  %81 = load %struct.kgd_dev**, %struct.kgd_dev*** %12, align 8
  store %struct.kgd_dev* %80, %struct.kgd_dev** %81, align 8
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32*, i32** %13, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %21, align 8
  %87 = call i32 @amdgpu_bo_size(%struct.amdgpu_bo* %86)
  %88 = load i32*, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32*, i32** %16, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %21, align 8
  %94 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %16, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %89
  %98 = load i8*, i8** %14, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %21, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = call i32 @amdgpu_bo_get_metadata(%struct.amdgpu_bo* %101, i8* %102, i64 %103, i32* %104, i32* %22)
  store i32 %105, i32* %23, align 4
  br label %106

106:                                              ; preds = %100, %97
  %107 = load i32*, i32** %17, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %135

109:                                              ; preds = %106
  %110 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %21, align 8
  %111 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @ALLOC_MEM_FLAGS_VRAM, align 4
  br label %120

118:                                              ; preds = %109
  %119 = load i32, i32* @ALLOC_MEM_FLAGS_GTT, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load i32*, i32** %17, align 8
  store i32 %121, i32* %122, align 4
  %123 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %21, align 8
  %124 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load i32, i32* @ALLOC_MEM_FLAGS_PUBLIC, align 4
  %131 = load i32*, i32** %17, align 8
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %130
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %129, %120
  br label %135

135:                                              ; preds = %134, %106
  br label %136

136:                                              ; preds = %135, %74, %57, %41
  %137 = load %struct.dma_buf*, %struct.dma_buf** %19, align 8
  %138 = call i32 @dma_buf_put(%struct.dma_buf* %137)
  %139 = load i32, i32* %23, align 4
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %136, %33
  %141 = load i32, i32* %9, align 4
  ret i32 %141
}

declare dso_local %struct.dma_buf* @dma_buf_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_buf*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_buf*) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_get_metadata(%struct.amdgpu_bo*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @dma_buf_put(%struct.dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
