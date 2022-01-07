; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.xadc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SAMP_FREQ = common dso_local global i64 0, align 8
@XADC_REG_CONF2 = common dso_local global i32 0, align 4
@XADC_CONF2_DIV_MASK = common dso_local global i32 0, align 4
@XADC_CONF2_DIV_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @xadc_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.xadc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.xadc* @iio_priv(%struct.iio_dev* %15)
  store %struct.xadc* %16, %struct.xadc** %12, align 8
  %17 = load %struct.xadc*, %struct.xadc** %12, align 8
  %18 = call i64 @xadc_get_dclk_rate(%struct.xadc* %17)
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %79

24:                                               ; preds = %5
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @IIO_CHAN_INFO_SAMP_FREQ, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %79

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %79

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 150000
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 150000, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %42, 26
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 1000000
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1000000, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i64, i64* %13, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %48, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %14, align 4
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = zext i32 %54 to i64
  %56 = udiv i64 %53, %55
  %57 = udiv i64 %56, 26
  %58 = icmp ugt i64 %57, 150000
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* %14, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %59, %47
  %63 = load i32, i32* %14, align 4
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 2, i32* %14, align 4
  br label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %14, align 4
  %68 = icmp ugt i32 %67, 255
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 255, i32* %14, align 4
  br label %70

70:                                               ; preds = %69, %66
  br label %71

71:                                               ; preds = %70, %65
  %72 = load %struct.xadc*, %struct.xadc** %12, align 8
  %73 = load i32, i32* @XADC_REG_CONF2, align 4
  %74 = load i32, i32* @XADC_CONF2_DIV_MASK, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @XADC_CONF2_DIV_OFFSET, align 4
  %77 = shl i32 %75, %76
  %78 = call i32 @xadc_update_adc_reg(%struct.xadc* %72, i32 %73, i32 %74, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %71, %34, %28, %21
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @xadc_get_dclk_rate(%struct.xadc*) #1

declare dso_local i32 @xadc_update_adc_reg(%struct.xadc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
