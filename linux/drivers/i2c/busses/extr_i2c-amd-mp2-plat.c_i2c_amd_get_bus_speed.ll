; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_get_bus_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_get_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@i2c_amd_get_bus_speed.supported_speeds = internal constant [6 x i32] [i32 0, i32 100000, i32 400000, i32 1000000, i32 1400000, i32 3400000], align 16
@speed100k = common dso_local global i32 0, align 4
@speed400k = common dso_local global i32 0, align 4
@speed1000k = common dso_local global i32 0, align 4
@speed1400k = common dso_local global i32 0, align 4
@speed3400k = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_amd_get_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_amd_get_bus_speed(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @i2c_acpi_find_bus_speed(i32* %7)
  store i32 %8, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @i2c_amd_get_bus_speed.supported_speeds, i64 0, i64 0))
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* @i2c_amd_get_bus_speed.supported_speeds, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %25

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %9

25:                                               ; preds = %20, %9
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* @i2c_amd_get_bus_speed.supported_speeds, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  switch i32 %31, label %42 [
    i32 100000, label %32
    i32 400000, label %34
    i32 1000000, label %36
    i32 1400000, label %38
    i32 3400000, label %40
  ]

32:                                               ; preds = %25
  %33 = load i32, i32* @speed100k, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %25
  %35 = load i32, i32* @speed400k, align 4
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %25
  %37 = load i32, i32* @speed1000k, align 4
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %25
  %39 = load i32, i32* @speed1400k, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %25
  %41 = load i32, i32* @speed3400k, align 4
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %25
  %43 = load i32, i32* @speed400k, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %40, %38, %36, %34, %32
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @i2c_acpi_find_bus_speed(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
