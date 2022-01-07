; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_check_compute_bug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_check_compute_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.amdgpu_ring**, %struct.TYPE_5__ }
%struct.amdgpu_ring = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.amdgpu_ip_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@AMD_IP_BLOCK_TYPE_GFX = common dso_local global i32 0, align 4
@AMDGPU_RING_TYPE_COMPUTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_vm_check_compute_bug(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ip_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = load i32, i32* @AMD_IP_BLOCK_TYPE_GFX, align 4
  %9 = call %struct.amdgpu_ip_block* @amdgpu_device_ip_get_ip_block(%struct.amdgpu_device* %7, i32 %8)
  store %struct.amdgpu_ip_block* %9, %struct.amdgpu_ip_block** %3, align 8
  %10 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %3, align 8
  %11 = icmp ne %struct.amdgpu_ip_block* %10, null
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 7
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 673
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35, %19
  br label %37

37:                                               ; preds = %36, %1
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %67, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = load %struct.amdgpu_ring**, %struct.amdgpu_ring*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %47, i64 %49
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %50, align 8
  store %struct.amdgpu_ring* %51, %struct.amdgpu_ring** %5, align 8
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AMDGPU_RING_TYPE_COMPUTE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %44
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %62 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %66

63:                                               ; preds = %44
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %38

70:                                               ; preds = %38
  ret void
}

declare dso_local %struct.amdgpu_ip_block* @amdgpu_device_ip_get_ip_block(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
