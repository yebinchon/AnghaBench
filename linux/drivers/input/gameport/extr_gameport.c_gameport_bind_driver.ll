; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_bind_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_bind_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.gameport_driver = type { i32 (%struct.gameport.0*)*, i32, i64 (%struct.gameport.1*, %struct.gameport_driver*)*, i32 }
%struct.gameport.0 = type opaque
%struct.gameport.1 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"device_bind_driver() failed for %s (%s) and %s, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, %struct.gameport_driver*)* @gameport_bind_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gameport_bind_driver(%struct.gameport* %0, %struct.gameport_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca %struct.gameport_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store %struct.gameport_driver* %1, %struct.gameport_driver** %5, align 8
  %7 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %8 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %7, i32 0, i32 3
  %9 = load %struct.gameport*, %struct.gameport** %4, align 8
  %10 = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32* %8, i32** %11, align 8
  %12 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %13 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %12, i32 0, i32 2
  %14 = load i64 (%struct.gameport.1*, %struct.gameport_driver*)*, i64 (%struct.gameport.1*, %struct.gameport_driver*)** %13, align 8
  %15 = load %struct.gameport*, %struct.gameport** %4, align 8
  %16 = bitcast %struct.gameport* %15 to %struct.gameport.1*
  %17 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %18 = call i64 %14(%struct.gameport.1* %16, %struct.gameport_driver* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.gameport*, %struct.gameport** %4, align 8
  %22 = getelementptr inbounds %struct.gameport, %struct.gameport* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %2
  %27 = load %struct.gameport*, %struct.gameport** %4, align 8
  %28 = getelementptr inbounds %struct.gameport, %struct.gameport* %27, i32 0, i32 0
  %29 = call i32 @device_bind_driver(%struct.TYPE_3__* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.gameport*, %struct.gameport** %4, align 8
  %34 = getelementptr inbounds %struct.gameport, %struct.gameport* %33, i32 0, i32 0
  %35 = load %struct.gameport*, %struct.gameport** %4, align 8
  %36 = getelementptr inbounds %struct.gameport, %struct.gameport* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gameport*, %struct.gameport** %4, align 8
  %39 = getelementptr inbounds %struct.gameport, %struct.gameport* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %42 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_warn(%struct.TYPE_3__* %34, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43, i32 %44)
  %46 = load %struct.gameport_driver*, %struct.gameport_driver** %5, align 8
  %47 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %46, i32 0, i32 0
  %48 = load i32 (%struct.gameport.0*)*, i32 (%struct.gameport.0*)** %47, align 8
  %49 = load %struct.gameport*, %struct.gameport** %4, align 8
  %50 = bitcast %struct.gameport* %49 to %struct.gameport.0*
  %51 = call i32 %48(%struct.gameport.0* %50)
  %52 = load %struct.gameport*, %struct.gameport** %4, align 8
  %53 = getelementptr inbounds %struct.gameport, %struct.gameport* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %32, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @device_bind_driver(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
