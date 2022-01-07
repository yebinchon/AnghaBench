; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9300.c_apds9300_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9300.c_apds9300_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apds9300_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@APDS9300_CONTROL = common dso_local global i32 0, align 4
@APDS9300_CMD = common dso_local global i32 0, align 4
@APDS9300_POWER_ON = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to init the chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apds9300_data*)* @apds9300_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apds9300_chip_init(%struct.apds9300_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apds9300_data*, align 8
  %4 = alloca i32, align 4
  store %struct.apds9300_data* %0, %struct.apds9300_data** %3, align 8
  %5 = load %struct.apds9300_data*, %struct.apds9300_data** %3, align 8
  %6 = call i32 @apds9300_set_power_state(%struct.apds9300_data* %5, i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.apds9300_data*, %struct.apds9300_data** %3, align 8
  %12 = call i32 @apds9300_set_power_state(%struct.apds9300_data* %11, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %37

16:                                               ; preds = %10
  %17 = load %struct.apds9300_data*, %struct.apds9300_data** %3, align 8
  %18 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* @APDS9300_CONTROL, align 4
  %21 = load i32, i32* @APDS9300_CMD, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %19, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @APDS9300_POWER_ON, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %37

30:                                               ; preds = %16
  %31 = load %struct.apds9300_data*, %struct.apds9300_data** %3, align 8
  %32 = call i32 @apds9300_set_intr_state(%struct.apds9300_data* %31, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %37

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %44

37:                                               ; preds = %35, %27, %15, %9
  %38 = load %struct.apds9300_data*, %struct.apds9300_data** %3, align 8
  %39 = getelementptr inbounds %struct.apds9300_data, %struct.apds9300_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %37, %36
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @apds9300_set_power_state(%struct.apds9300_data*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @apds9300_set_intr_state(%struct.apds9300_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
