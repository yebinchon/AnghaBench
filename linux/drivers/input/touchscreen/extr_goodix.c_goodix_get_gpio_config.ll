; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_get_gpio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_get_gpio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_ts_data = type { %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.TYPE_2__* }
%struct.gpio_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"AVDD28\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to get AVDD28 regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"VDDIO\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to get VDDIO regulator: %d\0A\00", align 1
@GOODIX_GPIO_INT_NAME = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to get %s GPIO: %d\0A\00", align 1
@GOODIX_GPIO_RST_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.goodix_ts_data*)* @goodix_get_gpio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goodix_get_gpio_config(%struct.goodix_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.goodix_ts_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  store %struct.goodix_ts_data* %0, %struct.goodix_ts_data** %3, align 8
  %7 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %8 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %121

14:                                               ; preds = %1
  %15 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %16 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i8* @devm_regulator_get(%struct.device* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = bitcast i8* %20 to %struct.gpio_desc*
  %22 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %23 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %22, i32 0, i32 3
  store %struct.gpio_desc* %21, %struct.gpio_desc** %23, align 8
  %24 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %25 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %24, i32 0, i32 3
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %25, align 8
  %27 = call i64 @IS_ERR(%struct.gpio_desc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %14
  %30 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %31 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %30, i32 0, i32 3
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %31, align 8
  %33 = call i32 @PTR_ERR(%struct.gpio_desc* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @EPROBE_DEFER, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %29
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %121

44:                                               ; preds = %14
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i8* @devm_regulator_get(%struct.device* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %47 = bitcast i8* %46 to %struct.gpio_desc*
  %48 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %49 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %48, i32 0, i32 2
  store %struct.gpio_desc* %47, %struct.gpio_desc** %49, align 8
  %50 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %51 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %50, i32 0, i32 2
  %52 = load %struct.gpio_desc*, %struct.gpio_desc** %51, align 8
  %53 = call i64 @IS_ERR(%struct.gpio_desc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %44
  %56 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %57 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %56, i32 0, i32 2
  %58 = load %struct.gpio_desc*, %struct.gpio_desc** %57, align 8
  %59 = call i32 @PTR_ERR(%struct.gpio_desc* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @EPROBE_DEFER, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %55
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %121

70:                                               ; preds = %44
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load i32, i32* @GOODIX_GPIO_INT_NAME, align 4
  %73 = load i32, i32* @GPIOD_IN, align 4
  %74 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %71, i32 %72, i32 %73)
  store %struct.gpio_desc* %74, %struct.gpio_desc** %6, align 8
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %76 = call i64 @IS_ERR(%struct.gpio_desc* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %70
  %79 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %80 = call i32 @PTR_ERR(%struct.gpio_desc* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @EPROBE_DEFER, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = load i32, i32* @GOODIX_GPIO_INT_NAME, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @dev_dbg(%struct.device* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %121

92:                                               ; preds = %70
  %93 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %94 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %95 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %94, i32 0, i32 1
  store %struct.gpio_desc* %93, %struct.gpio_desc** %95, align 8
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = load i32, i32* @GOODIX_GPIO_RST_NAME, align 4
  %98 = load i32, i32* @GPIOD_IN, align 4
  %99 = call %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device* %96, i32 %97, i32 %98)
  store %struct.gpio_desc* %99, %struct.gpio_desc** %6, align 8
  %100 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %101 = call i64 @IS_ERR(%struct.gpio_desc* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %92
  %104 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %105 = call i32 @PTR_ERR(%struct.gpio_desc* %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @EPROBE_DEFER, align 4
  %108 = sub nsw i32 0, %107
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = load i32, i32* @GOODIX_GPIO_RST_NAME, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @dev_dbg(%struct.device* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %103
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %121

117:                                              ; preds = %92
  %118 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %119 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %120 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %119, i32 0, i32 0
  store %struct.gpio_desc* %118, %struct.gpio_desc** %120, align 8
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %117, %115, %90, %68, %42, %11
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
