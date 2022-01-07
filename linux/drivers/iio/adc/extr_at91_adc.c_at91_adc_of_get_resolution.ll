; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_of_get_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_of_get_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.iio_dev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"atmel,adc-res-names\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"You must specified at least two resolution names for adc-res-names property in the DT\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"atmel,adc-res\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Missing adc-res property in the DT.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"atmel,adc-use-res\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"highres\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"lowres\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Resolution used: %u bits\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"There is no resolution for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_adc_state*, %struct.platform_device*)* @at91_adc_of_get_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_of_get_resolution(%struct.at91_adc_state* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.at91_adc_state*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %14 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %15 = call %struct.iio_dev* @iio_priv_to_dev(%struct.at91_adc_state* %14)
  store %struct.iio_dev* %15, %struct.iio_dev** %6, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = call i32 @of_property_count_strings(%struct.device_node* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %108

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kmalloc_array(i32 %30, i32 4, i32 %31)
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %108

38:                                               ; preds = %29
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @of_property_read_u32_array(%struct.device_node* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %104

50:                                               ; preds = %38
  %51 = load %struct.device_node*, %struct.device_node** %7, align 8
  %52 = call i64 @of_property_read_string(%struct.device_node* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %11)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %55

55:                                               ; preds = %54, %50
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %96, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %56
  %61 = load %struct.device_node*, %struct.device_node** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @of_property_read_string_index(%struct.device_node* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %62, i8** %12)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %96

66:                                               ; preds = %60
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i64 @strcmp(i8* %67, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %96

72:                                               ; preds = %66
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %79 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %72
  %84 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %85 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  br label %89

86:                                               ; preds = %72
  %87 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %88 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 0
  %92 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %93 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_info(i32* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  br label %104

96:                                               ; preds = %71, %65
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %56

99:                                               ; preds = %56
  %100 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %101 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %100, i32 0, i32 0
  %102 = load i8*, i8** %11, align 8
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %99, %89, %44
  %105 = load i32*, i32** %13, align 8
  %106 = call i32 @kfree(i32* %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %35, %24
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.at91_adc_state*) #1

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
