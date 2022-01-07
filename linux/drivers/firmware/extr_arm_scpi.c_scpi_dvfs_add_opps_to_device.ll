; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_dvfs_add_opps_to_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_dvfs_add_opps_to_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scpi_opp = type { i32, i32 }
%struct.scpi_dvfs_info = type { i32, %struct.scpi_opp* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to add opp %uHz %umV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @scpi_dvfs_add_opps_to_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpi_dvfs_add_opps_to_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scpi_opp*, align 8
  %7 = alloca %struct.scpi_dvfs_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.scpi_dvfs_info* @scpi_dvfs_info(%struct.device* %8)
  store %struct.scpi_dvfs_info* %9, %struct.scpi_dvfs_info** %7, align 8
  %10 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %7, align 8
  %11 = call i64 @IS_ERR(%struct.scpi_dvfs_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %7, align 8
  %15 = call i32 @PTR_ERR(%struct.scpi_dvfs_info* %14)
  store i32 %15, i32* %2, align 4
  br label %75

16:                                               ; preds = %1
  %17 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %7, align 8
  %18 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %17, i32 0, i32 1
  %19 = load %struct.scpi_opp*, %struct.scpi_opp** %18, align 8
  %20 = icmp ne %struct.scpi_opp* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %16
  %25 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %7, align 8
  %26 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %25, i32 0, i32 1
  %27 = load %struct.scpi_opp*, %struct.scpi_opp** %26, align 8
  store %struct.scpi_opp* %27, %struct.scpi_opp** %6, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %69, %24
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %7, align 8
  %31 = getelementptr inbounds %struct.scpi_dvfs_info, %struct.scpi_dvfs_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.scpi_opp*, %struct.scpi_opp** %6, align 8
  %37 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.scpi_opp*, %struct.scpi_opp** %6, align 8
  %40 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 1000
  %43 = call i32 @dev_pm_opp_add(%struct.device* %35, i32 %38, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %34
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = load %struct.scpi_opp*, %struct.scpi_opp** %6, align 8
  %49 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.scpi_opp*, %struct.scpi_opp** %6, align 8
  %52 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_warn(%struct.device* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %59, %46
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %4, align 4
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load %struct.scpi_opp*, %struct.scpi_opp** %6, align 8
  %62 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %61, i32 -1
  store %struct.scpi_opp* %62, %struct.scpi_opp** %6, align 8
  %63 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_pm_opp_remove(%struct.device* %60, i32 %64)
  br label %55

66:                                               ; preds = %55
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %75

68:                                               ; preds = %34
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = load %struct.scpi_opp*, %struct.scpi_opp** %6, align 8
  %73 = getelementptr inbounds %struct.scpi_opp, %struct.scpi_opp* %72, i32 1
  store %struct.scpi_opp* %73, %struct.scpi_opp** %6, align 8
  br label %28

74:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %66, %21, %13
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.scpi_dvfs_info* @scpi_dvfs_info(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.scpi_dvfs_info*) #1

declare dso_local i32 @PTR_ERR(%struct.scpi_dvfs_info*) #1

declare dso_local i32 @dev_pm_opp_add(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_pm_opp_remove(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
