; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_driver_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_driver_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, %struct.amdgpu_device*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.amdgpu_device = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@amdgpu_fence_fallback = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AMDGPU_RING_TYPE_KIQ = common dso_local global i32 0, align 4
@amdgpu_sched_ops = common dso_local global i32 0, align 4
@amdgpu_job_hang_limit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to create scheduler on ring %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_fence_driver_init_ring(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %6, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %13 = icmp ne %struct.amdgpu_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %134

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sub i32 %19, 1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %134

26:                                               ; preds = %17
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 8
  store i32* null, i32** %29, align 8
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = call i32 @atomic_set(i32* %38, i32 0)
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* @amdgpu_fence_fallback, align 4
  %47 = call i32 @timer_setup(i32* %45, i32 %46, i32 0)
  %48 = load i32, i32* %5, align 4
  %49 = mul i32 %48, 2
  %50 = sub i32 %49, 1
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load i32, i32* %5, align 4
  %59 = mul i32 %58, 2
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @kcalloc(i32 %59, i32 8, i32 %60)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %66 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %26
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %134

73:                                               ; preds = %26
  %74 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %75 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %74, i32 0, i32 3
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AMDGPU_RING_TYPE_KIQ, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %133

81:                                               ; preds = %73
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %83 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %110 [
    i32 129, label %87
    i32 130, label %91
    i32 128, label %106
  ]

87:                                               ; preds = %81
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %7, align 8
  br label %114

91:                                               ; preds = %81
  %92 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %93 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %92, i32 0, i32 2
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %93, align 8
  %95 = call i32 @amdgpu_sriov_vf(%struct.amdgpu_device* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %7, align 8
  br label %105

101:                                              ; preds = %91
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %7, align 8
  br label %105

105:                                              ; preds = %101, %97
  br label %114

106:                                              ; preds = %81
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %7, align 8
  br label %114

110:                                              ; preds = %81
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %110, %106, %105, %87
  %115 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %116 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %115, i32 0, i32 1
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @amdgpu_job_hang_limit, align 4
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %121 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @drm_sched_init(i32* %116, i32* @amdgpu_sched_ops, i32 %117, i32 %118, i64 %119, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %114
  %127 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %128 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %134

132:                                              ; preds = %114
  br label %133

133:                                              ; preds = %132, %73
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %126, %70, %23, %14
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @drm_sched_init(i32*, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
