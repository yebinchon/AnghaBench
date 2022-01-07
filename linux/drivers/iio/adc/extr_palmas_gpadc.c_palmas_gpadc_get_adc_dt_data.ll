; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_get_adc_dt_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_palmas_gpadc.c_palmas_gpadc_get_adc_dt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.palmas_gpadc_platform_data = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ti,channel0-current-microamp\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ti,channel3-current-microamp\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ti,enable-extended-delay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.palmas_gpadc_platform_data**)* @palmas_gpadc_get_adc_dt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_gpadc_get_adc_dt_data(%struct.platform_device* %0, %struct.palmas_gpadc_platform_data** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.palmas_gpadc_platform_data**, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.palmas_gpadc_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.palmas_gpadc_platform_data** %1, %struct.palmas_gpadc_platform_data*** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.palmas_gpadc_platform_data* @devm_kzalloc(%struct.TYPE_2__* %15, i32 24, i32 %16)
  store %struct.palmas_gpadc_platform_data* %17, %struct.palmas_gpadc_platform_data** %7, align 8
  %18 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %7, align 8
  %19 = icmp ne %struct.palmas_gpadc_platform_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %48

23:                                               ; preds = %2
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call i32 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %7, align 8
  %31 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = call i32 @of_property_read_u32(%struct.device_node* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %7, align 8
  %40 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.device_node*, %struct.device_node** %6, align 8
  %43 = call i32 @of_property_read_bool(%struct.device_node* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %7, align 8
  %45 = getelementptr inbounds %struct.palmas_gpadc_platform_data, %struct.palmas_gpadc_platform_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.palmas_gpadc_platform_data*, %struct.palmas_gpadc_platform_data** %7, align 8
  %47 = load %struct.palmas_gpadc_platform_data**, %struct.palmas_gpadc_platform_data*** %5, align 8
  store %struct.palmas_gpadc_platform_data* %46, %struct.palmas_gpadc_platform_data** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.palmas_gpadc_platform_data* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
