; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_dark_gain_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_dark_gain_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.us5182d_data = type { i32, i32, i32 }

@US5182D_CFG1_AGAIN_DEFAULT = common dso_local global i32 0, align 4
@US5182D_REG_AUTO_LDARK_GAIN = common dso_local global i32 0, align 4
@US5182D_REG_AUTO_HDARK_GAIN = common dso_local global i32 0, align 4
@US5182D_REG_DARK_AUTO_EN = common dso_local global i32 0, align 4
@US5182D_REG_DARK_AUTO_EN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @us5182d_dark_gain_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_dark_gain_config(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.us5182d_data*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.us5182d_data* %7, %struct.us5182d_data** %4, align 8
  %8 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %9 = load i32, i32* @US5182D_CFG1_AGAIN_DEFAULT, align 4
  %10 = call i32 @us5182d_update_dark_th(%struct.us5182d_data* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %17 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @US5182D_REG_AUTO_LDARK_GAIN, align 4
  %20 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %21 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @i2c_smbus_write_byte_data(i32 %18, i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %48

28:                                               ; preds = %15
  %29 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %30 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @US5182D_REG_AUTO_HDARK_GAIN, align 4
  %33 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %34 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @i2c_smbus_write_byte_data(i32 %31, i32 %32, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %28
  %42 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %43 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @US5182D_REG_DARK_AUTO_EN, align 4
  %46 = load i32, i32* @US5182D_REG_DARK_AUTO_EN_DEFAULT, align 4
  %47 = call i32 @i2c_smbus_write_byte_data(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %39, %26, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @us5182d_update_dark_th(%struct.us5182d_data*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
