; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_tmp401_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp401.c_tmp401_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.tmp401_data = type { i64, i32**, i32, %struct.i2c_client* }

@tmp401_probe.names = internal constant [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"TMP401\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"TMP411\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TMP431\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"TMP432\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"TMP435\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"TMP461\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tmp401_group = common dso_local global i32 0, align 4
@tmp411 = common dso_local global i64 0, align 8
@tmp411_group = common dso_local global i32 0, align 4
@tmp432 = common dso_local global i64 0, align 8
@tmp432_group = common dso_local global i32 0, align 4
@tmp461 = common dso_local global i64 0, align 8
@tmp461_group = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Detected TI %s chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tmp401_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp401_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.tmp401_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tmp401_data* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.tmp401_data* %15, %struct.tmp401_data** %8, align 8
  %16 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %17 = icmp ne %struct.tmp401_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %113

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %24 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %23, i32 0, i32 3
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %26 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %32 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = call i32 @tmp401_init_client(%struct.tmp401_data* %33, %struct.i2c_client* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %113

40:                                               ; preds = %21
  %41 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %42 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32*, i32** %43, i64 %46
  store i32* @tmp401_group, i32** %47, align 8
  %48 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %49 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @tmp411, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %40
  %54 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %55 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32*, i32** %56, i64 %59
  store i32* @tmp411_group, i32** %60, align 8
  br label %61

61:                                               ; preds = %53, %40
  %62 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %63 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @tmp432, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %69 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32*, i32** %70, i64 %73
  store i32* @tmp432_group, i32** %74, align 8
  br label %75

75:                                               ; preds = %67, %61
  %76 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %77 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @tmp461, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %83 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32*, i32** %84, i64 %87
  store i32* @tmp461_group, i32** %88, align 8
  br label %89

89:                                               ; preds = %81, %75
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %95 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %96 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %90, i32 %93, %struct.tmp401_data* %94, i32** %97)
  store %struct.device* %98, %struct.device** %7, align 8
  %99 = load %struct.device*, %struct.device** %7, align 8
  %100 = call i64 @IS_ERR(%struct.device* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %89
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = call i32 @PTR_ERR(%struct.device* %103)
  store i32 %104, i32* %3, align 4
  br label %113

105:                                              ; preds = %89
  %106 = load %struct.device*, %struct.device** %6, align 8
  %107 = load %struct.tmp401_data*, %struct.tmp401_data** %8, align 8
  %108 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds [6 x i8*], [6 x i8*]* @tmp401_probe.names, i64 0, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @dev_info(%struct.device* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %105, %102, %38, %18
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.tmp401_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tmp401_init_client(%struct.tmp401_data*, %struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.tmp401_data*, i32**) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
