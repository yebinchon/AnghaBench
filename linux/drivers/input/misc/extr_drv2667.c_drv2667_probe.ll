; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv2667.c_drv2667_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_drv2667.c_drv2667_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.drv2667_data = type { %struct.TYPE_12__*, i32, %struct.i2c_client*, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vbat\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to get regulator, error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"drv2667:haptics\00", align 1
@drv2667_close = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@drv2667_haptics_play = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"input_ff_create() failed: %d\0A\00", align 1
@drv2667_worker = common dso_local global i32 0, align 4
@drv2667_regmap_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Device init failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"couldn't register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @drv2667_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv2667_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.drv2667_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.drv2667_data* @devm_kzalloc(%struct.TYPE_13__* %9, i32 32, i32 %10)
  store %struct.drv2667_data* %11, %struct.drv2667_data** %6, align 8
  %12 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %13 = icmp ne %struct.drv2667_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %152

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @devm_regulator_get(%struct.TYPE_13__* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %22 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %24 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %17
  %29 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %30 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %152

38:                                               ; preds = %17
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call %struct.TYPE_12__* @devm_input_allocate_device(%struct.TYPE_13__* %40)
  %42 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %43 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %42, i32 0, i32 0
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %43, align 8
  %44 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %45 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %152

54:                                               ; preds = %38
  %55 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %56 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %64 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  %68 = load i32, i32* @drv2667_close, align 4
  %69 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %70 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 8
  %73 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %74 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %77 = call i32 @input_set_drvdata(%struct.TYPE_12__* %75, %struct.drv2667_data* %76)
  %78 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %79 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* @EV_FF, align 4
  %82 = load i32, i32* @FF_RUMBLE, align 4
  %83 = call i32 @input_set_capability(%struct.TYPE_12__* %80, i32 %81, i32 %82)
  %84 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %85 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load i32, i32* @drv2667_haptics_play, align 4
  %88 = call i32 @input_ff_create_memless(%struct.TYPE_12__* %86, i32* null, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %54
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %152

97:                                               ; preds = %54
  %98 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %99 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %98, i32 0, i32 3
  %100 = load i32, i32* @drv2667_worker, align 4
  %101 = call i32 @INIT_WORK(i32* %99, i32 %100)
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %104 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %103, i32 0, i32 2
  store %struct.i2c_client* %102, %struct.i2c_client** %104, align 8
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %107 = call i32 @i2c_set_clientdata(%struct.i2c_client* %105, %struct.drv2667_data* %106)
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %108, i32* @drv2667_regmap_config)
  %110 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %111 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %113 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @IS_ERR(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %97
  %118 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %119 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @PTR_ERR(i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load i32, i32* %7, align 4
  %125 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %152

127:                                              ; preds = %97
  %128 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %129 = call i32 @drv2667_init(%struct.drv2667_data* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %3, align 4
  br label %152

138:                                              ; preds = %127
  %139 = load %struct.drv2667_data*, %struct.drv2667_data** %6, align 8
  %140 = getelementptr inbounds %struct.drv2667_data, %struct.drv2667_data* %139, i32 0, i32 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = call i32 @input_register_device(%struct.TYPE_12__* %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 0
  %148 = load i32, i32* %7, align 4
  %149 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %147, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %3, align 4
  br label %152

151:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %151, %145, %132, %117, %91, %48, %28, %14
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.drv2667_data* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local %struct.TYPE_12__* @devm_input_allocate_device(%struct.TYPE_13__*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_12__*, %struct.drv2667_data*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.drv2667_data*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @drv2667_init(%struct.drv2667_data*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
