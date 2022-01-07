; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30100.c_max30100_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30100.c_max30100_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max30100_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"maxim,led-current-microamp\00", align 1
@MAX30100_REG_LED_CONFIG_24MA = common dso_local global i32 0, align 4
@MAX30100_REG_LED_CONFIG_RED_LED_SHIFT = common dso_local global i32 0, align 4
@MAX30100_REG_LED_CONFIG_50MA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no led-current-microamp set\00", align 1
@MAX30100_REG_LED_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid RED current setting %d\00", align 1
@MAX30100_REG_LED_CONFIG_LED_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"invalid IR current setting %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max30100_data*)* @max30100_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30100_led_init(%struct.max30100_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max30100_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.max30100_data* %0, %struct.max30100_data** %3, align 8
  %9 = load %struct.max30100_data*, %struct.max30100_data** %3, align 8
  %10 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = bitcast [2 x i32]* %6 to i32*
  %18 = call i32 @of_property_read_u32_array(%struct.device_node* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %17, i32 2)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load i32, i32* @MAX30100_REG_LED_CONFIG_24MA, align 4
  %23 = load i32, i32* @MAX30100_REG_LED_CONFIG_RED_LED_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @MAX30100_REG_LED_CONFIG_50MA, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_warn(%struct.device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.max30100_data*, %struct.max30100_data** %3, align 8
  %30 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MAX30100_REG_LED_CONFIG, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @regmap_write(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %83

35:                                               ; preds = %1
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @max30100_get_current_idx(i32 %37, i32* %7)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %83

47:                                               ; preds = %35
  %48 = load %struct.max30100_data*, %struct.max30100_data** %3, align 8
  %49 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MAX30100_REG_LED_CONFIG, align 4
  %52 = load i32, i32* @MAX30100_REG_LED_CONFIG_LED_MASK, align 4
  %53 = load i32, i32* @MAX30100_REG_LED_CONFIG_RED_LED_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MAX30100_REG_LED_CONFIG_RED_LED_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %54, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %83

63:                                               ; preds = %47
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @max30100_get_current_idx(i32 %65, i32* %7)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %83

75:                                               ; preds = %63
  %76 = load %struct.max30100_data*, %struct.max30100_data** %3, align 8
  %77 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MAX30100_REG_LED_CONFIG, align 4
  %80 = load i32, i32* @MAX30100_REG_LED_CONFIG_LED_MASK, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %75, %69, %61, %41, %21
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @max30100_get_current_idx(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
