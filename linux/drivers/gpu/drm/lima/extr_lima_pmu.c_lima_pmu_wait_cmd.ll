; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pmu.c_lima_pmu_wait_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pmu.c_lima_pmu_wait_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { i64, %struct.lima_device* }
%struct.lima_device = type { i32 }

@LIMA_PMU_INT_RAWSTAT = common dso_local global i64 0, align 8
@LIMA_PMU_INT_CMD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"timeout wait pmd cmd\0A\00", align 1
@LIMA_PMU_INT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_ip*)* @lima_pmu_wait_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_pmu_wait_cmd(%struct.lima_ip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca %struct.lima_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  %7 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %8 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %7, i32 0, i32 1
  %9 = load %struct.lima_device*, %struct.lima_device** %8, align 8
  store %struct.lima_device* %9, %struct.lima_device** %4, align 8
  %10 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %11 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LIMA_PMU_INT_RAWSTAT, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LIMA_PMU_INT_CMD_MASK, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @readl_poll_timeout(i64 %14, i32 %15, i32 %18, i32 100, i32 100000)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %24 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @LIMA_PMU_INT_CLEAR, align 4
  %30 = load i32, i32* @LIMA_PMU_INT_CMD_MASK, align 4
  %31 = call i32 @pmu_write(i32 %29, i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pmu_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
