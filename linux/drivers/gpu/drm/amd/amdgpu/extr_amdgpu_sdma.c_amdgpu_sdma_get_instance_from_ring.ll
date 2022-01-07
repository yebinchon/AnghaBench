; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sdma.c_amdgpu_sdma_get_instance_from_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sdma.c_amdgpu_sdma_get_instance_from_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_sdma_instance = type { %struct.amdgpu_ring, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.amdgpu_sdma_instance* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amdgpu_sdma_instance* @amdgpu_sdma_get_instance_from_ring(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_sdma_instance*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 0
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %47, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %9
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.amdgpu_sdma_instance*, %struct.amdgpu_sdma_instance** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %21, i64 %23
  %25 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %24, i32 0, i32 1
  %26 = icmp eq %struct.amdgpu_ring* %17, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %16
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.amdgpu_sdma_instance*, %struct.amdgpu_sdma_instance** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %32, i64 %34
  %36 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %35, i32 0, i32 0
  %37 = icmp eq %struct.amdgpu_ring* %28, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %27, %16
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.amdgpu_sdma_instance*, %struct.amdgpu_sdma_instance** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.amdgpu_sdma_instance, %struct.amdgpu_sdma_instance* %42, i64 %44
  store %struct.amdgpu_sdma_instance* %45, %struct.amdgpu_sdma_instance** %2, align 8
  br label %51

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %9

50:                                               ; preds = %9
  store %struct.amdgpu_sdma_instance* null, %struct.amdgpu_sdma_instance** %2, align 8
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.amdgpu_sdma_instance*, %struct.amdgpu_sdma_instance** %2, align 8
  ret %struct.amdgpu_sdma_instance* %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
