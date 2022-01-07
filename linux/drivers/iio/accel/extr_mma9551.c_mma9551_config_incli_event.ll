; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_config_incli_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_config_incli_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.mma9551_data = type { i32*, i32 }

@MMA9551_APPID_NONE = common dso_local global i32 0, align 4
@MMA9551_TILT_YZ_ANG_REG = common dso_local global i32 0, align 4
@MMA9551_TILT_XZ_ANG_REG = common dso_local global i32 0, align 4
@MMA9551_TILT_XY_ANG_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMA9551_APPID_TILT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32)* @mma9551_config_incli_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9551_config_incli_event(%struct.iio_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mma9551_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.mma9551_data* @iio_priv(%struct.iio_dev* %12)
  store %struct.mma9551_data* %13, %struct.mma9551_data** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load %struct.mma9551_data*, %struct.mma9551_data** %8, align 8
  %17 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %102

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load %struct.mma9551_data*, %struct.mma9551_data** %8, align 8
  %31 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MMA9551_APPID_NONE, align 4
  %35 = call i32 @mma9551_gpio_config(i32 %32, i32 %33, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %102

40:                                               ; preds = %29
  %41 = load %struct.mma9551_data*, %struct.mma9551_data** %8, align 8
  %42 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mma9551_set_power_state(i32 %43, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %102

49:                                               ; preds = %40
  br label %93

50:                                               ; preds = %26
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %64 [
    i32 130, label %52
    i32 129, label %56
    i32 128, label %60
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @MMA9551_TILT_YZ_ANG_REG, align 4
  %54 = mul nsw i32 8, %53
  %55 = add nsw i32 7, %54
  store i32 %55, i32* %11, align 4
  br label %67

56:                                               ; preds = %50
  %57 = load i32, i32* @MMA9551_TILT_XZ_ANG_REG, align 4
  %58 = mul nsw i32 8, %57
  %59 = add nsw i32 7, %58
  store i32 %59, i32* %11, align 4
  br label %67

60:                                               ; preds = %50
  %61 = load i32, i32* @MMA9551_TILT_XY_ANG_REG, align 4
  %62 = mul nsw i32 8, %61
  %63 = add nsw i32 7, %62
  store i32 %63, i32* %11, align 4
  br label %67

64:                                               ; preds = %50
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %102

67:                                               ; preds = %60, %56, %52
  %68 = load %struct.mma9551_data*, %struct.mma9551_data** %8, align 8
  %69 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mma9551_set_power_state(i32 %70, i32 1)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %102

76:                                               ; preds = %67
  %77 = load %struct.mma9551_data*, %struct.mma9551_data** %8, align 8
  %78 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MMA9551_APPID_TILT, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @mma9551_gpio_config(i32 %79, i32 %80, i32 %81, i32 %82, i32 0)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load %struct.mma9551_data*, %struct.mma9551_data** %8, align 8
  %88 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mma9551_set_power_state(i32 %89, i32 0)
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %102

92:                                               ; preds = %76
  br label %93

93:                                               ; preds = %92, %49
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.mma9551_data*, %struct.mma9551_data** %8, align 8
  %96 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %93, %86, %74, %64, %47, %38, %25
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.mma9551_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mma9551_gpio_config(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mma9551_set_power_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
