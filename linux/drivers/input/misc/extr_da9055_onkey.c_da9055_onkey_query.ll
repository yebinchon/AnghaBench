; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9055_onkey.c_da9055_onkey_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_da9055_onkey.c_da9055_onkey_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9055_onkey = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DA9055_REG_STATUS_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read onkey event %d\0A\00", align 1
@DA9055_NOKEY_STS = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9055_onkey*)* @da9055_onkey_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9055_onkey_query(%struct.da9055_onkey* %0) #0 {
  %2 = alloca %struct.da9055_onkey*, align 8
  %3 = alloca i32, align 4
  store %struct.da9055_onkey* %0, %struct.da9055_onkey** %2, align 8
  %4 = load %struct.da9055_onkey*, %struct.da9055_onkey** %2, align 8
  %5 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load i32, i32* @DA9055_REG_STATUS_A, align 4
  %8 = call i32 @da9055_reg_read(%struct.TYPE_2__* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.da9055_onkey*, %struct.da9055_onkey** %2, align 8
  %13 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* @DA9055_NOKEY_STS, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load %struct.da9055_onkey*, %struct.da9055_onkey** %2, align 8
  %27 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KEY_POWER, align 4
  %30 = call i32 @input_report_key(i32 %28, i32 %29, i32 0)
  %31 = load %struct.da9055_onkey*, %struct.da9055_onkey** %2, align 8
  %32 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @input_sync(i32 %33)
  br label %35

35:                                               ; preds = %25, %19
  br label %36

36:                                               ; preds = %35, %11
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.da9055_onkey*, %struct.da9055_onkey** %2, align 8
  %41 = getelementptr inbounds %struct.da9055_onkey, %struct.da9055_onkey* %40, i32 0, i32 0
  %42 = call i32 @msecs_to_jiffies(i32 10)
  %43 = call i32 @schedule_delayed_work(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @da9055_reg_read(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
