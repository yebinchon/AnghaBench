; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp206c.c_hp206c_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp206c.c_hp206c_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hp206c_osr_setting = type { i32, i32, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hp206c_data = type { i64, i64, i32 }

@hp206c_osr_rates = common dso_local global i32* null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@hp206c_osr_settings = common dso_local global %struct.hp206c_osr_setting* null, align 8
@HP206C_CMD_ADC_CVT = common dso_local global i32 0, align 4
@HP206C_CMD_ADC_CVT_CHNL_T = common dso_local global i32 0, align 4
@HP206C_CMD_READ_T = common dso_local global i32 0, align 4
@HP206C_CMD_ADC_CVT_CHNL_PT = common dso_local global i32 0, align 4
@HP206C_CMD_READ_P = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @hp206c_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp206c_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hp206c_data*, align 8
  %13 = alloca %struct.hp206c_osr_setting*, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %16 = call %struct.hp206c_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.hp206c_data* %16, %struct.hp206c_data** %12, align 8
  %17 = load %struct.hp206c_data*, %struct.hp206c_data** %12, align 8
  %18 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i64, i64* %10, align 8
  switch i64 %20, label %126 [
    i64 132, label %21
    i64 131, label %47
    i64 130, label %110
  ]

21:                                               ; preds = %5
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %43 [
    i32 128, label %25
    i32 129, label %34
  ]

25:                                               ; preds = %21
  %26 = load i32*, i32** @hp206c_osr_rates, align 8
  %27 = load %struct.hp206c_data*, %struct.hp206c_data** %12, align 8
  %28 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %33, i32* %11, align 4
  br label %46

34:                                               ; preds = %21
  %35 = load i32*, i32** @hp206c_osr_rates, align 8
  %36 = load %struct.hp206c_data*, %struct.hp206c_data** %12, align 8
  %37 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %42, i32* %11, align 4
  br label %46

43:                                               ; preds = %21
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %34, %25
  br label %129

47:                                               ; preds = %5
  %48 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %49 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %106 [
    i32 128, label %51
    i32 129, label %79
  ]

51:                                               ; preds = %47
  %52 = load %struct.hp206c_osr_setting*, %struct.hp206c_osr_setting** @hp206c_osr_settings, align 8
  %53 = load %struct.hp206c_data*, %struct.hp206c_data** %12, align 8
  %54 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.hp206c_osr_setting, %struct.hp206c_osr_setting* %52, i64 %55
  store %struct.hp206c_osr_setting* %56, %struct.hp206c_osr_setting** %13, align 8
  %57 = load i32, i32* @HP206C_CMD_ADC_CVT, align 4
  %58 = load %struct.hp206c_osr_setting*, %struct.hp206c_osr_setting** %13, align 8
  %59 = getelementptr inbounds %struct.hp206c_osr_setting, %struct.hp206c_osr_setting* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  %62 = load i32, i32* @HP206C_CMD_ADC_CVT_CHNL_T, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @HP206C_CMD_READ_T, align 4
  %67 = load %struct.hp206c_osr_setting*, %struct.hp206c_osr_setting** %13, align 8
  %68 = getelementptr inbounds %struct.hp206c_osr_setting, %struct.hp206c_osr_setting* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @hp206c_conv_and_read(%struct.iio_dev* %64, i32 %65, i32 %66, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %51
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @sign_extend32(i32 %74, i32 19)
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %73, %51
  br label %109

79:                                               ; preds = %47
  %80 = load %struct.hp206c_osr_setting*, %struct.hp206c_osr_setting** @hp206c_osr_settings, align 8
  %81 = load %struct.hp206c_data*, %struct.hp206c_data** %12, align 8
  %82 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.hp206c_osr_setting, %struct.hp206c_osr_setting* %80, i64 %83
  store %struct.hp206c_osr_setting* %84, %struct.hp206c_osr_setting** %13, align 8
  %85 = load i32, i32* @HP206C_CMD_ADC_CVT, align 4
  %86 = load %struct.hp206c_osr_setting*, %struct.hp206c_osr_setting** %13, align 8
  %87 = getelementptr inbounds %struct.hp206c_osr_setting, %struct.hp206c_osr_setting* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %85, %88
  %90 = load i32, i32* @HP206C_CMD_ADC_CVT_CHNL_PT, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %14, align 4
  %92 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @HP206C_CMD_READ_P, align 4
  %95 = load %struct.hp206c_osr_setting*, %struct.hp206c_osr_setting** %13, align 8
  %96 = getelementptr inbounds %struct.hp206c_osr_setting, %struct.hp206c_osr_setting* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @hp206c_conv_and_read(%struct.iio_dev* %92, i32 %93, i32 %94, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %79
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %101, %79
  br label %109

106:                                              ; preds = %47
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %106, %105, %78
  br label %129

110:                                              ; preds = %5
  %111 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %112 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %122 [
    i32 128, label %114
    i32 129, label %118
  ]

114:                                              ; preds = %110
  %115 = load i32*, i32** %8, align 8
  store i32 0, i32* %115, align 4
  %116 = load i32*, i32** %9, align 8
  store i32 10000, i32* %116, align 4
  %117 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %117, i32* %11, align 4
  br label %125

118:                                              ; preds = %110
  %119 = load i32*, i32** %8, align 8
  store i32 0, i32* %119, align 4
  %120 = load i32*, i32** %9, align 8
  store i32 1000, i32* %120, align 4
  %121 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %121, i32* %11, align 4
  br label %125

122:                                              ; preds = %110
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %122, %118, %114
  br label %129

126:                                              ; preds = %5
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %126, %125, %109, %46
  %130 = load %struct.hp206c_data*, %struct.hp206c_data** %12, align 8
  %131 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %130, i32 0, i32 2
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %11, align 4
  ret i32 %133
}

declare dso_local %struct.hp206c_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hp206c_conv_and_read(%struct.iio_dev*, i32, i32, i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
