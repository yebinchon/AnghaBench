; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_sc27xx-vibra.c_sc27xx_vibra_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_sc27xx-vibra.c_sc27xx_vibra_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.vibra_info = type { i32, %struct.TYPE_12__*, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to get vibrator regmap.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to get vibrator base address.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to allocate input device.\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"sc27xx:vibrator\00", align 1
@sc27xx_vibra_close = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@sc27xx_vibra_play_work = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to initialize the vibrator.\0A\00", align 1
@sc27xx_vibra_play = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to register vibrator to FF.\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to register input device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sc27xx_vibra_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_vibra_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vibra_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.vibra_info* @devm_kzalloc(%struct.TYPE_13__* %7, i32 32, i32 %8)
  store %struct.vibra_info* %9, %struct.vibra_info** %4, align 8
  %10 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %11 = icmp ne %struct.vibra_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %129

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_get_regmap(i32 %19, i32* null)
  %21 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %22 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %24 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %15
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(%struct.TYPE_13__* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %129

33:                                               ; preds = %15
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %37 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %36, i32 0, i32 3
  %38 = call i32 @device_property_read_u32(%struct.TYPE_13__* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(%struct.TYPE_13__* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %129

46:                                               ; preds = %33
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call %struct.TYPE_12__* @devm_input_allocate_device(%struct.TYPE_13__* %48)
  %50 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %51 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %50, i32 0, i32 1
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %51, align 8
  %52 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %53 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_13__* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %129

62:                                               ; preds = %46
  %63 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %64 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %66, align 8
  %67 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %68 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @sc27xx_vibra_close, align 4
  %73 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %74 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %73, i32 0, i32 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 8
  %77 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %78 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %81 = call i32 @input_set_drvdata(%struct.TYPE_12__* %79, %struct.vibra_info* %80)
  %82 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %83 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = load i32, i32* @EV_FF, align 4
  %86 = load i32, i32* @FF_RUMBLE, align 4
  %87 = call i32 @input_set_capability(%struct.TYPE_12__* %84, i32 %85, i32 %86)
  %88 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %89 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %88, i32 0, i32 2
  %90 = load i32, i32* @sc27xx_vibra_play_work, align 4
  %91 = call i32 @INIT_WORK(i32* %89, i32 %90)
  %92 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %93 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  %94 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %95 = call i32 @sc27xx_vibra_hw_init(%struct.vibra_info* %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %62
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_err(%struct.TYPE_13__* %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %129

103:                                              ; preds = %62
  %104 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %105 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %104, i32 0, i32 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = load i32, i32* @sc27xx_vibra_play, align 4
  %108 = call i32 @input_ff_create_memless(%struct.TYPE_12__* %106, i32* null, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @dev_err(%struct.TYPE_13__* %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %129

116:                                              ; preds = %103
  %117 = load %struct.vibra_info*, %struct.vibra_info** %4, align 8
  %118 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %117, i32 0, i32 1
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = call i32 @input_register_device(%struct.TYPE_12__* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_err(%struct.TYPE_13__* %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %129

128:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %123, %111, %98, %56, %41, %27, %12
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.vibra_info* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @device_property_read_u32(%struct.TYPE_13__*, i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @devm_input_allocate_device(%struct.TYPE_13__*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_12__*, %struct.vibra_info*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @sc27xx_vibra_hw_init(%struct.vibra_info*) #1

declare dso_local i32 @input_ff_create_memless(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
