; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.iio_dev = type { i32 }
%struct.sx9500_data = type { i32, i64 }

@SX9500_REG_IRQ_MSK = common dso_local global i32 0, align 4
@SX9500_REG_RESET = common dso_local global i32 0, align 4
@SX9500_SOFT_RESET = common dso_local global i32 0, align 4
@SX9500_REG_IRQ_SRC = common dso_local global i32 0, align 4
@sx9500_default_regs = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @sx9500_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx9500_init_device(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.sx9500_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.sx9500_data* @iio_priv(%struct.iio_dev* %8)
  store %struct.sx9500_data* %9, %struct.sx9500_data** %4, align 8
  %10 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %11 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %16 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @gpiod_set_value_cansleep(i64 %17, i32 0)
  %19 = call i32 @usleep_range(i32 1000, i32 2000)
  %20 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %21 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gpiod_set_value_cansleep(i64 %22, i32 1)
  %24 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %25

25:                                               ; preds = %14, %1
  %26 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %27 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SX9500_REG_IRQ_MSK, align 4
  %30 = call i32 @regmap_write(i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %90

35:                                               ; preds = %25
  %36 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %37 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SX9500_REG_RESET, align 4
  %40 = load i32, i32* @SX9500_SOFT_RESET, align 4
  %41 = call i32 @regmap_write(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %90

46:                                               ; preds = %35
  %47 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %48 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SX9500_REG_IRQ_SRC, align 4
  %51 = call i32 @regmap_read(i32 %49, i32 %50, i32* %7)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %90

56:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %84, %56
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sx9500_default_regs, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %64 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sx9500_default_regs, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sx9500_default_regs, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @regmap_write(i32 %65, i32 %71, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %62
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %90

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %57

87:                                               ; preds = %57
  %88 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %89 = call i32 @sx9500_init_compensation(%struct.iio_dev* %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %81, %54, %44, %33
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.sx9500_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @sx9500_init_compensation(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
