; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c___serio_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c___serio_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio_driver = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32, %struct.module*, i32* }
%struct.module = type { i32 }

@serio_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"driver_register() failed for %s, error: %d\0A\00", align 1
@SERIO_ATTACH_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__serio_register_driver(%struct.serio_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serio_driver* %0, %struct.serio_driver** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %11 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %14 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i32* @serio_bus, i32** %15, align 8
  %16 = load %struct.module*, %struct.module** %6, align 8
  %17 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %18 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store %struct.module* %16, %struct.module** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %22 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %25 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %27 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %26, i32 0, i32 1
  %28 = call i32 @driver_register(%struct.TYPE_3__* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %33 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %57

39:                                               ; preds = %3
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %39
  %43 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %44 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %46 = load i32, i32* @SERIO_ATTACH_DRIVER, align 4
  %47 = call i32 @serio_queue_event(%struct.serio_driver* %45, i32* null, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %52 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %51, i32 0, i32 1
  %53 = call i32 @driver_unregister(%struct.TYPE_3__* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %39
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %50, %31
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @driver_register(%struct.TYPE_3__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @serio_queue_event(%struct.serio_driver*, i32*, i32) #1

declare dso_local i32 @driver_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
