; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl319x.c_is31fl319x_parse_child_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl319x.c_is31fl319x_parse_child_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.is31fl319x_led = type { i64, %struct.led_classdev }
%struct.led_classdev = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IS31FL319X_CURRENT_DEFAULT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"led-max-microamp\00", align 1
@IS31FL319X_CURRENT_MIN = common dso_local global i64 0, align 8
@IS31FL319X_CURRENT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.is31fl319x_led*)* @is31fl319x_parse_child_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is31fl319x_parse_child_dt(%struct.device* %0, %struct.device_node* %1, %struct.is31fl319x_led* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.is31fl319x_led*, align 8
  %8 = alloca %struct.led_classdev*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.is31fl319x_led* %2, %struct.is31fl319x_led** %7, align 8
  %10 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %7, align 8
  %11 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %10, i32 0, i32 1
  store %struct.led_classdev* %11, %struct.led_classdev** %8, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %14 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %13, i32 0, i32 1
  %15 = call i32 @of_property_read_string(%struct.device_node* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %22 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %3
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %26 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %25, i32 0, i32 0
  %27 = call i32 @of_property_read_string(%struct.device_node* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %65

37:                                               ; preds = %30, %23
  %38 = load i64, i64* @IS31FL319X_CURRENT_DEFAULT, align 8
  %39 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %7, align 8
  %40 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %7, align 8
  %43 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %42, i32 0, i32 0
  %44 = call i32 @of_property_read_u32(%struct.device_node* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %37
  %48 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %7, align 8
  %49 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IS31FL319X_CURRENT_MIN, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %65

56:                                               ; preds = %47
  %57 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %7, align 8
  %58 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @IS31FL319X_CURRENT_MAX, align 4
  %61 = call i64 @min(i64 %59, i32 %60)
  %62 = load %struct.is31fl319x_led*, %struct.is31fl319x_led** %7, align 8
  %63 = getelementptr inbounds %struct.is31fl319x_led, %struct.is31fl319x_led* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %56, %37
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %53, %35
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
