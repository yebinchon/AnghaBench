; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_fence_to_handle_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_fence_to_handle_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { i32 }
%union.drm_amdgpu_fence_to_handle = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dma_fence = type { i32 }
%struct.drm_syncobj = type { i32 }
%struct.sync_file = type { i32 }
%struct.TYPE_4__ = type { i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_cs_fence_to_handle_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %union.drm_amdgpu_fence_to_handle*, align 8
  %10 = alloca %struct.dma_fence*, align 8
  %11 = alloca %struct.drm_syncobj*, align 8
  %12 = alloca %struct.sync_file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %union.drm_amdgpu_fence_to_handle*
  store %union.drm_amdgpu_fence_to_handle* %19, %union.drm_amdgpu_fence_to_handle** %9, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = load %union.drm_amdgpu_fence_to_handle*, %union.drm_amdgpu_fence_to_handle** %9, align 8
  %23 = bitcast %union.drm_amdgpu_fence_to_handle* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call %struct.dma_fence* @amdgpu_cs_get_fence(%struct.amdgpu_device* %20, %struct.drm_file* %21, i32* %24)
  store %struct.dma_fence* %25, %struct.dma_fence** %10, align 8
  %26 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %27 = call i64 @IS_ERR(%struct.dma_fence* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %31 = call i32 @PTR_ERR(%struct.dma_fence* %30)
  store i32 %31, i32* %4, align 4
  br label %113

32:                                               ; preds = %3
  %33 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %34 = icmp ne %struct.dma_fence* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call %struct.dma_fence* (...) @dma_fence_get_stub()
  store %struct.dma_fence* %36, %struct.dma_fence** %10, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %union.drm_amdgpu_fence_to_handle*, %union.drm_amdgpu_fence_to_handle** %9, align 8
  %39 = bitcast %union.drm_amdgpu_fence_to_handle* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %110 [
    i32 130, label %42
    i32 129, label %61
    i32 128, label %79
  ]

42:                                               ; preds = %37
  %43 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %44 = call i32 @drm_syncobj_create(%struct.drm_syncobj** %11, i32 0, %struct.dma_fence* %43)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %46 = call i32 @dma_fence_put(%struct.dma_fence* %45)
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %4, align 4
  br label %113

51:                                               ; preds = %42
  %52 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %53 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %54 = load %union.drm_amdgpu_fence_to_handle*, %union.drm_amdgpu_fence_to_handle** %9, align 8
  %55 = bitcast %union.drm_amdgpu_fence_to_handle* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @drm_syncobj_get_handle(%struct.drm_file* %52, %struct.drm_syncobj* %53, i32* %56)
  store i32 %57, i32* %14, align 4
  %58 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %59 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %58)
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %4, align 4
  br label %113

61:                                               ; preds = %37
  %62 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %63 = call i32 @drm_syncobj_create(%struct.drm_syncobj** %11, i32 0, %struct.dma_fence* %62)
  store i32 %63, i32* %14, align 4
  %64 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %65 = call i32 @dma_fence_put(%struct.dma_fence* %64)
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %4, align 4
  br label %113

70:                                               ; preds = %61
  %71 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %72 = load %union.drm_amdgpu_fence_to_handle*, %union.drm_amdgpu_fence_to_handle** %9, align 8
  %73 = bitcast %union.drm_amdgpu_fence_to_handle* %72 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @drm_syncobj_get_fd(%struct.drm_syncobj* %71, i32* %74)
  store i32 %75, i32* %14, align 4
  %76 = load %struct.drm_syncobj*, %struct.drm_syncobj** %11, align 8
  %77 = call i32 @drm_syncobj_put(%struct.drm_syncobj* %76)
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %4, align 4
  br label %113

79:                                               ; preds = %37
  %80 = load i32, i32* @O_CLOEXEC, align 4
  %81 = call i32 @get_unused_fd_flags(i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %86 = call i32 @dma_fence_put(%struct.dma_fence* %85)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %4, align 4
  br label %113

88:                                               ; preds = %79
  %89 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %90 = call %struct.sync_file* @sync_file_create(%struct.dma_fence* %89)
  store %struct.sync_file* %90, %struct.sync_file** %12, align 8
  %91 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %92 = call i32 @dma_fence_put(%struct.dma_fence* %91)
  %93 = load %struct.sync_file*, %struct.sync_file** %12, align 8
  %94 = icmp ne %struct.sync_file* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @put_unused_fd(i32 %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %113

100:                                              ; preds = %88
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.sync_file*, %struct.sync_file** %12, align 8
  %103 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @fd_install(i32 %101, i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = load %union.drm_amdgpu_fence_to_handle*, %union.drm_amdgpu_fence_to_handle** %9, align 8
  %108 = bitcast %union.drm_amdgpu_fence_to_handle* %107 to %struct.TYPE_4__*
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  store i32 0, i32* %4, align 4
  br label %113

110:                                              ; preds = %37
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %100, %95, %84, %70, %68, %51, %49, %29
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.dma_fence* @amdgpu_cs_get_fence(%struct.amdgpu_device*, %struct.drm_file*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence* @dma_fence_get_stub(...) #1

declare dso_local i32 @drm_syncobj_create(%struct.drm_syncobj**, i32, %struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @drm_syncobj_get_handle(%struct.drm_file*, %struct.drm_syncobj*, i32*) #1

declare dso_local i32 @drm_syncobj_put(%struct.drm_syncobj*) #1

declare dso_local i32 @drm_syncobj_get_fd(%struct.drm_syncobj*, i32*) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.sync_file* @sync_file_create(%struct.dma_fence*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @fd_install(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
