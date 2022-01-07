; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_init_mqd_sdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_init_mqd_sdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 (%struct.mqd_manager*, %struct.v10_sdma_mqd*, %struct.queue_properties*)* }
%struct.v10_sdma_mqd = type { i32 }
%struct.kfd_mem_obj = type { i32, i64 }
%struct.queue_properties = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8**, %struct.kfd_mem_obj*, i32*, %struct.queue_properties*)* @init_mqd_sdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mqd_sdma(%struct.mqd_manager* %0, i8** %1, %struct.kfd_mem_obj* %2, i32* %3, %struct.queue_properties* %4) #0 {
  %6 = alloca %struct.mqd_manager*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.kfd_mem_obj*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.queue_properties*, align 8
  %11 = alloca %struct.v10_sdma_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.kfd_mem_obj* %2, %struct.kfd_mem_obj** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.queue_properties* %4, %struct.queue_properties** %10, align 8
  %12 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %13 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.v10_sdma_mqd*
  store %struct.v10_sdma_mqd* %15, %struct.v10_sdma_mqd** %11, align 8
  %16 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %11, align 8
  %17 = call i32 @memset(%struct.v10_sdma_mqd* %16, i32 0, i32 4)
  %18 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %11, align 8
  %19 = bitcast %struct.v10_sdma_mqd* %18 to i8*
  %20 = load i8**, i8*** %7, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %25 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %5
  %29 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %30 = getelementptr inbounds %struct.mqd_manager, %struct.mqd_manager* %29, i32 0, i32 0
  %31 = load i32 (%struct.mqd_manager*, %struct.v10_sdma_mqd*, %struct.queue_properties*)*, i32 (%struct.mqd_manager*, %struct.v10_sdma_mqd*, %struct.queue_properties*)** %30, align 8
  %32 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %33 = load %struct.v10_sdma_mqd*, %struct.v10_sdma_mqd** %11, align 8
  %34 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %35 = call i32 %31(%struct.mqd_manager* %32, %struct.v10_sdma_mqd* %33, %struct.queue_properties* %34)
  ret void
}

declare dso_local i32 @memset(%struct.v10_sdma_mqd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
