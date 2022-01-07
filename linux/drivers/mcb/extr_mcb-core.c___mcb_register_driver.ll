; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c___mcb_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c___mcb_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_driver = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32*, %struct.module* }
%struct.module = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@mcb_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mcb_register_driver(%struct.mcb_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcb_driver*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  store %struct.mcb_driver* %0, %struct.mcb_driver** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.mcb_driver*, %struct.mcb_driver** %5, align 8
  %9 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.mcb_driver*, %struct.mcb_driver** %5, align 8
  %14 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %35

20:                                               ; preds = %12
  %21 = load %struct.module*, %struct.module** %6, align 8
  %22 = load %struct.mcb_driver*, %struct.mcb_driver** %5, align 8
  %23 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store %struct.module* %21, %struct.module** %24, align 8
  %25 = load %struct.mcb_driver*, %struct.mcb_driver** %5, align 8
  %26 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32* @mcb_bus_type, i32** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.mcb_driver*, %struct.mcb_driver** %5, align 8
  %30 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load %struct.mcb_driver*, %struct.mcb_driver** %5, align 8
  %33 = getelementptr inbounds %struct.mcb_driver, %struct.mcb_driver* %32, i32 0, i32 0
  %34 = call i32 @driver_register(%struct.TYPE_2__* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %20, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
