; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_wait_for_task_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_wait_for_task_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5758_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Error reading bit 0x%x in 0x%x register\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5758_state*, i32, i32)* @ad5758_wait_for_task_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_wait_for_task_complete(%struct.ad5758_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad5758_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ad5758_state* %0, %struct.ad5758_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 10, i32* %8, align 4
  br label %10

10:                                               ; preds = %26, %3
  %11 = load %struct.ad5758_state*, %struct.ad5758_state** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ad5758_spi_reg_read(%struct.ad5758_state* %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %10
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %40

24:                                               ; preds = %18
  %25 = call i32 @usleep_range(i32 100, i32 1000)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %10, label %30

30:                                               ; preds = %26
  %31 = load %struct.ad5758_state*, %struct.ad5758_state** %5, align 8
  %32 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %30, %23, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @ad5758_spi_reg_read(%struct.ad5758_state*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
