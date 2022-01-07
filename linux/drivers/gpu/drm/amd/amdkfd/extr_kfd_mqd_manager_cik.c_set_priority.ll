; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_cik.c_set_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager_cik.c_set_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cik_mqd = type { i64, i32 }
%struct.queue_properties = type { i64 }

@pipe_priority_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cik_mqd*, %struct.queue_properties*)* @set_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_priority(%struct.cik_mqd* %0, %struct.queue_properties* %1) #0 {
  %3 = alloca %struct.cik_mqd*, align 8
  %4 = alloca %struct.queue_properties*, align 8
  store %struct.cik_mqd* %0, %struct.cik_mqd** %3, align 8
  store %struct.queue_properties* %1, %struct.queue_properties** %4, align 8
  %5 = load i32*, i32** @pipe_priority_map, align 8
  %6 = load %struct.queue_properties*, %struct.queue_properties** %4, align 8
  %7 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cik_mqd*, %struct.cik_mqd** %3, align 8
  %12 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.queue_properties*, %struct.queue_properties** %4, align 8
  %14 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.cik_mqd*, %struct.cik_mqd** %3, align 8
  %17 = getelementptr inbounds %struct.cik_mqd, %struct.cik_mqd* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
