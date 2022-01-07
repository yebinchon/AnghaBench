; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_read_until_not_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/cros_ec_sensors/extr_cros_ec_sensors_core.c_cros_ec_sensors_read_until_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_sensors_core_state = type { %struct.cros_ec_device* }
%struct.cros_ec_device = type { i32 }

@EC_MEMMAP_ACC_STATUS = common dso_local global i32 0, align 4
@EC_MEMMAP_ACC_STATUS_BUSY_BIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_sensors_core_state*)* @cros_ec_sensors_read_until_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cros_ec_sensors_read_until_not_busy(%struct.cros_ec_sensors_core_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cros_ec_sensors_core_state*, align 8
  %4 = alloca %struct.cros_ec_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cros_ec_sensors_core_state* %0, %struct.cros_ec_sensors_core_state** %3, align 8
  %8 = load %struct.cros_ec_sensors_core_state*, %struct.cros_ec_sensors_core_state** %3, align 8
  %9 = getelementptr inbounds %struct.cros_ec_sensors_core_state, %struct.cros_ec_sensors_core_state* %8, i32 0, i32 0
  %10 = load %struct.cros_ec_device*, %struct.cros_ec_device** %9, align 8
  store %struct.cros_ec_device* %10, %struct.cros_ec_device** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %12 = load i32, i32* @EC_MEMMAP_ACC_STATUS, align 4
  %13 = call i32 @cros_ec_sensors_cmd_read_u8(%struct.cros_ec_device* %11, i32 %12, i32* %5)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EC_MEMMAP_ACC_STATUS_BUSY_BIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = icmp sge i32 %25, 50
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %48

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = srem i32 %32, 5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @msleep(i32 25)
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.cros_ec_device*, %struct.cros_ec_device** %4, align 8
  %39 = load i32, i32* @EC_MEMMAP_ACC_STATUS, align 4
  %40 = call i32 @cros_ec_sensors_cmd_read_u8(%struct.cros_ec_device* %38, i32 %39, i32* %5)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %37
  br label %19

46:                                               ; preds = %19
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %43, %28, %16
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @cros_ec_sensors_cmd_read_u8(%struct.cros_ec_device*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
