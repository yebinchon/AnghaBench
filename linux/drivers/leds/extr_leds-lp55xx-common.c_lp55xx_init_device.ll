; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp55xx-common.c_lp55xx_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { %struct.lp55xx_device_config*, %struct.lp55xx_platform_data*, %struct.TYPE_2__* }
%struct.lp55xx_device_config = type { i32 }
%struct.lp55xx_platform_data = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIOF_DIR_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"lp5523_enable\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"could not acquire enable gpio (err=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"device detection err: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"post init device err: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lp55xx_init_device(%struct.lp55xx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp55xx_chip*, align 8
  %4 = alloca %struct.lp55xx_platform_data*, align 8
  %5 = alloca %struct.lp55xx_device_config*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %3, align 8
  %8 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %9 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %13 = icmp ne %struct.lp55xx_chip* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %18 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %17, i32 0, i32 1
  %19 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %18, align 8
  store %struct.lp55xx_platform_data* %19, %struct.lp55xx_platform_data** %4, align 8
  %20 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %21 = getelementptr inbounds %struct.lp55xx_chip, %struct.lp55xx_chip* %20, i32 0, i32 0
  %22 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %21, align 8
  store %struct.lp55xx_device_config* %22, %struct.lp55xx_device_config** %5, align 8
  %23 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %4, align 8
  %24 = icmp ne %struct.lp55xx_platform_data* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.lp55xx_device_config*, %struct.lp55xx_device_config** %5, align 8
  %27 = icmp ne %struct.lp55xx_device_config* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %88

31:                                               ; preds = %25
  %32 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %4, align 8
  %33 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @gpio_is_valid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %31
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %4, align 8
  %40 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GPIOF_DIR_OUT, align 4
  %43 = call i32 @devm_gpio_request_one(%struct.device* %38, i32 %41, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %86

50:                                               ; preds = %37
  %51 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %4, align 8
  %52 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gpio_set_value(i32 %53, i32 0)
  %55 = call i32 @usleep_range(i32 1000, i32 2000)
  %56 = load %struct.lp55xx_platform_data*, %struct.lp55xx_platform_data** %4, align 8
  %57 = getelementptr inbounds %struct.lp55xx_platform_data, %struct.lp55xx_platform_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gpio_set_value(i32 %58, i32 1)
  %60 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %61

61:                                               ; preds = %50, %31
  %62 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %63 = call i32 @lp55xx_reset_device(%struct.lp55xx_chip* %62)
  %64 = call i32 @usleep_range(i32 10000, i32 20000)
  %65 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %66 = call i32 @lp55xx_detect_device(%struct.lp55xx_chip* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %86

73:                                               ; preds = %61
  %74 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %75 = call i32 @lp55xx_post_init_device(%struct.lp55xx_chip* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %83

82:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %88

83:                                               ; preds = %78
  %84 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %3, align 8
  %85 = call i32 @lp55xx_deinit_device(%struct.lp55xx_chip* %84)
  br label %86

86:                                               ; preds = %83, %69, %46
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %82, %28
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @lp55xx_reset_device(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_detect_device(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_post_init_device(%struct.lp55xx_chip*) #1

declare dso_local i32 @lp55xx_deinit_device(%struct.lp55xx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
