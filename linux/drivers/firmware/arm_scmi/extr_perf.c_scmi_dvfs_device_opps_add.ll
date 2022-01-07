; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_dvfs_device_opps_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_perf.c_scmi_dvfs_device_opps_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.scmi_perf_info* }
%struct.scmi_perf_info = type { %struct.perf_dom_info* }
%struct.perf_dom_info = type { i32, i64, %struct.scmi_opp* }
%struct.scmi_opp = type { i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to add opp %luHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, %struct.device*)* @scmi_dvfs_device_opps_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_dvfs_device_opps_add(%struct.scmi_handle* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scmi_handle*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.scmi_opp*, align 8
  %11 = alloca %struct.perf_dom_info*, align 8
  %12 = alloca %struct.scmi_perf_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %13 = load %struct.scmi_handle*, %struct.scmi_handle** %4, align 8
  %14 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %13, i32 0, i32 0
  %15 = load %struct.scmi_perf_info*, %struct.scmi_perf_info** %14, align 8
  store %struct.scmi_perf_info* %15, %struct.scmi_perf_info** %12, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @scmi_dev_domain_id(%struct.device* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.scmi_perf_info*, %struct.scmi_perf_info** %12, align 8
  %24 = getelementptr inbounds %struct.scmi_perf_info, %struct.scmi_perf_info* %23, i32 0, i32 0
  %25 = load %struct.perf_dom_info*, %struct.perf_dom_info** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %25, i64 %27
  store %struct.perf_dom_info* %28, %struct.perf_dom_info** %11, align 8
  %29 = load %struct.perf_dom_info*, %struct.perf_dom_info** %11, align 8
  %30 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %29, i32 0, i32 2
  %31 = load %struct.scmi_opp*, %struct.scmi_opp** %30, align 8
  store %struct.scmi_opp* %31, %struct.scmi_opp** %10, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %74, %22
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.perf_dom_info*, %struct.perf_dom_info** %11, align 8
  %35 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %32
  %39 = load %struct.scmi_opp*, %struct.scmi_opp** %10, align 8
  %40 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.perf_dom_info*, %struct.perf_dom_info** %11, align 8
  %43 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = mul i64 %41, %44
  store i64 %45, i64* %9, align 8
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @dev_pm_opp_add(%struct.device* %46, i64 %47, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %38
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @dev_warn(%struct.device* %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %59, %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load %struct.scmi_opp*, %struct.scmi_opp** %10, align 8
  %61 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %60, i32 -1
  store %struct.scmi_opp* %61, %struct.scmi_opp** %10, align 8
  %62 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.perf_dom_info*, %struct.perf_dom_info** %11, align 8
  %65 = getelementptr inbounds %struct.perf_dom_info, %struct.perf_dom_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = mul i64 %63, %66
  store i64 %67, i64* %9, align 8
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @dev_pm_opp_remove(%struct.device* %68, i64 %69)
  br label %55

71:                                               ; preds = %55
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %80

73:                                               ; preds = %38
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = load %struct.scmi_opp*, %struct.scmi_opp** %10, align 8
  %78 = getelementptr inbounds %struct.scmi_opp, %struct.scmi_opp* %77, i32 1
  store %struct.scmi_opp* %78, %struct.scmi_opp** %10, align 8
  br label %32

79:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %71, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @scmi_dev_domain_id(%struct.device*) #1

declare dso_local i32 @dev_pm_opp_add(%struct.device*, i64, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_pm_opp_remove(%struct.device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
