; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_wait_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_wait_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%union.drm_amdgpu_wait_cs = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_sched_entity = type { i32 }
%struct.amdgpu_ctx = type { i32 }
%struct.dma_fence = type { i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_cs_wait_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %union.drm_amdgpu_wait_cs*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.drm_sched_entity*, align 8
  %11 = alloca %struct.amdgpu_ctx*, align 8
  %12 = alloca %struct.dma_fence*, align 8
  %13 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %union.drm_amdgpu_wait_cs*
  store %union.drm_amdgpu_wait_cs* %15, %union.drm_amdgpu_wait_cs** %8, align 8
  %16 = load %union.drm_amdgpu_wait_cs*, %union.drm_amdgpu_wait_cs** %8, align 8
  %17 = bitcast %union.drm_amdgpu_wait_cs* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @amdgpu_gem_timeout(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %union.drm_amdgpu_wait_cs*, %union.drm_amdgpu_wait_cs** %8, align 8
  %25 = bitcast %union.drm_amdgpu_wait_cs* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.amdgpu_ctx* @amdgpu_ctx_get(i32 %23, i32 %27)
  store %struct.amdgpu_ctx* %28, %struct.amdgpu_ctx** %11, align 8
  %29 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %11, align 8
  %30 = icmp eq %struct.amdgpu_ctx* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %110

34:                                               ; preds = %3
  %35 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %11, align 8
  %36 = load %union.drm_amdgpu_wait_cs*, %union.drm_amdgpu_wait_cs** %8, align 8
  %37 = bitcast %union.drm_amdgpu_wait_cs* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %union.drm_amdgpu_wait_cs*, %union.drm_amdgpu_wait_cs** %8, align 8
  %41 = bitcast %union.drm_amdgpu_wait_cs* %40 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %union.drm_amdgpu_wait_cs*, %union.drm_amdgpu_wait_cs** %8, align 8
  %45 = bitcast %union.drm_amdgpu_wait_cs* %44 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @amdgpu_ctx_get_entity(%struct.amdgpu_ctx* %35, i32 %39, i32 %43, i32 %47, %struct.drm_sched_entity** %10)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %11, align 8
  %53 = call i32 @amdgpu_ctx_put(%struct.amdgpu_ctx* %52)
  %54 = load i64, i64* %13, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %110

56:                                               ; preds = %34
  %57 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %11, align 8
  %58 = load %struct.drm_sched_entity*, %struct.drm_sched_entity** %10, align 8
  %59 = load %union.drm_amdgpu_wait_cs*, %union.drm_amdgpu_wait_cs** %8, align 8
  %60 = bitcast %union.drm_amdgpu_wait_cs* %59 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.dma_fence* @amdgpu_ctx_get_fence(%struct.amdgpu_ctx* %57, %struct.drm_sched_entity* %58, i32 %62)
  store %struct.dma_fence* %63, %struct.dma_fence** %12, align 8
  %64 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %65 = call i64 @IS_ERR(%struct.dma_fence* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %69 = call i64 @PTR_ERR(%struct.dma_fence* %68)
  store i64 %69, i64* %13, align 8
  br label %93

70:                                               ; preds = %56
  %71 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %72 = icmp ne %struct.dma_fence* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %70
  %74 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %74, i32 1, i64 %75)
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %81 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %86 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %84, %79, %73
  %89 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %90 = call i32 @dma_fence_put(%struct.dma_fence* %89)
  br label %92

91:                                               ; preds = %70
  store i64 1, i64* %13, align 8
  br label %92

92:                                               ; preds = %91, %88
  br label %93

93:                                               ; preds = %92, %67
  %94 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %11, align 8
  %95 = call i32 @amdgpu_ctx_put(%struct.amdgpu_ctx* %94)
  %96 = load i64, i64* %13, align 8
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i64, i64* %13, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %110

101:                                              ; preds = %93
  %102 = load %union.drm_amdgpu_wait_cs*, %union.drm_amdgpu_wait_cs** %8, align 8
  %103 = call i32 @memset(%union.drm_amdgpu_wait_cs* %102, i32 0, i32 24)
  %104 = load i64, i64* %13, align 8
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = load %union.drm_amdgpu_wait_cs*, %union.drm_amdgpu_wait_cs** %8, align 8
  %108 = bitcast %union.drm_amdgpu_wait_cs* %107 to %struct.TYPE_4__*
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %101, %98, %51, %31
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @amdgpu_gem_timeout(i32) #1

declare dso_local %struct.amdgpu_ctx* @amdgpu_ctx_get(i32, i32) #1

declare dso_local i64 @amdgpu_ctx_get_entity(%struct.amdgpu_ctx*, i32, i32, i32, %struct.drm_sched_entity**) #1

declare dso_local i32 @amdgpu_ctx_put(%struct.amdgpu_ctx*) #1

declare dso_local %struct.dma_fence* @amdgpu_ctx_get_fence(%struct.amdgpu_ctx*, %struct.drm_sched_entity*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dma_fence*) #1

declare dso_local i64 @PTR_ERR(%struct.dma_fence*) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i64) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @memset(%union.drm_amdgpu_wait_cs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
