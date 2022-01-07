; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_init_compensation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_sx9500.c_sx9500_init_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.sx9500_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SX9500_REG_PROX_CTRL0 = common dso_local global i32 0, align 4
@SX9500_CHAN_MASK = common dso_local global i32 0, align 4
@SX9500_REG_STAT = common dso_local global i32 0, align 4
@SX9500_COMPSTAT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"initial compensation timed out\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @sx9500_init_compensation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx9500_init_compensation(%struct.iio_dev* %0) #0 {
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
  %11 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SX9500_REG_PROX_CTRL0, align 4
  %14 = load i32, i32* @SX9500_CHAN_MASK, align 4
  %15 = load i32, i32* @SX9500_CHAN_MASK, align 4
  %16 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %65

21:                                               ; preds = %1
  store i32 10, i32* %5, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = call i32 @usleep_range(i32 10000, i32 20000)
  %27 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %28 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SX9500_REG_STAT, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %57

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SX9500_COMPSTAT_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %45

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  br label %22

45:                                               ; preds = %40, %22
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %50 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %48, %45
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.sx9500_data*, %struct.sx9500_data** %4, align 8
  %59 = getelementptr inbounds %struct.sx9500_data, %struct.sx9500_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SX9500_REG_PROX_CTRL0, align 4
  %62 = load i32, i32* @SX9500_CHAN_MASK, align 4
  %63 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 0)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %57, %19
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.sx9500_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
