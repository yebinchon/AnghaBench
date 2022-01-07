; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_arizona-haptics.c_arizona_haptics_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_arizona-haptics.c_arizona_haptics_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.arizona = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.arizona_haptics = type { %struct.TYPE_9__*, i32, %struct.arizona* }
%struct.TYPE_9__ = type { i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ARIZONA_HAPTICS_CONTROL_1 = common dso_local global i32 0, align 4
@ARIZONA_HAP_ACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to set haptics actuator: %d\0A\00", align 1
@arizona_haptics_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"arizona:haptics\00", align 1
@arizona_haptics_close = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@arizona_haptics_play = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"input_ff_create_memless() failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"couldn't register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arizona_haptics_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_haptics_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.arizona_haptics*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.arizona* @dev_get_drvdata(i32 %10)
  store %struct.arizona* %11, %struct.arizona** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.arizona_haptics* @devm_kzalloc(%struct.TYPE_10__* %13, i32 24, i32 %14)
  store %struct.arizona_haptics* %15, %struct.arizona_haptics** %5, align 8
  %16 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %17 = icmp ne %struct.arizona_haptics* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %116

21:                                               ; preds = %1
  %22 = load %struct.arizona*, %struct.arizona** %4, align 8
  %23 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %24 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %23, i32 0, i32 2
  store %struct.arizona* %22, %struct.arizona** %24, align 8
  %25 = load %struct.arizona*, %struct.arizona** %4, align 8
  %26 = getelementptr inbounds %struct.arizona, %struct.arizona* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ARIZONA_HAPTICS_CONTROL_1, align 4
  %29 = load i32, i32* @ARIZONA_HAP_ACT, align 4
  %30 = load %struct.arizona*, %struct.arizona** %4, align 8
  %31 = getelementptr inbounds %struct.arizona, %struct.arizona* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %21
  %38 = load %struct.arizona*, %struct.arizona** %4, align 8
  %39 = getelementptr inbounds %struct.arizona, %struct.arizona* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %116

44:                                               ; preds = %21
  %45 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %46 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %45, i32 0, i32 1
  %47 = load i32, i32* @arizona_haptics_work, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call %struct.TYPE_9__* @devm_input_allocate_device(%struct.TYPE_10__* %50)
  %52 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %53 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %52, i32 0, i32 0
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %53, align 8
  %54 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %55 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = icmp ne %struct.TYPE_9__* %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %44
  %59 = load %struct.arizona*, %struct.arizona** %4, align 8
  %60 = getelementptr inbounds %struct.arizona, %struct.arizona* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %116

65:                                               ; preds = %44
  %66 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %67 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %70 = call i32 @input_set_drvdata(%struct.TYPE_9__* %68, %struct.arizona_haptics* %69)
  %71 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %72 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 8
  %75 = load i32, i32* @arizona_haptics_close, align 4
  %76 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %77 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* @FF_RUMBLE, align 4
  %81 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %82 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @__set_bit(i32 %80, i32 %85)
  %87 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %88 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i32, i32* @arizona_haptics_play, align 4
  %91 = call i32 @input_ff_create_memless(%struct.TYPE_9__* %89, i32* null, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %65
  %95 = load %struct.arizona*, %struct.arizona** %4, align 8
  %96 = getelementptr inbounds %struct.arizona, %struct.arizona* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i8*, ...) @dev_err(i32 %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %116

101:                                              ; preds = %65
  %102 = load %struct.arizona_haptics*, %struct.arizona_haptics** %5, align 8
  %103 = getelementptr inbounds %struct.arizona_haptics, %struct.arizona_haptics* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = call i32 @input_register_device(%struct.TYPE_9__* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.arizona*, %struct.arizona** %4, align 8
  %110 = getelementptr inbounds %struct.arizona, %struct.arizona* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %116

115:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %108, %94, %58, %37, %18
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.arizona* @dev_get_drvdata(i32) #1

declare dso_local %struct.arizona_haptics* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @devm_input_allocate_device(%struct.TYPE_10__*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_9__*, %struct.arizona_haptics*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
