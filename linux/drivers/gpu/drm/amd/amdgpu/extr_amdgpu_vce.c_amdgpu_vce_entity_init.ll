; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_entity_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_entity_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_sched_rq* }
%struct.drm_sched_rq = type { i32 }

@DRM_SCHED_PRIORITY_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed setting up VCE run queue.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vce_entity_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca %struct.drm_sched_rq*, align 8
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i64 0
  store %struct.amdgpu_ring* %11, %struct.amdgpu_ring** %4, align 8
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %14, align 8
  %16 = load i64, i64* @DRM_SCHED_PRIORITY_NORMAL, align 8
  %17 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %15, i64 %16
  store %struct.drm_sched_rq* %17, %struct.drm_sched_rq** %5, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @drm_sched_entity_init(i32* %20, %struct.drm_sched_rq** %5, i32 1, i32* null)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @drm_sched_entity_init(i32*, %struct.drm_sched_rq**, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
