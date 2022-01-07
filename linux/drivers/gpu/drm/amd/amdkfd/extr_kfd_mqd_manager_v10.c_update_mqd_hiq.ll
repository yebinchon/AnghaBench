; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_update_mqd_hiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_v10.c_update_mqd_hiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqd_manager = type { i32 }
%struct.queue_properties = type { i32 }
%struct.v10_compute_mqd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqd_manager*, i8*, %struct.queue_properties*)* @update_mqd_hiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mqd_hiq(%struct.mqd_manager* %0, i8* %1, %struct.queue_properties* %2) #0 {
  %4 = alloca %struct.mqd_manager*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.queue_properties*, align 8
  %7 = alloca %struct.v10_compute_mqd*, align 8
  store %struct.mqd_manager* %0, %struct.mqd_manager** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.queue_properties* %2, %struct.queue_properties** %6, align 8
  %8 = load %struct.mqd_manager*, %struct.mqd_manager** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %11 = call i32 @update_mqd(%struct.mqd_manager* %8, i8* %9, %struct.queue_properties* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.v10_compute_mqd* @get_mqd(i8* %12)
  store %struct.v10_compute_mqd* %13, %struct.v10_compute_mqd** %7, align 8
  %14 = load %struct.queue_properties*, %struct.queue_properties** %6, align 8
  %15 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v10_compute_mqd*, %struct.v10_compute_mqd** %7, align 8
  %18 = getelementptr inbounds %struct.v10_compute_mqd, %struct.v10_compute_mqd* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local i32 @update_mqd(%struct.mqd_manager*, i8*, %struct.queue_properties*) #1

declare dso_local %struct.v10_compute_mqd* @get_mqd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
