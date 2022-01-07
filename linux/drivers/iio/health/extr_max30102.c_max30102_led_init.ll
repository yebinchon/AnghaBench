; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max30102_data = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"maxim,red-led-current-microamp\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"no red-led-current-microamp set\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid RED LED current setting %d\0A\00", align 1
@MAX30102_REG_RED_LED_CONFIG = common dso_local global i32 0, align 4
@max30105 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"maxim,green-led-current-microamp\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"no green-led-current-microamp set\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"invalid green LED current setting %d\0A\00", align 1
@MAX30105_REG_GREEN_LED_CONFIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"maxim,ir-led-current-microamp\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"no ir-led-current-microamp set\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"invalid IR LED current setting %d\0A\00", align 1
@MAX30102_REG_IR_LED_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max30102_data*)* @max30102_led_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30102_led_init(%struct.max30102_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max30102_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.max30102_data* %0, %struct.max30102_data** %3, align 8
  %9 = load %struct.max30102_data*, %struct.max30102_data** %3, align 8
  %10 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_info(%struct.device* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 7000, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @max30102_get_current_idx(i32 %24, i32* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %105

33:                                               ; preds = %23
  %34 = load %struct.max30102_data*, %struct.max30102_data** %3, align 8
  %35 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MAX30102_REG_RED_LED_CONFIG, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @regmap_write(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %105

44:                                               ; preds = %33
  %45 = load %struct.max30102_data*, %struct.max30102_data** %3, align 8
  %46 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @max30105, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = call i32 @of_property_read_u32(%struct.device_node* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32 @dev_info(%struct.device* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 7000, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @max30102_get_current_idx(i32 %59, i32* %7)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %105

68:                                               ; preds = %58
  %69 = load %struct.max30102_data*, %struct.max30102_data** %3, align 8
  %70 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MAX30105_REG_GREEN_LED_CONFIG, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @regmap_write(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %105

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %44
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = call i32 @of_property_read_u32(%struct.device_node* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32* %6)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_info(%struct.device* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32 7000, i32* %6, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @max30102_get_current_idx(i32 %89, i32* %7)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %105

98:                                               ; preds = %88
  %99 = load %struct.max30102_data*, %struct.max30102_data** %3, align 8
  %100 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MAX30102_REG_IR_LED_CONFIG, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @regmap_write(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %98, %93, %77, %63, %42, %28
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @max30102_get_current_idx(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
