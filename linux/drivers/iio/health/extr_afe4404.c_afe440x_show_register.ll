; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4404.c_afe440x_show_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4404.c_afe440x_show_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_dev = type { i32 }
%struct.afe4404_data = type { i32* }
%struct.afe440x_attr = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @afe440x_show_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afe440x_show_register(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.afe4404_data*, align 8
  %10 = alloca %struct.afe440x_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %8, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %17 = call %struct.afe4404_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.afe4404_data* %17, %struct.afe4404_data** %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %19 = call %struct.afe440x_attr* @to_afe440x_attr(%struct.device_attribute* %18)
  store %struct.afe440x_attr* %19, %struct.afe440x_attr** %10, align 8
  %20 = load %struct.afe4404_data*, %struct.afe4404_data** %9, align 8
  %21 = getelementptr inbounds %struct.afe4404_data, %struct.afe4404_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.afe440x_attr*, %struct.afe440x_attr** %10, align 8
  %24 = getelementptr inbounds %struct.afe440x_attr, %struct.afe440x_attr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regmap_field_read(i32 %27, i32* %11)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %4, align 4
  br label %65

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.afe440x_attr*, %struct.afe440x_attr** %10, align 8
  %36 = getelementptr inbounds %struct.afe440x_attr, %struct.afe440x_attr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp uge i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %65

42:                                               ; preds = %33
  %43 = load %struct.afe440x_attr*, %struct.afe440x_attr** %10, align 8
  %44 = getelementptr inbounds %struct.afe440x_attr, %struct.afe440x_attr* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.afe440x_attr*, %struct.afe440x_attr** %10, align 8
  %53 = getelementptr inbounds %struct.afe440x_attr, %struct.afe440x_attr* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %64 = call i32 @iio_format_value(i8* %61, i32 %62, i32 2, i32* %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %42, %39, %31
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.afe4404_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.afe440x_attr* @to_afe440x_attr(%struct.device_attribute*) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @iio_format_value(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
