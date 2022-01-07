; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl32xx_parse_child_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl32xx_parse_child_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.is31fl32xx_led_data = type { i32, %struct.TYPE_4__*, %struct.led_classdev }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.led_classdev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Child node %pOF does not have a valid reg property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"linux,default-trigger\00", align 1
@is31fl32xx_brightness_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.is31fl32xx_led_data*)* @is31fl32xx_parse_child_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is31fl32xx_parse_child_dt(%struct.device* %0, %struct.device_node* %1, %struct.is31fl32xx_led_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.is31fl32xx_led_data*, align 8
  %8 = alloca %struct.led_classdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.is31fl32xx_led_data* %2, %struct.is31fl32xx_led_data** %7, align 8
  %11 = load %struct.is31fl32xx_led_data*, %struct.is31fl32xx_led_data** %7, align 8
  %12 = getelementptr inbounds %struct.is31fl32xx_led_data, %struct.is31fl32xx_led_data* %11, i32 0, i32 2
  store %struct.led_classdev* %12, %struct.led_classdev** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %15 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %14, i32 0, i32 2
  %16 = call i64 @of_property_read_string(%struct.device_node* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %23 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.is31fl32xx_led_data*, %struct.is31fl32xx_led_data** %7, align 8
  %35 = getelementptr inbounds %struct.is31fl32xx_led_data, %struct.is31fl32xx_led_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %33, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %32, %29, %24
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load %struct.device_node*, %struct.device_node** %6, align 8
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %59

48:                                               ; preds = %32
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.is31fl32xx_led_data*, %struct.is31fl32xx_led_data** %7, align 8
  %51 = getelementptr inbounds %struct.is31fl32xx_led_data, %struct.is31fl32xx_led_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.device_node*, %struct.device_node** %6, align 8
  %53 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %54 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %53, i32 0, i32 1
  %55 = call i64 @of_property_read_string(%struct.device_node* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %54)
  %56 = load i32, i32* @is31fl32xx_brightness_set, align 4
  %57 = load %struct.led_classdev*, %struct.led_classdev** %8, align 8
  %58 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %48, %42
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
