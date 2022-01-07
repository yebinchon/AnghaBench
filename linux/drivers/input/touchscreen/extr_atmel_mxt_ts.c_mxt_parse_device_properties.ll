; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_parse_device_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_parse_device_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@mxt_parse_device_properties.keymap_property = internal constant [18 x i8] c"linux,gpio-keymap\00", align 16
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid/malformed '%s' property: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to parse '%s' property: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*)* @mxt_parse_device_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_parse_device_properties(%struct.mxt_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  %8 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %9 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i64 @device_property_present(%struct.device* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @mxt_parse_device_properties.keymap_property, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @device_property_count_u32(%struct.device* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @mxt_parse_device_properties.keymap_property, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  br label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %24, %23 ], [ %27, %25 ]
  store i32 %29, i32* %7, align 4
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @mxt_parse_device_properties.keymap_property, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %64

34:                                               ; preds = %15
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @devm_kmalloc_array(%struct.device* %35, i32 %36, i32 4, i32 %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %64

44:                                               ; preds = %34
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @device_property_read_u32_array(%struct.device* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @mxt_parse_device_properties.keymap_property, i64 0, i64 0), i32* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @mxt_parse_device_properties.keymap_property, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %64

56:                                               ; preds = %44
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %59 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %62 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %56, %1
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %51, %41, %28
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @device_property_present(%struct.device*, i8*) #1

declare dso_local i32 @device_property_count_u32(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32* @devm_kmalloc_array(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
