; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_get_clock_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_chardev.c_kfd_ioctl_get_clock_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kfd_process = type { i32 }
%struct.kfd_ioctl_get_clock_counters_args = type { i32, i32, i32, i64, i32 }
%struct.kfd_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kfd_process*, i8*)* @kfd_ioctl_get_clock_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_ioctl_get_clock_counters(%struct.file* %0, %struct.kfd_process* %1, i8* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kfd_process*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kfd_ioctl_get_clock_counters_args*, align 8
  %8 = alloca %struct.kfd_dev*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.kfd_process* %1, %struct.kfd_process** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.kfd_ioctl_get_clock_counters_args*
  store %struct.kfd_ioctl_get_clock_counters_args* %10, %struct.kfd_ioctl_get_clock_counters_args** %7, align 8
  %11 = load %struct.kfd_ioctl_get_clock_counters_args*, %struct.kfd_ioctl_get_clock_counters_args** %7, align 8
  %12 = getelementptr inbounds %struct.kfd_ioctl_get_clock_counters_args, %struct.kfd_ioctl_get_clock_counters_args* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.kfd_dev* @kfd_device_by_id(i32 %13)
  store %struct.kfd_dev* %14, %struct.kfd_dev** %8, align 8
  %15 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %16 = icmp ne %struct.kfd_dev* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.kfd_dev*, %struct.kfd_dev** %8, align 8
  %19 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @amdgpu_amdkfd_get_gpu_clock_counter(i32 %20)
  %22 = load %struct.kfd_ioctl_get_clock_counters_args*, %struct.kfd_ioctl_get_clock_counters_args** %7, align 8
  %23 = getelementptr inbounds %struct.kfd_ioctl_get_clock_counters_args, %struct.kfd_ioctl_get_clock_counters_args* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  br label %27

24:                                               ; preds = %3
  %25 = load %struct.kfd_ioctl_get_clock_counters_args*, %struct.kfd_ioctl_get_clock_counters_args** %7, align 8
  %26 = getelementptr inbounds %struct.kfd_ioctl_get_clock_counters_args, %struct.kfd_ioctl_get_clock_counters_args* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %17
  %28 = call i32 (...) @ktime_get_raw_ns()
  %29 = load %struct.kfd_ioctl_get_clock_counters_args*, %struct.kfd_ioctl_get_clock_counters_args** %7, align 8
  %30 = getelementptr inbounds %struct.kfd_ioctl_get_clock_counters_args, %struct.kfd_ioctl_get_clock_counters_args* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = call i32 (...) @ktime_get_boottime_ns()
  %32 = load %struct.kfd_ioctl_get_clock_counters_args*, %struct.kfd_ioctl_get_clock_counters_args** %7, align 8
  %33 = getelementptr inbounds %struct.kfd_ioctl_get_clock_counters_args, %struct.kfd_ioctl_get_clock_counters_args* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.kfd_ioctl_get_clock_counters_args*, %struct.kfd_ioctl_get_clock_counters_args** %7, align 8
  %35 = getelementptr inbounds %struct.kfd_ioctl_get_clock_counters_args, %struct.kfd_ioctl_get_clock_counters_args* %34, i32 0, i32 0
  store i32 1000000000, i32* %35, align 8
  ret i32 0
}

declare dso_local %struct.kfd_dev* @kfd_device_by_id(i32) #1

declare dso_local i64 @amdgpu_amdkfd_get_gpu_clock_counter(i32) #1

declare dso_local i32 @ktime_get_raw_ns(...) #1

declare dso_local i32 @ktime_get_boottime_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
