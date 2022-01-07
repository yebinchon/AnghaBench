; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c___gameport_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c___gameport_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport_driver = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32, %struct.module*, i32* }
%struct.module = type { i32 }

@gameport_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"driver_register() failed for %s, error: %d\0A\00", align 1
@GAMEPORT_ATTACH_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gameport_register_driver(%struct.gameport_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gameport_driver*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.gameport_driver* %0, %struct.gameport_driver** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %10 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i32* @gameport_bus, i32** %11, align 8
  %12 = load %struct.module*, %struct.module** %6, align 8
  %13 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %14 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store %struct.module* %12, %struct.module** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %18 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %21 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %23 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %22, i32 0, i32 1
  %24 = call i32 @driver_register(%struct.TYPE_3__* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %29 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %49

35:                                               ; preds = %3
  %36 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %37 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %39 = load i32, i32* @GAMEPORT_ATTACH_DRIVER, align 4
  %40 = call i32 @gameport_queue_event(%struct.gameport_driver* %38, i32* null, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %45 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %44, i32 0, i32 1
  %46 = call i32 @driver_unregister(%struct.TYPE_3__* %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %43, %27
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @driver_register(%struct.TYPE_3__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @gameport_queue_event(%struct.gameport_driver*, i32*, i32) #1

declare dso_local i32 @driver_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
