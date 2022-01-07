; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_postdisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_postdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xadc = type { i32 }

@XADC_REG_CONF1 = common dso_local global i32 0, align 4
@XADC_CONF1_SEQ_MASK = common dso_local global i32 0, align 4
@XADC_CONF1_SEQ_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @xadc_postdisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_postdisable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.xadc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.xadc* @iio_priv(%struct.iio_dev* %8)
  store %struct.xadc* %9, %struct.xadc** %4, align 8
  store i64 1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %13 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %18 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @BIT(i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load %struct.xadc*, %struct.xadc** %4, align 8
  %33 = call i32 @XADC_REG_SEQ(i32 0)
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, 65535
  %36 = call i32 @xadc_write_adc_reg(%struct.xadc* %32, i32 %33, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %65

41:                                               ; preds = %31
  %42 = load %struct.xadc*, %struct.xadc** %4, align 8
  %43 = call i32 @XADC_REG_SEQ(i32 1)
  %44 = load i64, i64* %5, align 8
  %45 = lshr i64 %44, 16
  %46 = call i32 @xadc_write_adc_reg(%struct.xadc* %42, i32 %43, i64 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %65

51:                                               ; preds = %41
  %52 = load %struct.xadc*, %struct.xadc** %4, align 8
  %53 = load i32, i32* @XADC_REG_CONF1, align 4
  %54 = load i32, i32* @XADC_CONF1_SEQ_MASK, align 4
  %55 = load i32, i32* @XADC_CONF1_SEQ_CONTINUOUS, align 4
  %56 = call i32 @xadc_update_adc_reg(%struct.xadc* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.xadc*, %struct.xadc** %4, align 8
  %63 = load i32, i32* @XADC_CONF1_SEQ_CONTINUOUS, align 4
  %64 = call i32 @xadc_power_adc_b(%struct.xadc* %62, i32 %63)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %59, %49, %39
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @xadc_write_adc_reg(%struct.xadc*, i32, i64) #1

declare dso_local i32 @XADC_REG_SEQ(i32) #1

declare dso_local i32 @xadc_update_adc_reg(%struct.xadc*, i32, i32, i32) #1

declare dso_local i32 @xadc_power_adc_b(%struct.xadc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
