; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_get_next_process_device_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_process.c_kfd_get_next_process_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process = type { i32 }
%struct.kfd_process_device = type { i32 }

@per_device_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfd_process_device* @kfd_get_next_process_device_data(%struct.kfd_process* %0, %struct.kfd_process_device* %1) #0 {
  %3 = alloca %struct.kfd_process_device*, align 8
  %4 = alloca %struct.kfd_process*, align 8
  %5 = alloca %struct.kfd_process_device*, align 8
  store %struct.kfd_process* %0, %struct.kfd_process** %4, align 8
  store %struct.kfd_process_device* %1, %struct.kfd_process_device** %5, align 8
  %6 = load %struct.kfd_process_device*, %struct.kfd_process_device** %5, align 8
  %7 = getelementptr inbounds %struct.kfd_process_device, %struct.kfd_process_device* %6, i32 0, i32 0
  %8 = load %struct.kfd_process*, %struct.kfd_process** %4, align 8
  %9 = getelementptr inbounds %struct.kfd_process, %struct.kfd_process* %8, i32 0, i32 0
  %10 = call i64 @list_is_last(i32* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.kfd_process_device* null, %struct.kfd_process_device** %3, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.kfd_process_device*, %struct.kfd_process_device** %5, align 8
  %15 = load i32, i32* @per_device_list, align 4
  %16 = call %struct.kfd_process_device* @list_next_entry(%struct.kfd_process_device* %14, i32 %15)
  store %struct.kfd_process_device* %16, %struct.kfd_process_device** %3, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load %struct.kfd_process_device*, %struct.kfd_process_device** %3, align 8
  ret %struct.kfd_process_device* %18
}

declare dso_local i64 @list_is_last(i32*, i32*) #1

declare dso_local %struct.kfd_process_device* @list_next_entry(%struct.kfd_process_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
