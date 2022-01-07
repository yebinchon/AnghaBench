; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_max6697_get_config_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6697.c_max6697_get_config_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.max6697_platform_data = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"smbus-timeout-disable\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"extended-range-enable\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"beta-compensation-enable\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"alert-mask\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"over-temperature-mask\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"resistance-cancellation\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"transistor-ideality\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.max6697_platform_data*)* @max6697_get_config_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max6697_get_config_of(%struct.device_node* %0, %struct.max6697_platform_data* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.max6697_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.max6697_platform_data* %1, %struct.max6697_platform_data** %4, align 8
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = call i8* @of_property_read_bool(%struct.device_node* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %4, align 8
  %10 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %9, i32 0, i32 7
  store i8* %8, i8** %10, align 8
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = call i8* @of_property_read_bool(%struct.device_node* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %4, align 8
  %14 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = call i8* @of_property_read_bool(%struct.device_node* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %4, align 8
  %18 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i32* @of_get_property(%struct.device_node* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @be32_to_cpu(i32 %30)
  %32 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %4, align 8
  %33 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %23, %2
  %35 = load %struct.device_node*, %struct.device_node** %3, align 8
  %36 = call i32* @of_get_property(%struct.device_node* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @be32_to_cpu(i32 %46)
  %48 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %43, %39, %34
  %51 = load %struct.device_node*, %struct.device_node** %3, align 8
  %52 = call i32* @of_get_property(%struct.device_node* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* %5)
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %57, 4
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @be32_to_cpu(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %4, align 8
  %66 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %70

67:                                               ; preds = %55
  %68 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %4, align 8
  %69 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %68, i32 0, i32 0
  store i32 254, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %59
  br label %71

71:                                               ; preds = %70, %50
  %72 = load %struct.device_node*, %struct.device_node** %3, align 8
  %73 = call i32* @of_get_property(%struct.device_node* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %5)
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %78, 8
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @be32_to_cpu(i32 %83)
  %85 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %4, align 8
  %86 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @be32_to_cpu(i32 %89)
  %91 = load %struct.max6697_platform_data*, %struct.max6697_platform_data** %4, align 8
  %92 = getelementptr inbounds %struct.max6697_platform_data, %struct.max6697_platform_data* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %80, %76, %71
  ret void
}

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
