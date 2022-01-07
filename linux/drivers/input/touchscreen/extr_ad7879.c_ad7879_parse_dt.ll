; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7879.c_ad7879_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ad7879.c_ad7879_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ad7879 = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"adi,resistance-plate-x\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to get resistance-plate-x property\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"adi,first-conversion-delay\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"adi,acquisition-time\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"adi,median-filter-size\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"adi,averaging\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"adi,conversion-interval\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"touchscreen-swapped-x-y\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ad7879*)* @ad7879_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7879_parse_dt(%struct.device* %0, %struct.ad7879* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ad7879*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ad7879* %1, %struct.ad7879** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @device_property_read_u32(%struct.device* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64* %7)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %44

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %19 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %18, i32 0, i32 6
  store i64 %17, i64* %19, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %22 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %21, i32 0, i32 5
  %23 = call i32 @device_property_read_u8(%struct.device* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %26 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %25, i32 0, i32 4
  %27 = call i32 @device_property_read_u8(%struct.device* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %26)
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %30 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %29, i32 0, i32 3
  %31 = call i32 @device_property_read_u8(%struct.device* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %30)
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %34 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %33, i32 0, i32 2
  %35 = call i32 @device_property_read_u8(%struct.device* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %34)
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %38 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %37, i32 0, i32 1
  %39 = call i32 @device_property_read_u8(%struct.device* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32* %38)
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 @device_property_read_bool(%struct.device* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %42 = load %struct.ad7879*, %struct.ad7879** %5, align 8
  %43 = getelementptr inbounds %struct.ad7879, %struct.ad7879* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %16, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @device_property_read_u8(%struct.device*, i8*, i32*) #1

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
