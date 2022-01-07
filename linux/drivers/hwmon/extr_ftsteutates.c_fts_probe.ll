; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.fts_data = type { %struct.i2c_client*, i32, i32 }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@FTS_DEVICE_ID_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No Baseboard Management Controller\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No fujitsu board\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FTS_DEVICE_REVISION_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ftsteutates\00", align 1
@fts_attr_groups = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Detected FTS Teutates chip, revision: %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @fts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fts_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 115
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %105

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* @FTS_DEVICE_ID_REG, align 4
  %21 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 240
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 15
  switch i32 %30, label %32 [
    i32 1, label %31
  ]

31:                                               ; preds = %28
  br label %38

32:                                               ; preds = %28
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %105

38:                                               ; preds = %31
  br label %45

39:                                               ; preds = %24, %18
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %105

45:                                               ; preds = %38
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 1
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.fts_data* @devm_kzalloc(i32* %47, i32 16, i32 %48)
  store %struct.fts_data* %49, %struct.fts_data** %7, align 8
  %50 = load %struct.fts_data*, %struct.fts_data** %7, align 8
  %51 = icmp ne %struct.fts_data* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %105

55:                                               ; preds = %45
  %56 = load %struct.fts_data*, %struct.fts_data** %7, align 8
  %57 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %56, i32 0, i32 2
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.fts_data*, %struct.fts_data** %7, align 8
  %60 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %59, i32 0, i32 1
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = load %struct.fts_data*, %struct.fts_data** %7, align 8
  %64 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %63, i32 0, i32 0
  store %struct.i2c_client* %62, %struct.i2c_client** %64, align 8
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 1
  %67 = load %struct.fts_data*, %struct.fts_data** %7, align 8
  %68 = call i32 @dev_set_drvdata(i32* %66, %struct.fts_data* %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load i32, i32* @FTS_DEVICE_REVISION_REG, align 4
  %71 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %55
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %105

76:                                               ; preds = %55
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %6, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 1
  %80 = load %struct.fts_data*, %struct.fts_data** %7, align 8
  %81 = load i32, i32* @fts_attr_groups, align 4
  %82 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.fts_data* %80, i32 %81)
  store %struct.device* %82, %struct.device** %10, align 8
  %83 = load %struct.device*, %struct.device** %10, align 8
  %84 = call i64 @IS_ERR(%struct.device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.device*, %struct.device** %10, align 8
  %88 = call i32 @PTR_ERR(%struct.device* %87)
  store i32 %88, i32* %3, align 4
  br label %105

89:                                               ; preds = %76
  %90 = load %struct.fts_data*, %struct.fts_data** %7, align 8
  %91 = call i32 @fts_watchdog_init(%struct.fts_data* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %105

96:                                               ; preds = %89
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 1
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, 240
  %101 = ashr i32 %100, 4
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, 15
  %104 = call i32 @dev_info(i32* %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %96, %94, %86, %74, %52, %39, %32, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.fts_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.fts_data*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i8*, %struct.fts_data*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @fts_watchdog_init(%struct.fts_data*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
