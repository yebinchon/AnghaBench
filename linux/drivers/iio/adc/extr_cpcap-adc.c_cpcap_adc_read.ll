; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.cpcap_adc = type { i32, i32, i32, i32 }
%struct.cpcap_adc_request = type { i32 }

@CPCAP_VENDOR_ST = common dso_local global i32 0, align 4
@CPCAP_ADC_AD3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error reading ADC: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @cpcap_adc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_adc_read(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cpcap_adc*, align 8
  %13 = alloca %struct.cpcap_adc_request, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.cpcap_adc* @iio_priv(%struct.iio_dev* %15)
  store %struct.cpcap_adc* %16, %struct.cpcap_adc** %12, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpcap_adc_init_request(%struct.cpcap_adc_request* %13, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %125

25:                                               ; preds = %5
  %26 = load i64, i64* %11, align 8
  switch i64 %26, label %110 [
    i64 128, label %27
    i64 129, label %58
  ]

27:                                               ; preds = %25
  %28 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %29 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %32 = call i32 @cpcap_adc_start_bank(%struct.cpcap_adc* %31, %struct.cpcap_adc_request* %13)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %115

36:                                               ; preds = %27
  %37 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %38 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @regmap_read(i32 %39, i32 %42, i32* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %115

48:                                               ; preds = %36
  %49 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %50 = call i32 @cpcap_adc_stop_bank(%struct.cpcap_adc* %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %115

54:                                               ; preds = %48
  %55 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %56 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  br label %113

58:                                               ; preds = %25
  %59 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %60 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %59, i32 0, i32 1
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %63 = call i32 @cpcap_adc_start_bank(%struct.cpcap_adc* %62, %struct.cpcap_adc_request* %13)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %115

67:                                               ; preds = %58
  %68 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %69 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CPCAP_VENDOR_ST, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %75 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CPCAP_ADC_AD3, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %81 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %82 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %13, i32 0, i32 0
  %85 = call i32 @cpcap_adc_read_st_die_temp(%struct.cpcap_adc* %80, i32 %83, i32* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %115

89:                                               ; preds = %79
  br label %97

90:                                               ; preds = %73, %67
  %91 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %92 = call i32 @cpcap_adc_read_bank_scaled(%struct.cpcap_adc* %91, %struct.cpcap_adc_request* %13)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %115

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %89
  %98 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %99 = call i32 @cpcap_adc_stop_bank(%struct.cpcap_adc* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %115

103:                                              ; preds = %97
  %104 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %105 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %104, i32 0, i32 1
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = getelementptr inbounds %struct.cpcap_adc_request, %struct.cpcap_adc_request* %13, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  br label %113

110:                                              ; preds = %25
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %125

113:                                              ; preds = %103, %54
  %114 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %114, i32* %6, align 4
  br label %125

115:                                              ; preds = %102, %95, %88, %66, %53, %47, %35
  %116 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %117 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.cpcap_adc*, %struct.cpcap_adc** %12, align 8
  %120 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %115, %113, %110, %23
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local %struct.cpcap_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @cpcap_adc_init_request(%struct.cpcap_adc_request*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpcap_adc_start_bank(%struct.cpcap_adc*, %struct.cpcap_adc_request*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @cpcap_adc_stop_bank(%struct.cpcap_adc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cpcap_adc_read_st_die_temp(%struct.cpcap_adc*, i32, i32*) #1

declare dso_local i32 @cpcap_adc_read_bank_scaled(%struct.cpcap_adc*, %struct.cpcap_adc_request*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
