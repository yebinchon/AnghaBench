; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_block_version_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_device.c_amdgpu_device_ip_block_version_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ip_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_device_ip_block_version_cmp(%struct.amdgpu_device* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amdgpu_ip_block*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.amdgpu_ip_block* @amdgpu_device_ip_get_ip_block(%struct.amdgpu_device* %11, i32 %12)
  store %struct.amdgpu_ip_block* %13, %struct.amdgpu_ip_block** %10, align 8
  %14 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %10, align 8
  %15 = icmp ne %struct.amdgpu_ip_block* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %4
  %17 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %10, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %16
  %25 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %10, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.amdgpu_ip_block*, %struct.amdgpu_ip_block** %10, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ip_block, %struct.amdgpu_ip_block* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32, %16
  store i32 0, i32* %5, align 4
  br label %42

41:                                               ; preds = %32, %24, %4
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.amdgpu_ip_block* @amdgpu_device_ip_get_ip_block(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
