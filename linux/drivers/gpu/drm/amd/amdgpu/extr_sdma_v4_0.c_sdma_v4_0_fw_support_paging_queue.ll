; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_fw_support_paging_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_fw_support_paging_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @sdma_v4_0_fw_support_paging_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_fw_support_paging_queue(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %24 [
    i32 130, label %15
    i32 129, label %19
    i32 128, label %20
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 430
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 123
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %20, %19, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
