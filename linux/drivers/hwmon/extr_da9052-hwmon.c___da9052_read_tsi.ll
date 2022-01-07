; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9052-hwmon.c___da9052_read_tsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9052-hwmon.c___da9052_read_tsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.da9052_hwmon = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @__da9052_read_tsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__da9052_read_tsi(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9052_hwmon*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.da9052_hwmon* @dev_get_drvdata(%struct.device* %8)
  store %struct.da9052_hwmon* %9, %struct.da9052_hwmon** %6, align 8
  %10 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %6, align 8
  %11 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %10, i32 0, i32 0
  %12 = call i32 @reinit_completion(i32* %11)
  %13 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @da9052_request_tsi_read(%struct.da9052_hwmon* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %6, align 8
  %22 = getelementptr inbounds %struct.da9052_hwmon, %struct.da9052_hwmon* %21, i32 0, i32 0
  %23 = call i32 @msecs_to_jiffies(i32 500)
  %24 = call i32 @wait_for_completion_timeout(i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.da9052_hwmon*, %struct.da9052_hwmon** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @da9052_get_tsi_result(%struct.da9052_hwmon* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %26, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.da9052_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @da9052_request_tsi_read(%struct.da9052_hwmon*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @da9052_get_tsi_result(%struct.da9052_hwmon*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
