; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_bus.c_scmi_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_bus.c_scmi_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_driver = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.module*, i32, i32* }
%struct.module = type { i32 }

@scmi_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"registered new scmi driver %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scmi_driver_register(%struct.scmi_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca %struct.scmi_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.scmi_driver* %0, %struct.scmi_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.scmi_driver*, %struct.scmi_driver** %4, align 8
  %9 = getelementptr inbounds %struct.scmi_driver, %struct.scmi_driver* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i32* @scmi_bus_type, i32** %10, align 8
  %11 = load %struct.scmi_driver*, %struct.scmi_driver** %4, align 8
  %12 = getelementptr inbounds %struct.scmi_driver, %struct.scmi_driver* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.scmi_driver*, %struct.scmi_driver** %4, align 8
  %15 = getelementptr inbounds %struct.scmi_driver, %struct.scmi_driver* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load %struct.module*, %struct.module** %5, align 8
  %18 = load %struct.scmi_driver*, %struct.scmi_driver** %4, align 8
  %19 = getelementptr inbounds %struct.scmi_driver, %struct.scmi_driver* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.module* %17, %struct.module** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.scmi_driver*, %struct.scmi_driver** %4, align 8
  %23 = getelementptr inbounds %struct.scmi_driver, %struct.scmi_driver* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.scmi_driver*, %struct.scmi_driver** %4, align 8
  %26 = getelementptr inbounds %struct.scmi_driver, %struct.scmi_driver* %25, i32 0, i32 1
  %27 = call i32 @driver_register(%struct.TYPE_2__* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.scmi_driver*, %struct.scmi_driver** %4, align 8
  %32 = getelementptr inbounds %struct.scmi_driver, %struct.scmi_driver* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %3
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
