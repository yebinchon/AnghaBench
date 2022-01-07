; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_dvfs_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_scpi.c_scpi_dvfs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scpi_dvfs_info = type { i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scpi_dvfs_info* (%struct.device*)* @scpi_dvfs_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scpi_dvfs_info* @scpi_dvfs_info(%struct.device* %0) #0 {
  %2 = alloca %struct.scpi_dvfs_info*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call i32 @scpi_dev_domain_id(%struct.device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.scpi_dvfs_info* @ERR_PTR(i32 %10)
  store %struct.scpi_dvfs_info* %11, %struct.scpi_dvfs_info** %2, align 8
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.scpi_dvfs_info* @scpi_dvfs_get_info(i32 %13)
  store %struct.scpi_dvfs_info* %14, %struct.scpi_dvfs_info** %2, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.scpi_dvfs_info*, %struct.scpi_dvfs_info** %2, align 8
  ret %struct.scpi_dvfs_info* %16
}

declare dso_local i32 @scpi_dev_domain_id(%struct.device*) #1

declare dso_local %struct.scpi_dvfs_info* @ERR_PTR(i32) #1

declare dso_local %struct.scpi_dvfs_info* @scpi_dvfs_get_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
