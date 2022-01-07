; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_dvfs_transition_latency_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_dvfs_transition_latency_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.scmi_perf_info* }
%struct.scmi_perf_info = type { %struct.perf_dom_info* }
%struct.perf_dom_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, %struct.device*)* @scmi_dvfs_transition_latency_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_dvfs_transition_latency_get(%struct.scmi_handle* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.perf_dom_info*, align 8
  %7 = alloca %struct.scmi_perf_info*, align 8
  %8 = alloca i32, align 4
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %10 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %9, i32 0, i32 0
  %11 = load %struct.scmi_perf_info*, %struct.scmi_perf_info** %10, align 8
  store %struct.scmi_perf_info* %11, %struct.scmi_perf_info** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i32 @scmi_dev_domain_id(%struct.device* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.scmi_perf_info*, %struct.scmi_perf_info** %7, align 8
  %20 = getelementptr inbounds %struct.scmi_perf_info, %struct.scmi_perf_info* %19, i32 0, i32 0
  %21 = load %struct.perf_dom_info*, %struct.perf_dom_info** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %21, i64 %23
  store %struct.perf_dom_info* %24, %struct.perf_dom_info** %6, align 8
  %25 = load %struct.perf_dom_info*, %struct.perf_dom_info** %6, align 8
  %26 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.perf_dom_info*, %struct.perf_dom_info** %6, align 8
  %29 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 1000
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %18, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @scmi_dev_domain_id(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
