; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_parse_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3601x.c_lm3601x_parse_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3601x_led = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fwnode_handle = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"No LED Child node\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"reg DT property missing\0A\00", align 1
@LM3601X_LED_TORCH = common dso_local global i32 0, align 4
@LM3601X_LED_IR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Invalid led mode requested\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"led-max-microamp\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"led-max-microamp DT property missing\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"flash-max-microamp\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"flash-max-microamp DT property missing\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"flash-max-timeout-us\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"flash-max-timeout-us DT property missing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3601x_led*, %struct.fwnode_handle**)* @lm3601x_parse_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3601x_parse_node(%struct.lm3601x_led* %0, %struct.fwnode_handle** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lm3601x_led*, align 8
  %5 = alloca %struct.fwnode_handle**, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i32, align 4
  store %struct.lm3601x_led* %0, %struct.lm3601x_led** %4, align 8
  store %struct.fwnode_handle** %1, %struct.fwnode_handle*** %5, align 8
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %6, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %11 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %15 = call %struct.fwnode_handle* @device_get_next_child_node(i32* %13, %struct.fwnode_handle* %14)
  store %struct.fwnode_handle* %15, %struct.fwnode_handle** %6, align 8
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %17 = icmp ne %struct.fwnode_handle* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %20 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %104

25:                                               ; preds = %2
  %26 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %27 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %28 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %27, i32 0, i32 4
  %29 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %34 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %100

38:                                               ; preds = %25
  %39 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %40 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @LM3601X_LED_TORCH, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %46 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LM3601X_LED_IR, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44, %38
  %51 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %52 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @dev_warn(i32* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %100

58:                                               ; preds = %44
  %59 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %60 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %61 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %60, i32 0, i32 3
  %62 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %67 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %100

71:                                               ; preds = %58
  %72 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %73 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %74 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %73, i32 0, i32 2
  %75 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %80 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @dev_warn(i32* %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %100

84:                                               ; preds = %71
  %85 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %86 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %87 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %86, i32 0, i32 1
  %88 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.lm3601x_led*, %struct.lm3601x_led** %4, align 8
  %93 = getelementptr inbounds %struct.lm3601x_led, %struct.lm3601x_led* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = call i32 @dev_warn(i32* %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %100

97:                                               ; preds = %84
  %98 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %99 = load %struct.fwnode_handle**, %struct.fwnode_handle*** %5, align 8
  store %struct.fwnode_handle* %98, %struct.fwnode_handle** %99, align 8
  br label %100

100:                                              ; preds = %97, %91, %78, %65, %50, %32
  %101 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %102 = call i32 @fwnode_handle_put(%struct.fwnode_handle* %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %18
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.fwnode_handle* @device_get_next_child_node(i32*, %struct.fwnode_handle*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @fwnode_handle_put(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
