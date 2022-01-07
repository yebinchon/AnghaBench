; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_i2c_dw_wait_bus_not_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_i2c_dw_wait_bus_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i32 }

@TIMEOUT = common dso_local global i32 0, align 4
@DW_IC_STATUS = common dso_local global i32 0, align 4
@DW_IC_STATUS_ACTIVITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout waiting for bus ready\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_dw_wait_bus_not_busy(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  %5 = load i32, i32* @TIMEOUT, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %8 = load i32, i32* @DW_IC_STATUS, align 4
  %9 = call i32 @dw_readl(%struct.dw_i2c_dev* %7, i32 %8)
  %10 = load i32, i32* @DW_IC_STATUS_ACTIVITY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %6
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %18 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %22 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %21, i32 0, i32 0
  %23 = call i32 @i2c_recover_bus(i32* %22)
  %24 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %25 = load i32, i32* @DW_IC_STATUS, align 4
  %26 = call i32 @dw_readl(%struct.dw_i2c_dev* %24, i32 %25)
  %27 = load i32, i32* @DW_IC_STATUS_ACTIVITY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %39

33:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %39

34:                                               ; preds = %13
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %6

38:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33, %30
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @dw_readl(%struct.dw_i2c_dev*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @i2c_recover_bus(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
