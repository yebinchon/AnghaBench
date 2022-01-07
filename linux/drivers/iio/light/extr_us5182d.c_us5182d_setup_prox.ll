; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_setup_prox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_setup_prox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.us5182d_data = type { i32 }

@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@US5182D_REG_PXL_TH = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@US5182D_REG_PXH_TH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @us5182d_setup_prox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_setup_prox(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.us5182d_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.us5182d_data* %10, %struct.us5182d_data** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.us5182d_data*, %struct.us5182d_data** %8, align 8
  %16 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @US5182D_REG_PXL_TH, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @i2c_smbus_write_word_data(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.us5182d_data*, %struct.us5182d_data** %8, align 8
  %27 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @US5182D_REG_PXH_TH, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @i2c_smbus_write_word_data(i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %25, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_word_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
