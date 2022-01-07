; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl4030-vibra.c_twl4030_vibra_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl4030-vibra.c_twl4030_vibra_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.twl4030_vibra_data = type { i32 }
%struct.vibra_info = type { %struct.TYPE_15__*, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i8*, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"platform_data not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vibra_play_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"couldn't allocate input device\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"twl4030:vibrator\00", align 1
@twl4030_vibra_close = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@vibra_play = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"couldn't register vibrator to FF\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"couldn't register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030_vibra_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_vibra_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl4030_vibra_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.vibra_info*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.twl4030_vibra_data* @dev_get_platdata(%struct.TYPE_16__* %9)
  store %struct.twl4030_vibra_data* %10, %struct.twl4030_vibra_data** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.twl4030_vibra_data*, %struct.twl4030_vibra_data** %4, align 8
  %18 = icmp ne %struct.twl4030_vibra_data* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(%struct.TYPE_16__* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %128

28:                                               ; preds = %19, %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.vibra_info* @devm_kzalloc(%struct.TYPE_16__* %30, i32 24, i32 %31)
  store %struct.vibra_info* %32, %struct.vibra_info** %6, align 8
  %33 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %34 = icmp ne %struct.vibra_info* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %128

38:                                               ; preds = %28
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %42 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %41, i32 0, i32 3
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %42, align 8
  %43 = load %struct.twl4030_vibra_data*, %struct.twl4030_vibra_data** %4, align 8
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = call i32 @twl4030_vibra_check_coexist(%struct.twl4030_vibra_data* %43, %struct.device_node* %44)
  %46 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %47 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %49 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %48, i32 0, i32 1
  %50 = load i32, i32* @vibra_play_work, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call %struct.TYPE_15__* @devm_input_allocate_device(%struct.TYPE_16__* %53)
  %55 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %56 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %55, i32 0, i32 0
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %56, align 8
  %57 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %58 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = icmp eq %struct.TYPE_15__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %38
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(%struct.TYPE_16__* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %128

67:                                               ; preds = %38
  %68 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %69 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %72 = call i32 @input_set_drvdata(%struct.TYPE_15__* %70, %struct.vibra_info* %71)
  %73 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %74 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %76, align 8
  %77 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %78 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* @twl4030_vibra_close, align 4
  %83 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %84 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* @FF_RUMBLE, align 4
  %88 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %89 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @__set_bit(i32 %87, i32 %92)
  %94 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %95 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %94, i32 0, i32 0
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = load i32, i32* @vibra_play, align 4
  %98 = call i32 @input_ff_create_memless(%struct.TYPE_15__* %96, i32* null, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %67
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_dbg(%struct.TYPE_16__* %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %128

106:                                              ; preds = %67
  %107 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %108 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = call i32 @input_register_device(%struct.TYPE_15__* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 @dev_dbg(%struct.TYPE_16__* %115, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %122

117:                                              ; preds = %106
  %118 = call i32 (...) @vibra_disable_leds()
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %121 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.vibra_info* %120)
  store i32 0, i32* %2, align 4
  br label %128

122:                                              ; preds = %113
  %123 = load %struct.vibra_info*, %struct.vibra_info** %6, align 8
  %124 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %123, i32 0, i32 0
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = call i32 @input_ff_destroy(%struct.TYPE_15__* %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %122, %117, %101, %61, %35, %22
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.twl4030_vibra_data* @dev_get_platdata(%struct.TYPE_16__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.vibra_info* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @twl4030_vibra_check_coexist(%struct.twl4030_vibra_data*, %struct.device_node*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @devm_input_allocate_device(%struct.TYPE_16__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_15__*, %struct.vibra_info*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_15__*) #1

declare dso_local i32 @vibra_disable_leds(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vibra_info*) #1

declare dso_local i32 @input_ff_destroy(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
