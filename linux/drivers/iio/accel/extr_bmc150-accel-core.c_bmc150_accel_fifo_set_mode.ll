; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_fifo_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_fifo_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_accel_data = type { i32, i32, i32 }
%struct.device = type { i32 }

@BMC150_ACCEL_REG_FIFO_CONFIG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error writing reg_fifo_config1\0A\00", align 1
@BMC150_ACCEL_REG_FIFO_CONFIG0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Error writing reg_fifo_config0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_accel_data*)* @bmc150_accel_fifo_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_fifo_set_mode(%struct.bmc150_accel_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bmc150_accel_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bmc150_accel_data* %0, %struct.bmc150_accel_data** %3, align 8
  %7 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %8 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device* @regmap_get_device(i32 %9)
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @BMC150_ACCEL_REG_FIFO_CONFIG1, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %13 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %17 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_write(i32 %14, i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %28 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %48

32:                                               ; preds = %26
  %33 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %34 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BMC150_ACCEL_REG_FIFO_CONFIG0, align 4
  %37 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %38 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regmap_write(i32 %35, i32 %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %32
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %31, %22
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
