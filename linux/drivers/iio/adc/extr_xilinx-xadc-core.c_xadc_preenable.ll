; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_preenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_preenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i64* }
%struct.xadc = type { i32 }

@XADC_REG_CONF1 = common dso_local global i32 0, align 4
@XADC_CONF1_SEQ_MASK = common dso_local global i32 0, align 4
@XADC_CONF1_SEQ_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @xadc_preenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_preenable(%struct.iio_dev* %0) #0 {
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
  %10 = load %struct.xadc*, %struct.xadc** %4, align 8
  %11 = load i32, i32* @XADC_REG_CONF1, align 4
  %12 = load i32, i32* @XADC_CONF1_SEQ_MASK, align 4
  %13 = load i32, i32* @XADC_CONF1_SEQ_DEFAULT, align 4
  %14 = call i32 @xadc_update_adc_reg(%struct.xadc* %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.xadc*, %struct.xadc** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @xadc_get_seq_mode(%struct.xadc* %23, i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.xadc*, %struct.xadc** %4, align 8
  %27 = call i32 @XADC_REG_SEQ(i32 0)
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, 65535
  %30 = call i32 @xadc_write_adc_reg(%struct.xadc* %26, i32 %27, i64 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %60

34:                                               ; preds = %18
  %35 = load %struct.xadc*, %struct.xadc** %4, align 8
  %36 = call i32 @XADC_REG_SEQ(i32 1)
  %37 = load i64, i64* %5, align 8
  %38 = lshr i64 %37, 16
  %39 = call i32 @xadc_write_adc_reg(%struct.xadc* %35, i32 %36, i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %60

43:                                               ; preds = %34
  %44 = load %struct.xadc*, %struct.xadc** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @xadc_power_adc_b(%struct.xadc* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %60

50:                                               ; preds = %43
  %51 = load %struct.xadc*, %struct.xadc** %4, align 8
  %52 = load i32, i32* @XADC_REG_CONF1, align 4
  %53 = load i32, i32* @XADC_CONF1_SEQ_MASK, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @xadc_update_adc_reg(%struct.xadc* %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %60

59:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %64

60:                                               ; preds = %58, %49, %42, %33, %17
  %61 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %62 = call i32 @xadc_postdisable(%struct.iio_dev* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @xadc_update_adc_reg(%struct.xadc*, i32, i32, i32) #1

declare dso_local i32 @xadc_get_seq_mode(%struct.xadc*, i64) #1

declare dso_local i32 @xadc_write_adc_reg(%struct.xadc*, i32, i64) #1

declare dso_local i32 @XADC_REG_SEQ(i32) #1

declare dso_local i32 @xadc_power_adc_b(%struct.xadc*, i32) #1

declare dso_local i32 @xadc_postdisable(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
