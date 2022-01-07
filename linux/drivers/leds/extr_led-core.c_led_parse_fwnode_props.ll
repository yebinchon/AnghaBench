; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_parse_fwnode_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-core.c_led_parse_fwnode_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.led_properties = type { i64, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Error parsing 'label' property (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Error parsing 'color' property (%d)\0A\00", align 1
@LED_COLOR_ID_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"LED color identifier out of range\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Error parsing 'function' property (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"function-enumerator\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Error parsing 'function-enumerator' property (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.fwnode_handle*, %struct.led_properties*)* @led_parse_fwnode_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_parse_fwnode_props(%struct.device* %0, %struct.fwnode_handle* %1, %struct.led_properties* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.led_properties*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %5, align 8
  store %struct.led_properties* %2, %struct.led_properties** %6, align 8
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %9 = icmp ne %struct.fwnode_handle* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %91

11:                                               ; preds = %3
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %13 = call i64 @fwnode_property_present(%struct.fwnode_handle* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %17 = load %struct.led_properties*, %struct.led_properties** %6, align 8
  %18 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %17, i32 0, i32 5
  %19 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %15
  br label %91

27:                                               ; preds = %11
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %29 = call i64 @fwnode_property_present(%struct.fwnode_handle* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %33 = load %struct.led_properties*, %struct.led_properties** %6, align 8
  %34 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %33, i32 0, i32 0
  %35 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %55

42:                                               ; preds = %31
  %43 = load %struct.led_properties*, %struct.led_properties** %6, align 8
  %44 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LED_COLOR_ID_MAX, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %54

51:                                               ; preds = %42
  %52 = load %struct.led_properties*, %struct.led_properties** %6, align 8
  %53 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %38
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %58 = call i64 @fwnode_property_present(%struct.fwnode_handle* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %91

61:                                               ; preds = %56
  %62 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %63 = load %struct.led_properties*, %struct.led_properties** %6, align 8
  %64 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %63, i32 0, i32 4
  %65 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %74 = call i64 @fwnode_property_present(%struct.fwnode_handle* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %91

77:                                               ; preds = %72
  %78 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %79 = load %struct.led_properties*, %struct.led_properties** %6, align 8
  %80 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %79, i32 0, i32 2
  %81 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i64* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  br label %91

88:                                               ; preds = %77
  %89 = load %struct.led_properties*, %struct.led_properties** %6, align 8
  %90 = getelementptr inbounds %struct.led_properties, %struct.led_properties* %89, i32 0, i32 3
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %10, %26, %60, %76, %88, %84
  ret void
}

declare dso_local i64 @fwnode_property_present(%struct.fwnode_handle*, i8*) #1

declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
