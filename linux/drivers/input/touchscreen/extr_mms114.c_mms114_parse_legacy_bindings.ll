; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_parse_legacy_bindings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_parse_legacy_bindings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mms114_data = type { i32, i32, %struct.touchscreen_properties, %struct.TYPE_2__* }
%struct.touchscreen_properties = type { i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"x-size\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to get legacy x-size property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"y-size\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to get legacy y-size property\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"contact-threshold\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"moving-threshold\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"x-invert\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"y-invert\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mms114_data*)* @mms114_parse_legacy_bindings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms114_parse_legacy_bindings(%struct.mms114_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mms114_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.touchscreen_properties*, align 8
  store %struct.mms114_data* %0, %struct.mms114_data** %3, align 8
  %6 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %7 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %11 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %10, i32 0, i32 2
  store %struct.touchscreen_properties* %11, %struct.touchscreen_properties** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %5, align 8
  %14 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %13, i32 0, i32 4
  %15 = call i64 @device_property_read_u32(%struct.device* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %5, align 8
  %25 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %24, i32 0, i32 3
  %26 = call i64 @device_property_read_u32(%struct.device* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %58

33:                                               ; preds = %22
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %36 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %35, i32 0, i32 1
  %37 = call i64 @device_property_read_u32(%struct.device* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %36)
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.mms114_data*, %struct.mms114_data** %3, align 8
  %40 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %39, i32 0, i32 0
  %41 = call i64 @device_property_read_u32(%struct.device* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %40)
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i64 @device_property_read_bool(%struct.device* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %5, align 8
  %47 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %33
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i64 @device_property_read_bool(%struct.device* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %5, align 8
  %54 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.touchscreen_properties*, %struct.touchscreen_properties** %5, align 8
  %57 = getelementptr inbounds %struct.touchscreen_properties, %struct.touchscreen_properties* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %28, %17
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
