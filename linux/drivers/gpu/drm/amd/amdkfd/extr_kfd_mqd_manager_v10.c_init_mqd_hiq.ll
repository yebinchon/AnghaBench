; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_init_mqd_hiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_init_mqd_hiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 }
%struct.kfd_mem_obj = type { i32 }
%struct.queue_properties = type { i32 }
%struct.v10_compute_mqd = type { i32 }

@CP_HQD_PQ_CONTROL__PRIV_STATE__SHIFT = common dso_local global i32 0, align 4
@CP_HQD_PQ_CONTROL__KMD_QUEUE__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8**, %struct.kfd_mem_obj*, i32*, %struct.queue_properties*)* @init_mqd_hiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mqd_hiq(%struct.mqd_manager* %0, i8** %1, %struct.kfd_mem_obj* %2, i32* %3, %struct.queue_properties* %4) #0 {
  %6 = alloca %struct.mqd_manager*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.kfd_mem_obj*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.queue_properties*, align 8
  %11 = alloca %struct.v10_compute_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.kfd_mem_obj* %2, %struct.kfd_mem_obj** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.queue_properties* %4, %struct.queue_properties** %10, align 8
  %12 = load %struct.mqd_manager*, %struct.mqd_manager** %6, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load %struct.queue_properties*, %struct.queue_properties** %10, align 8
  %17 = call i32 @init_mqd(%struct.mqd_manager* %12, i8** %13, %struct.kfd_mem_obj* %14, i32* %15, %struct.queue_properties* %16)
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call %struct.v10_compute_mqd* @get_mqd(i8* %19)
  store %struct.v10_compute_mqd* %20, %struct.v10_compute_mqd** %11, align 8
  %21 = load i32, i32* @CP_HQD_PQ_CONTROL__PRIV_STATE__SHIFT, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* @CP_HQD_PQ_CONTROL__KMD_QUEUE__SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %11, align 8
  %27 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  ret void
}

declare dso_local i32 @init_mqd(%struct.mqd_manager*, i8**, %struct.kfd_mem_obj*, i32*, %struct.queue_properties*) #1

declare dso_local %struct.v10_compute_mqd* @get_mqd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
