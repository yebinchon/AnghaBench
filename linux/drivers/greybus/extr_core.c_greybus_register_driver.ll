; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.greybus_driver = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.module*, i32, i32, i32, i32* }
%struct.module = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@greybus_bus_type = common dso_local global i32 0, align 4
@greybus_probe = common dso_local global i32 0, align 4
@greybus_remove = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"registered new driver %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @greybus_register_driver(%struct.greybus_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.greybus_driver*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.greybus_driver* %0, %struct.greybus_driver** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i64 (...) @greybus_disabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %52

14:                                               ; preds = %3
  %15 = load %struct.greybus_driver*, %struct.greybus_driver** %5, align 8
  %16 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store i32* @greybus_bus_type, i32** %17, align 8
  %18 = load %struct.greybus_driver*, %struct.greybus_driver** %5, align 8
  %19 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.greybus_driver*, %struct.greybus_driver** %5, align 8
  %22 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @greybus_probe, align 4
  %25 = load %struct.greybus_driver*, %struct.greybus_driver** %5, align 8
  %26 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @greybus_remove, align 4
  %29 = load %struct.greybus_driver*, %struct.greybus_driver** %5, align 8
  %30 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load %struct.module*, %struct.module** %6, align 8
  %33 = load %struct.greybus_driver*, %struct.greybus_driver** %5, align 8
  %34 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store %struct.module* %32, %struct.module** %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.greybus_driver*, %struct.greybus_driver** %5, align 8
  %38 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.greybus_driver*, %struct.greybus_driver** %5, align 8
  %41 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %40, i32 0, i32 1
  %42 = call i32 @driver_register(%struct.TYPE_2__* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %14
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %14
  %48 = load %struct.greybus_driver*, %struct.greybus_driver** %5, align 8
  %49 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %45, %11
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @greybus_disabled(...) #1

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
