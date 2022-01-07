; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_await_drdy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8974.c_ak8974_await_drdy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak8974 = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"timeout waiting for DRDY IRQ\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@AK8974_MEASTIME = common dso_local global i32 0, align 4
@AK8974_STATUS = common dso_local global i32 0, align 4
@AK8974_STATUS_DRDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"timeout waiting for DRDY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ak8974*)* @ak8974_await_drdy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8974_await_drdy(%struct.ak8974* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ak8974*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ak8974* %0, %struct.ak8974** %3, align 8
  store i32 2, i32* %4, align 4
  %7 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %8 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %13 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %12, i32 0, i32 2
  %14 = call i64 @msecs_to_jiffies(i32 1000)
  %15 = add nsw i64 1, %14
  %16 = call i32 @wait_for_completion_timeout(i32* %13, i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %21 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ETIMEDOUT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %60

27:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %60

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i32, i32* @AK8974_MEASTIME, align 4
  %31 = call i32 @msleep(i32 %30)
  %32 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %33 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AK8974_STATUS, align 4
  %36 = call i32 @regmap_read(i32 %34, i32 %35, i32* %5)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @AK8974_STATUS_DRDY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %60

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %29, label %52

52:                                               ; preds = %48
  %53 = load %struct.ak8974*, %struct.ak8974** %3, align 8
  %54 = getelementptr inbounds %struct.ak8974, %struct.ak8974* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %46, %39, %27, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
