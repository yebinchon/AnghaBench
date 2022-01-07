; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_read_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_read_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.max44009_data = type { i32 }

@MAX44009_THRESH_MANT_MASK = common dso_local global i32 0, align 4
@MAX44009_THRESH_MANT_LSHIFT = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@MAX44009_UPPER_THR_MINIMUM = common dso_local global i64 0, align 8
@MAX44009_THRESH_EXP_MASK = common dso_local global i32 0, align 4
@MAX44009_THRESH_EXP_RSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @max44009_read_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44009_read_threshold(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max44009_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = call %struct.max44009_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.max44009_data* %12, %struct.max44009_data** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @max44009_get_thr_reg(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %2
  %20 = load %struct.max44009_data*, %struct.max44009_data** %6, align 8
  %21 = getelementptr inbounds %struct.max44009_data, %struct.max44009_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @i2c_smbus_read_byte_data(i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MAX44009_THRESH_MANT_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @MAX44009_THRESH_MANT_LSHIFT, align 4
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i64, i64* @MAX44009_UPPER_THR_MINIMUM, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %39, %29
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MAX44009_THRESH_EXP_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @MAX44009_THRESH_EXP_RSHIFT, align 4
  %50 = load i32, i32* %10, align 4
  %51 = ashr i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %45, %27, %17
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.max44009_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @max44009_get_thr_reg(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
