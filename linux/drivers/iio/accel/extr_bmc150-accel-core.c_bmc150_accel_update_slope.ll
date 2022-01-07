; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_update_slope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_update_slope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_accel_data = type { i32, i32, i32 }
%struct.device = type { i32 }

@BMC150_ACCEL_REG_INT_6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Error writing reg_int_6\0A\00", align 1
@BMC150_ACCEL_REG_INT_5 = common dso_local global i32 0, align 4
@BMC150_ACCEL_SLOPE_DUR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error updating reg_int_5\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_accel_data*)* @bmc150_accel_update_slope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_update_slope(%struct.bmc150_accel_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bmc150_accel_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.bmc150_accel_data* %0, %struct.bmc150_accel_data** %3, align 8
  %6 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %7 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.device* @regmap_get_device(i32 %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %11 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BMC150_ACCEL_REG_INT_6, align 4
  %14 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %15 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regmap_write(i32 %12, i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %50

24:                                               ; preds = %1
  %25 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %26 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BMC150_ACCEL_REG_INT_5, align 4
  %29 = load i32, i32* @BMC150_ACCEL_SLOPE_DUR_MASK, align 4
  %30 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %31 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %24
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %43 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %3, align 8
  %46 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %40, %36, %20
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
