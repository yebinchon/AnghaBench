; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31722.c_max31722_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max31722.c_max31722_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max31722_data = type { i32, %struct.spi_device* }
%struct.spi_device = type { i32 }

@MAX31722_REG_CFG = common dso_local global i32 0, align 4
@MAX31722_WRITE_MASK = common dso_local global i32 0, align 4
@MAX31722_MODE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to set sensor mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max31722_data*, i32)* @max31722_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max31722_set_mode(%struct.max31722_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max31722_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.max31722_data* %0, %struct.max31722_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.max31722_data*, %struct.max31722_data** %4, align 8
  %10 = getelementptr inbounds %struct.max31722_data, %struct.max31722_data* %9, i32 0, i32 1
  %11 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  store %struct.spi_device* %11, %struct.spi_device** %7, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %13 = load i32, i32* @MAX31722_REG_CFG, align 4
  %14 = load i32, i32* @MAX31722_WRITE_MASK, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds i32, i32* %12, i64 1
  %17 = load %struct.max31722_data*, %struct.max31722_data** %4, align 8
  %18 = getelementptr inbounds %struct.max31722_data, %struct.max31722_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MAX31722_MODE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %25 = bitcast [2 x i32]* %8 to i32**
  %26 = call i32 @spi_write(%struct.spi_device* %24, i32** %25, i32 8)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %31 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %44

34:                                               ; preds = %2
  %35 = load %struct.max31722_data*, %struct.max31722_data** %4, align 8
  %36 = getelementptr inbounds %struct.max31722_data, %struct.max31722_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MAX31722_MODE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.max31722_data*, %struct.max31722_data** %4, align 8
  %43 = getelementptr inbounds %struct.max31722_data, %struct.max31722_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %34, %29
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @spi_write(%struct.spi_device*, i32**, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
