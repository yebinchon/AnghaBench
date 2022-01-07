; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_driver_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_driver_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_ring** }
%struct.amdgpu_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AMDGPU_MAX_RINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_fence_driver_suspend(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AMDGPU_MAX_RINGS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %6
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_ring**, %struct.amdgpu_ring*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, i64 %15
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %16, align 8
  store %struct.amdgpu_ring* %17, %struct.amdgpu_ring** %5, align 8
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %19 = icmp ne %struct.amdgpu_ring* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20, %10
  br label %46

27:                                               ; preds = %20
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = call i32 @amdgpu_fence_wait_empty(%struct.amdgpu_ring* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %34 = call i32 @amdgpu_fence_driver_force_completion(%struct.amdgpu_ring* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @amdgpu_irq_put(%struct.amdgpu_device* %36, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %35, %26
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %6

49:                                               ; preds = %6
  ret void
}

declare dso_local i32 @amdgpu_fence_wait_empty(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_fence_driver_force_completion(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_irq_put(%struct.amdgpu_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
