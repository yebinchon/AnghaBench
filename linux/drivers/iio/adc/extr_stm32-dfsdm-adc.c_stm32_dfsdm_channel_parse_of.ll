; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_channel_parse_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-adc.c_stm32_dfsdm_channel_parse_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dfsdm = type { i64, %struct.stm32_dfsdm_channel* }
%struct.stm32_dfsdm_channel = type { i64, i32, i32, i64 }
%struct.iio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iio_chan_spec = type { i32, i64, i8* }

@.str = private unnamed_addr constant [16 x i8] c"st,adc-channels\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" Error parsing 'st,adc-channels' for idx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c" Error bad channel number %d (max = %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"st,adc-channel-names\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c" Error parsing 'st,adc-channel-names' for idx %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"st,adc-channel-types\00", align 1
@stm32_dfsdm_chan_type = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"st,adc-channel-clk-src\00", align 1
@stm32_dfsdm_chan_src = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"st,adc-alt-channel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dfsdm*, %struct.iio_dev*, %struct.iio_chan_spec*)* @stm32_dfsdm_channel_parse_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_channel_parse_of(%struct.stm32_dfsdm* %0, %struct.iio_dev* %1, %struct.iio_chan_spec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_dfsdm*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca %struct.stm32_dfsdm_channel*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stm32_dfsdm* %0, %struct.stm32_dfsdm** %5, align 8
  store %struct.iio_dev* %1, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %7, align 8
  %13 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %14 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 1
  %23 = call i32 @of_property_read_u32_index(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20, i64* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_err(%struct.TYPE_2__* %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %141

32:                                               ; preds = %3
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.stm32_dfsdm*, %struct.stm32_dfsdm** %5, align 8
  %37 = getelementptr inbounds %struct.stm32_dfsdm, %struct.stm32_dfsdm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.stm32_dfsdm*, %struct.stm32_dfsdm** %5, align 8
  %48 = getelementptr inbounds %struct.stm32_dfsdm, %struct.stm32_dfsdm* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_err(%struct.TYPE_2__* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %46, i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %141

53:                                               ; preds = %32
  %54 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %60 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %59, i32 0, i32 2
  %61 = call i32 @of_property_read_string_index(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %58, i8** %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (%struct.TYPE_2__*, i8*, i32, ...) @dev_err(%struct.TYPE_2__* %66, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %141

70:                                               ; preds = %53
  %71 = load %struct.stm32_dfsdm*, %struct.stm32_dfsdm** %5, align 8
  %72 = getelementptr inbounds %struct.stm32_dfsdm, %struct.stm32_dfsdm* %71, i32 0, i32 1
  %73 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %72, align 8
  %74 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %75 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %73, i64 %76
  store %struct.stm32_dfsdm_channel* %77, %struct.stm32_dfsdm_channel** %8, align 8
  %78 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %79 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %8, align 8
  %82 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %84 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @of_property_read_string_index(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %87, i8** %9)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %70
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* @stm32_dfsdm_chan_type, align 4
  %94 = call i32 @stm32_dfsdm_str2val(i8* %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %4, align 4
  br label %141

99:                                               ; preds = %91
  br label %101

100:                                              ; preds = %70
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %100, %99
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %8, align 8
  %104 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @of_property_read_string_index(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %109, i8** %9)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %101
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* @stm32_dfsdm_chan_src, align 4
  %116 = call i32 @stm32_dfsdm_str2val(i8* %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %4, align 4
  br label %141

121:                                              ; preds = %113
  br label %123

122:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %122, %121
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %8, align 8
  %126 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %128 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %8, align 8
  %133 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %132, i32 0, i32 3
  %134 = call i32 @of_property_read_u32_index(i32 %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %131, i64* %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %123
  %138 = load %struct.stm32_dfsdm_channel*, %struct.stm32_dfsdm_channel** %8, align 8
  %139 = getelementptr inbounds %struct.stm32_dfsdm_channel, %struct.stm32_dfsdm_channel* %138, i32 0, i32 3
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %123
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %119, %97, %64, %40, %26
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @of_property_read_u32_index(i32, i8*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32, ...) #1

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i8**) #1

declare dso_local i32 @stm32_dfsdm_str2val(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
