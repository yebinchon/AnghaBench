; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_xgmi.c_amdgpu_xgmi_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_xgmi.c_amdgpu_xgmi_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_hive_info = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_xgmi_remove_device(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_hive_info*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = call %struct.amdgpu_hive_info* @amdgpu_get_xgmi_hive(%struct.amdgpu_device* %12, i32 1)
  store %struct.amdgpu_hive_info* %13, %struct.amdgpu_hive_info** %3, align 8
  %14 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %3, align 8
  %15 = icmp ne %struct.amdgpu_hive_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %40

17:                                               ; preds = %11
  %18 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %3, align 8
  %26 = call i32 @amdgpu_xgmi_sysfs_destroy(%struct.amdgpu_device* %24, %struct.amdgpu_hive_info* %25)
  %27 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %27, i32 0, i32 0
  %29 = call i32 @mutex_destroy(i32* %28)
  %30 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %30, i32 0, i32 1
  %32 = call i32 @mutex_destroy(i32* %31)
  br label %40

33:                                               ; preds = %17
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %3, align 8
  %36 = call i32 @amdgpu_xgmi_sysfs_rem_dev_info(%struct.amdgpu_device* %34, %struct.amdgpu_hive_info* %35)
  %37 = load %struct.amdgpu_hive_info*, %struct.amdgpu_hive_info** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_hive_info, %struct.amdgpu_hive_info* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  br label %40

40:                                               ; preds = %10, %16, %33, %23
  ret void
}

declare dso_local %struct.amdgpu_hive_info* @amdgpu_get_xgmi_hive(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_xgmi_sysfs_destroy(%struct.amdgpu_device*, %struct.amdgpu_hive_info*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @amdgpu_xgmi_sysfs_rem_dev_info(%struct.amdgpu_device*, %struct.amdgpu_hive_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
