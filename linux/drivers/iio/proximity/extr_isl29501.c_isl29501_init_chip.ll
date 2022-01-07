; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29501_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ISL29501_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error reading device id\0A\00", align 1
@ISL29501_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Wrong chip id, got %x expected %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29501_private*)* @isl29501_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_init_chip(%struct.isl29501_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isl29501_private*, align 8
  %4 = alloca i32, align 4
  store %struct.isl29501_private* %0, %struct.isl29501_private** %3, align 8
  %5 = load %struct.isl29501_private*, %struct.isl29501_private** %3, align 8
  %6 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* @ISL29501_DEVICE_ID, align 4
  %9 = call i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.isl29501_private*, %struct.isl29501_private** %3, align 8
  %14 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ISL29501_ID, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.isl29501_private*, %struct.isl29501_private** %3, align 8
  %25 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ISL29501_DEVICE_ID, align 4
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %43

33:                                               ; preds = %19
  %34 = load %struct.isl29501_private*, %struct.isl29501_private** %3, align 8
  %35 = call i32 @isl29501_reset_registers(%struct.isl29501_private* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %33
  %41 = load %struct.isl29501_private*, %struct.isl29501_private** %3, align 8
  %42 = call i32 @isl29501_begin_acquisition(%struct.isl29501_private* %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %38, %23, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @isl29501_reset_registers(%struct.isl29501_private*) #1

declare dso_local i32 @isl29501_begin_acquisition(%struct.isl29501_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
