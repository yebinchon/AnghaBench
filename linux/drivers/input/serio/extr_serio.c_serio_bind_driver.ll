; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_bind_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_bind_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.serio_driver = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"device_bind_driver() failed for %s (%s) and %s, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @serio_bind_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serio_bind_driver(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %7 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %8 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.serio*, %struct.serio** %4, align 8
  %11 = call i64 @serio_match_port(i32 %9, %struct.serio* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  %14 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %15 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %14, i32 0, i32 1
  %16 = load %struct.serio*, %struct.serio** %4, align 8
  %17 = getelementptr inbounds %struct.serio, %struct.serio* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* %15, i32** %18, align 8
  %19 = load %struct.serio*, %struct.serio** %4, align 8
  %20 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %21 = call i64 @serio_connect_driver(%struct.serio* %19, %struct.serio_driver* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = load %struct.serio*, %struct.serio** %4, align 8
  %25 = getelementptr inbounds %struct.serio, %struct.serio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %13
  %30 = load %struct.serio*, %struct.serio** %4, align 8
  %31 = getelementptr inbounds %struct.serio, %struct.serio* %30, i32 0, i32 0
  %32 = call i32 @device_bind_driver(%struct.TYPE_3__* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load %struct.serio*, %struct.serio** %4, align 8
  %37 = getelementptr inbounds %struct.serio, %struct.serio* %36, i32 0, i32 0
  %38 = load %struct.serio*, %struct.serio** %4, align 8
  %39 = getelementptr inbounds %struct.serio, %struct.serio* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.serio*, %struct.serio** %4, align 8
  %42 = getelementptr inbounds %struct.serio, %struct.serio* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %45 = getelementptr inbounds %struct.serio_driver, %struct.serio_driver* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dev_warn(%struct.TYPE_3__* %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.serio*, %struct.serio** %4, align 8
  %50 = call i32 @serio_disconnect_driver(%struct.serio* %49)
  %51 = load %struct.serio*, %struct.serio** %4, align 8
  %52 = getelementptr inbounds %struct.serio, %struct.serio* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %29
  br label %56

56:                                               ; preds = %55, %2
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %35, %23
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @serio_match_port(i32, %struct.serio*) #1

declare dso_local i64 @serio_connect_driver(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @device_bind_driver(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @serio_disconnect_driver(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
