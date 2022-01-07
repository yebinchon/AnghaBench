; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_bind_process_to_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_bind_process_to_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process_device = type { i32 }
%struct.kfd_dev = type { i32 }
%struct.kfd_process = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Process device data doesn't exist\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfd_process_device* @kfd_bind_process_to_device(%struct.kfd_dev* %0, %struct.kfd_process* %1) #0 {
  %3 = alloca %struct.kfd_process_device*, align 8
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  %6 = alloca %struct.kfd_process_device*, align 8
  %7 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %4, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %5, align 8
  %8 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %9 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %10 = call %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev* %8, %struct.kfd_process* %9)
  store %struct.kfd_process_device* %10, %struct.kfd_process_device** %6, align 8
  %11 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %12 = icmp ne %struct.kfd_process_device* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.kfd_process_device* @ERR_PTR(i32 %16)
  store %struct.kfd_process_device* %17, %struct.kfd_process_device** %3, align 8
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %20 = call i32 @kfd_iommu_bind_process_to_device(%struct.kfd_process_device* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.kfd_process_device* @ERR_PTR(i32 %24)
  store %struct.kfd_process_device* %25, %struct.kfd_process_device** %3, align 8
  br label %36

26:                                               ; preds = %18
  %27 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  %28 = call i32 @kfd_process_device_init_vm(%struct.kfd_process_device* %27, i32* null)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.kfd_process_device* @ERR_PTR(i32 %32)
  store %struct.kfd_process_device* %33, %struct.kfd_process_device** %3, align 8
  br label %36

34:                                               ; preds = %26
  %35 = load %struct.kfd_process_device*, %struct.kfd_process_device** %6, align 8
  store %struct.kfd_process_device* %35, %struct.kfd_process_device** %3, align 8
  br label %36

36:                                               ; preds = %34, %31, %23, %13
  %37 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  ret %struct.kfd_process_device* %37
}

declare dso_local %struct.kfd_process_device* @kfd_get_process_device_data(%struct.kfd_dev*, %struct.kfd_process*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.kfd_process_device* @ERR_PTR(i32) #1

declare dso_local i32 @kfd_iommu_bind_process_to_device(%struct.kfd_process_device*) #1

declare dso_local i32 @kfd_process_device_init_vm(%struct.kfd_process_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
