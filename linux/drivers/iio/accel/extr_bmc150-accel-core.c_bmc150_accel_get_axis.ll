; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_get_axis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_get_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_accel_data = type { i32, i32 }
%struct.iio_chan_spec = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Error reading axis %d\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_accel_data*, %struct.iio_chan_spec*, i32*)* @bmc150_accel_get_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_get_axis(%struct.bmc150_accel_data* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmc150_accel_data*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bmc150_accel_data* %0, %struct.bmc150_accel_data** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %13 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device* @regmap_get_device(i32 %14)
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %20 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %23 = call i32 @bmc150_accel_set_power_state(%struct.bmc150_accel_data* %22, i32 1)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %28 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %76

31:                                               ; preds = %3
  %32 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %33 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @BMC150_ACCEL_AXIS_TO_REG(i32 %35)
  %37 = call i32 @regmap_bulk_read(i32 %34, i32 %36, i32* %11, i32 4)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %45 = call i32 @bmc150_accel_set_power_state(%struct.bmc150_accel_data* %44, i32 0)
  %46 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %47 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %76

50:                                               ; preds = %31
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %54 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %52, %56
  %58 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %59 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %61, 1
  %63 = call i32 @sign_extend32(i32 %57, i64 %62)
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %66 = call i32 @bmc150_accel_set_power_state(%struct.bmc150_accel_data* %65, i32 0)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %68 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %50
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %76

74:                                               ; preds = %50
  %75 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %72, %40, %26
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bmc150_accel_set_power_state(%struct.bmc150_accel_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @BMC150_ACCEL_AXIS_TO_REG(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @sign_extend32(i32, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
