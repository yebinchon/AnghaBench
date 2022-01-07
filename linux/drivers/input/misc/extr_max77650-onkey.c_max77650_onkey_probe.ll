; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77650-onkey.c_max77650_onkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77650-onkey.c_max77650_onkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device* }
%struct.max77650_onkey = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.regmap = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"linux,code\00", align 1
@KEY_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"maxim,onkey-slide\00", align 1
@MAX77650_ONKEY_MODE_SLIDE = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@MAX77650_ONKEY_MODE_PUSH = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@MAX77650_REG_CNFG_GLBL = common dso_local global i32 0, align 4
@MAX77650_ONKEY_MODE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"nEN_F\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nEN_R\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"max77650_onkey\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"max77650_onkey/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@max77650_onkey_falling = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"onkey-down\00", align 1
@max77650_onkey_rising = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"onkey-up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77650_onkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_onkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max77650_onkey*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.regmap*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load %struct.device*, %struct.device** %10, align 8
  %19 = call %struct.regmap* @dev_get_regmap(%struct.device* %18, i32* null)
  store %struct.regmap* %19, %struct.regmap** %11, align 8
  %20 = load %struct.regmap*, %struct.regmap** %11, align 8
  %21 = icmp ne %struct.regmap* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %140

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %9, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.max77650_onkey* @devm_kzalloc(%struct.device* %26, i32 16, i32 %27)
  store %struct.max77650_onkey* %28, %struct.max77650_onkey** %8, align 8
  %29 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %30 = icmp ne %struct.max77650_onkey* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %140

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %9, align 8
  %36 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %37 = getelementptr inbounds %struct.max77650_onkey, %struct.max77650_onkey* %36, i32 0, i32 1
  %38 = call i32 @device_property_read_u32(%struct.device* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @KEY_POWER, align 4
  %43 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %44 = getelementptr inbounds %struct.max77650_onkey, %struct.max77650_onkey* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.device*, %struct.device** %9, align 8
  %47 = call i64 @device_property_read_bool(%struct.device* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @MAX77650_ONKEY_MODE_SLIDE, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @EV_SW, align 4
  store i32 %51, i32* %12, align 4
  br label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @MAX77650_ONKEY_MODE_PUSH, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @EV_KEY, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.regmap*, %struct.regmap** %11, align 8
  %57 = load i32, i32* @MAX77650_REG_CNFG_GLBL, align 4
  %58 = load i32, i32* @MAX77650_ONKEY_MODE_MASK, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @regmap_update_bits(%struct.regmap* %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %140

65:                                               ; preds = %55
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = call i32 @platform_get_irq_byname(%struct.platform_device* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %140

72:                                               ; preds = %65
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = call i32 @platform_get_irq_byname(%struct.platform_device* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %140

79:                                               ; preds = %72
  %80 = load %struct.device*, %struct.device** %9, align 8
  %81 = call %struct.TYPE_6__* @devm_input_allocate_device(%struct.device* %80)
  %82 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %83 = getelementptr inbounds %struct.max77650_onkey, %struct.max77650_onkey* %82, i32 0, i32 0
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %83, align 8
  %84 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %85 = getelementptr inbounds %struct.max77650_onkey, %struct.max77650_onkey* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %140

91:                                               ; preds = %79
  %92 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %93 = getelementptr inbounds %struct.max77650_onkey, %struct.max77650_onkey* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %95, align 8
  %96 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %97 = getelementptr inbounds %struct.max77650_onkey, %struct.max77650_onkey* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %99, align 8
  %100 = load i32, i32* @BUS_I2C, align 4
  %101 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %102 = getelementptr inbounds %struct.max77650_onkey, %struct.max77650_onkey* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 8
  %106 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %107 = getelementptr inbounds %struct.max77650_onkey, %struct.max77650_onkey* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %111 = getelementptr inbounds %struct.max77650_onkey, %struct.max77650_onkey* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @input_set_capability(%struct.TYPE_6__* %108, i32 %109, i32 %112)
  %114 = load %struct.device*, %struct.device** %9, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @max77650_onkey_falling, align 4
  %117 = load i32, i32* @IRQF_ONESHOT, align 4
  %118 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %119 = call i32 @devm_request_any_context_irq(%struct.device* %114, i32 %115, i32 %116, i32 %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), %struct.max77650_onkey* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %91
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %140

124:                                              ; preds = %91
  %125 = load %struct.device*, %struct.device** %9, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @max77650_onkey_rising, align 4
  %128 = load i32, i32* @IRQF_ONESHOT, align 4
  %129 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %130 = call i32 @devm_request_any_context_irq(%struct.device* %125, i32 %126, i32 %127, i32 %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %struct.max77650_onkey* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %2, align 4
  br label %140

135:                                              ; preds = %124
  %136 = load %struct.max77650_onkey*, %struct.max77650_onkey** %8, align 8
  %137 = getelementptr inbounds %struct.max77650_onkey, %struct.max77650_onkey* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = call i32 @input_register_device(%struct.TYPE_6__* %138)
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %135, %133, %122, %88, %77, %70, %63, %31, %22
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.regmap* @dev_get_regmap(%struct.device*, i32*) #1

declare dso_local %struct.max77650_onkey* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local %struct.TYPE_6__* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.device*, i32, i32, i32, i8*, %struct.max77650_onkey*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
