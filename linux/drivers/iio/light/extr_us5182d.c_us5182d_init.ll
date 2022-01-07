; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.iio_dev = type { i32 }
%struct.us5182d_data = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@US5182D_CONTINUOUS = common dso_local global i32 0, align 4
@US5182D_REG_PXL_TH_DEFAULT = common dso_local global i32 0, align 4
@US5182D_REG_PXH_TH_DEFAULT = common dso_local global i32 0, align 4
@us5182d_regvals = common dso_local global %struct.TYPE_3__* null, align 8
@US5182D_CFG0_SHUTDOWN_EN = common dso_local global i32 0, align 4
@US5182D_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @us5182d_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_init(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.us5182d_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.us5182d_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.us5182d_data* %8, %struct.us5182d_data** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @us5182d_reset(%struct.iio_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %17 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %16, i32 0, i32 7
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @US5182D_CONTINUOUS, align 4
  %19 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %20 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @US5182D_REG_PXL_TH_DEFAULT, align 4
  %22 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %23 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @US5182D_REG_PXH_TH_DEFAULT, align 4
  %25 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %26 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %54, %15
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @us5182d_regvals, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %27
  %33 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %34 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @us5182d_regvals, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @us5182d_regvals, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i2c_smbus_write_byte_data(i32 %35, i32 %41, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %80

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %59 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %61 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %63 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %57
  %67 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %68 = load i32, i32* @US5182D_CFG0_SHUTDOWN_EN, align 4
  %69 = call i32 @us5182d_shutdown_en(%struct.us5182d_data* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %80

74:                                               ; preds = %66
  %75 = load i32, i32* @US5182D_ONESHOT, align 4
  %76 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %77 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %57
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %72, %51, %13
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.us5182d_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @us5182d_reset(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @us5182d_shutdown_en(%struct.us5182d_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
