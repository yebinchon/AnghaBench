; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.max732x_platform_data = type { i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 }
%struct.i2c_client.0 = type opaque
%struct.max732x_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"teardown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @max732x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max732x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.max732x_platform_data*, align 8
  %5 = alloca %struct.max732x_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = call %struct.max732x_platform_data* @dev_get_platdata(i32* %8)
  store %struct.max732x_platform_data* %9, %struct.max732x_platform_data** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.max732x_chip* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.max732x_chip* %11, %struct.max732x_chip** %5, align 8
  %12 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %4, align 8
  %13 = icmp ne %struct.max732x_platform_data* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %1
  %15 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.max732x_platform_data, %struct.max732x_platform_data* %15, i32 0, i32 0
  %17 = load i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.i2c_client.0*, i32, i32, i32)* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.max732x_platform_data, %struct.max732x_platform_data* %20, i32 0, i32 0
  %22 = load i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32, i32)** %21, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = bitcast %struct.i2c_client* %23 to %struct.i2c_client.0*
  %25 = load %struct.max732x_chip*, %struct.max732x_chip** %5, align 8
  %26 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.max732x_chip*, %struct.max732x_chip** %5, align 8
  %30 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.max732x_platform_data*, %struct.max732x_platform_data** %4, align 8
  %34 = getelementptr inbounds %struct.max732x_platform_data, %struct.max732x_platform_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %22(%struct.i2c_client.0* %24, i32 %28, i32 %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %19
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %19
  br label %46

46:                                               ; preds = %45, %14, %1
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.max732x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.max732x_chip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
