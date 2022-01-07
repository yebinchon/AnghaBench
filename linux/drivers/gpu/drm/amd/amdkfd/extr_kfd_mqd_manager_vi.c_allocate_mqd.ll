; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_vi.c_allocate_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_vi.c_allocate_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_mem_obj = type { i32 }
%struct.kfd_dev = type { i32 }
%struct.queue_properties = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kfd_mem_obj* (%struct.kfd_dev*, %struct.queue_properties*)* @allocate_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kfd_mem_obj* @allocate_mqd(%struct.kfd_dev* %0, %struct.queue_properties* %1) #0 {
  %3 = alloca %struct.kfd_mem_obj*, align 8
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.queue_properties*, align 8
  %6 = alloca %struct.kfd_mem_obj*, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %4, align 8
  store %struct.queue_properties* %1, %struct.queue_properties** %5, align 8
  %7 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %8 = call i64 @kfd_gtt_sa_allocate(%struct.kfd_dev* %7, i32 4, %struct.kfd_mem_obj** %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.kfd_mem_obj* null, %struct.kfd_mem_obj** %3, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  store %struct.kfd_mem_obj* %12, %struct.kfd_mem_obj** %3, align 8
  br label %13

13:                                               ; preds = %11, %10
  %14 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %3, align 8
  ret %struct.kfd_mem_obj* %14
}

declare dso_local i64 @kfd_gtt_sa_allocate(%struct.kfd_dev*, i32, %struct.kfd_mem_obj**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
