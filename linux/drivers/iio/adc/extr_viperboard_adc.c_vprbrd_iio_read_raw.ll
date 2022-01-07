; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_viperboard_adc.c_vprbrd_iio_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_viperboard_adc.c_vprbrd_iio_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.vprbrd_adc = type { %struct.vprbrd* }
%struct.vprbrd = type { i32, i32, i64 }
%struct.vprbrd_adc_msg = type { i32, i32, i32 }

@VPRBRD_ADC_CMD_GET = common dso_local global i32 0, align 4
@VPRBRD_USB_REQUEST_ADC = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_OUT = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"usb send error on adc read\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"usb recv error on adc read\0A\00", align 1
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @vprbrd_iio_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_iio_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vprbrd_adc*, align 8
  %15 = alloca %struct.vprbrd*, align 8
  %16 = alloca %struct.vprbrd_adc_msg*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.vprbrd_adc* @iio_priv(%struct.iio_dev* %17)
  store %struct.vprbrd_adc* %18, %struct.vprbrd_adc** %14, align 8
  %19 = load %struct.vprbrd_adc*, %struct.vprbrd_adc** %14, align 8
  %20 = getelementptr inbounds %struct.vprbrd_adc, %struct.vprbrd_adc* %19, i32 0, i32 0
  %21 = load %struct.vprbrd*, %struct.vprbrd** %20, align 8
  store %struct.vprbrd* %21, %struct.vprbrd** %15, align 8
  %22 = load %struct.vprbrd*, %struct.vprbrd** %15, align 8
  %23 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.vprbrd_adc_msg*
  store %struct.vprbrd_adc_msg* %25, %struct.vprbrd_adc_msg** %16, align 8
  %26 = load i64, i64* %11, align 8
  switch i64 %26, label %97 [
    i64 128, label %27
  ]

27:                                               ; preds = %5
  %28 = load %struct.vprbrd*, %struct.vprbrd** %15, align 8
  %29 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* @VPRBRD_ADC_CMD_GET, align 4
  %32 = load %struct.vprbrd_adc_msg*, %struct.vprbrd_adc_msg** %16, align 8
  %33 = getelementptr inbounds %struct.vprbrd_adc_msg, %struct.vprbrd_adc_msg* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vprbrd_adc_msg*, %struct.vprbrd_adc_msg** %16, align 8
  %38 = getelementptr inbounds %struct.vprbrd_adc_msg, %struct.vprbrd_adc_msg* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.vprbrd_adc_msg*, %struct.vprbrd_adc_msg** %16, align 8
  %40 = getelementptr inbounds %struct.vprbrd_adc_msg, %struct.vprbrd_adc_msg* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.vprbrd*, %struct.vprbrd** %15, align 8
  %42 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vprbrd*, %struct.vprbrd** %15, align 8
  %45 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usb_sndctrlpipe(i32 %46, i32 0)
  %48 = load i32, i32* @VPRBRD_USB_REQUEST_ADC, align 4
  %49 = load i32, i32* @VPRBRD_USB_TYPE_OUT, align 4
  %50 = load %struct.vprbrd_adc_msg*, %struct.vprbrd_adc_msg** %16, align 8
  %51 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %52 = call i32 @usb_control_msg(i32 %43, i32 %47, i32 %48, i32 %49, i32 0, i32 0, %struct.vprbrd_adc_msg* %50, i32 12, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 12
  br i1 %55, label %56, label %62

56:                                               ; preds = %27
  %57 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EREMOTEIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %56, %27
  %63 = load %struct.vprbrd*, %struct.vprbrd** %15, align 8
  %64 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vprbrd*, %struct.vprbrd** %15, align 8
  %67 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usb_rcvctrlpipe(i32 %68, i32 0)
  %70 = load i32, i32* @VPRBRD_USB_REQUEST_ADC, align 4
  %71 = load i32, i32* @VPRBRD_USB_TYPE_IN, align 4
  %72 = load %struct.vprbrd_adc_msg*, %struct.vprbrd_adc_msg** %16, align 8
  %73 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %74 = call i32 @usb_control_msg(i32 %65, i32 %69, i32 %70, i32 %71, i32 0, i32 0, %struct.vprbrd_adc_msg* %72, i32 12, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.vprbrd_adc_msg*, %struct.vprbrd_adc_msg** %16, align 8
  %76 = getelementptr inbounds %struct.vprbrd_adc_msg, %struct.vprbrd_adc_msg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.vprbrd*, %struct.vprbrd** %15, align 8
  %80 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ne i64 %83, 12
  br i1 %84, label %85, label %91

85:                                               ; preds = %62
  %86 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @EREMOTEIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %85, %62
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %101

95:                                               ; preds = %91
  %96 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %96, i32* %6, align 4
  br label %103

97:                                               ; preds = %5
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %100, %94
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %95
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.vprbrd_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.vprbrd_adc_msg*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
