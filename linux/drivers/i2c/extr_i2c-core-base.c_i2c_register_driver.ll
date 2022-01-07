; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.i2c_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32*, %struct.module* }

@is_registered = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@i2c_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"driver [%s] registered\0A\00", align 1
@__process_new_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_register_driver(%struct.module* %0, %struct.i2c_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.i2c_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.i2c_driver* %1, %struct.i2c_driver** %5, align 8
  %7 = load i32, i32* @is_registered, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.module*, %struct.module** %4, align 8
  %18 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store %struct.module* %17, %struct.module** %20, align 8
  %21 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* @i2c_bus_type, i32** %23, align 8
  %24 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %24, i32 0, i32 1
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %27, i32 0, i32 0
  %29 = call i32 @driver_register(%struct.TYPE_2__* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %43

34:                                               ; preds = %16
  %35 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.i2c_driver*, %struct.i2c_driver** %5, align 8
  %41 = load i32, i32* @__process_new_driver, align 4
  %42 = call i32 @i2c_for_each_dev(%struct.i2c_driver* %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %34, %32, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @i2c_for_each_dev(%struct.i2c_driver*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
