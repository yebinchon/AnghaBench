; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c___i2c_dw_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c___i2c_dw_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32 }

@DW_IC_ENABLE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"timeout in disabling adapter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__i2c_dw_disable(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  store i32 100, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %6 = call i32 @__i2c_dw_disable_nowait(%struct.dw_i2c_dev* %5)
  %7 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %8 = load i32, i32* @DW_IC_ENABLE_STATUS, align 4
  %9 = call i32 @dw_readl(%struct.dw_i2c_dev* %7, i32 %8)
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %24

13:                                               ; preds = %4
  %14 = call i32 @usleep_range(i32 25, i32 250)
  br label %15

15:                                               ; preds = %13
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %4, label %19

19:                                               ; preds = %15
  %20 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %21 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @__i2c_dw_disable_nowait(%struct.dw_i2c_dev*) #1

declare dso_local i32 @dw_readl(%struct.dw_i2c_dev*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
