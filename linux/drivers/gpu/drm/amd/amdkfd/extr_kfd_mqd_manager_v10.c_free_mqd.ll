; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_free_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_free_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { %struct.kfd_dev* }
%struct.kfd_dev = type { i32 }
%struct.kfd_mem_obj = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8*, %struct.kfd_mem_obj*)* @free_mqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_mqd(%struct.mqd_manager* %0, i8* %1, %struct.kfd_mem_obj* %2) #0 {
  %4 = alloca %struct.mqd_manager*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kfd_mem_obj*, align 8
  %7 = alloca %struct.kfd_dev*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.kfd_mem_obj* %2, %struct.kfd_mem_obj** %6, align 8
  %8 = load %struct.mqd_manager*, %struct.mqd_manager** %4, align 8
  %9 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %8, i32 0, i32 0
  %10 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  store %struct.kfd_dev* %10, %struct.kfd_dev** %7, align 8
  %11 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %12 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load %struct.kfd_dev*, %struct.kfd_dev** %7, align 8
  %17 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %20 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @amdgpu_amdkfd_free_gtt_mem(i32 %18, i64 %21)
  %23 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %24 = call i32 @kfree(%struct.kfd_mem_obj* %23)
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.mqd_manager*, %struct.mqd_manager** %4, align 8
  %27 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %26, i32 0, i32 0
  %28 = load %struct.kfd_dev*, %struct.kfd_dev** %27, align 8
  %29 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %30 = call i32 @kfd_gtt_sa_free(%struct.kfd_dev* %28, %struct.kfd_mem_obj* %29)
  br label %31

31:                                               ; preds = %25, %15
  ret void
}

declare dso_local i32 @amdgpu_amdkfd_free_gtt_mem(i32, i64) #1

declare dso_local i32 @kfree(%struct.kfd_mem_obj*) #1

declare dso_local i32 @kfd_gtt_sa_free(%struct.kfd_dev*, %struct.kfd_mem_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
