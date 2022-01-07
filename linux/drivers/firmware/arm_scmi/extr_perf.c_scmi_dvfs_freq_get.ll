; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_dvfs_freq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_dvfs_freq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.scmi_perf_info* }
%struct.scmi_perf_info = type { %struct.perf_dom_info* }
%struct.perf_dom_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i64*, i32)* @scmi_dvfs_freq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_dvfs_freq_get(%struct.scmi_handle* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scmi_perf_info*, align 8
  %12 = alloca %struct.perf_dom_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %14 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %13, i32 0, i32 0
  %15 = load %struct.scmi_perf_info*, %struct.scmi_perf_info** %14, align 8
  store %struct.scmi_perf_info* %15, %struct.scmi_perf_info** %11, align 8
  %16 = load %struct.scmi_perf_info*, %struct.scmi_perf_info** %11, align 8
  %17 = getelementptr inbounds %struct.scmi_perf_info, %struct.scmi_perf_info* %16, i32 0, i32 0
  %18 = load %struct.perf_dom_info*, %struct.perf_dom_info** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %18, i64 %20
  store %struct.perf_dom_info* %21, %struct.perf_dom_info** %12, align 8
  %22 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @scmi_perf_level_get(%struct.scmi_handle* %22, i32 %23, i32* %10, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.perf_dom_info*, %struct.perf_dom_info** %12, align 8
  %31 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %28, %4
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @scmi_perf_level_get(%struct.scmi_handle*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
