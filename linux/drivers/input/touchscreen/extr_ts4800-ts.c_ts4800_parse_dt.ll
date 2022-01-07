; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ts4800-ts.c_ts4800_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ts4800-ts.c_ts4800_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ts4800_ts = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no syscon property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot get parent's regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"no offset in syscon\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"no bit in syscon\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ts4800_ts*)* @ts4800_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts4800_parse_dt(%struct.platform_device* %0, %struct.ts4800_ts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ts4800_ts*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ts4800_ts* %1, %struct.ts4800_ts** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %7, align 8
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %18, %struct.device_node** %8, align 8
  %19 = load %struct.device_node*, %struct.device_node** %8, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %71

26:                                               ; preds = %2
  %27 = load %struct.device_node*, %struct.device_node** %8, align 8
  %28 = call i32 @syscon_node_to_regmap(%struct.device_node* %27)
  %29 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %30 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.device_node*, %struct.device_node** %8, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  %33 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %34 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @IS_ERR(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %42 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %71

45:                                               ; preds = %26
  %46 = load %struct.device_node*, %struct.device_node** %7, align 8
  %47 = call i32 @of_property_read_u32_index(%struct.device_node* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1, i32* %9)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %57 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.device_node*, %struct.device_node** %7, align 8
  %59 = call i32 @of_property_read_u32_index(%struct.device_node* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 2, i32* %10)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.device*, %struct.device** %6, align 8
  %64 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %71

66:                                               ; preds = %54
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = load %struct.ts4800_ts*, %struct.ts4800_ts** %5, align 8
  %70 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %62, %50, %38, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
