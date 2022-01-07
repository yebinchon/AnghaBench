; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-as3645a.c_as3645a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.as3645a = type { i32, i32, i32, i32, %struct.i2c_client* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @as3645a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3645a_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.as3645a*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call i32 @dev_fwnode(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %85

13:                                               ; preds = %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.as3645a* @devm_kzalloc(i32* %15, i32 24, i32 %16)
  store %struct.as3645a* %17, %struct.as3645a** %4, align 8
  %18 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %19 = icmp eq %struct.as3645a* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %85

23:                                               ; preds = %13
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %26 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %25, i32 0, i32 4
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 @dev_fwnode(i32* %29)
  %31 = call i32 @as3645a_parse_node(%struct.as3645a* %27, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %85

36:                                               ; preds = %23
  %37 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %38 = call i32 @as3645a_detect(%struct.as3645a* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %75

42:                                               ; preds = %36
  %43 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %44 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %43, i32 0, i32 2
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %48 = call i32 @i2c_set_clientdata(%struct.i2c_client* %46, %struct.as3645a* %47)
  %49 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %50 = call i32 @as3645a_setup(%struct.as3645a* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %71

54:                                               ; preds = %42
  %55 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %56 = call i32 @as3645a_led_class_setup(%struct.as3645a* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %71

60:                                               ; preds = %54
  %61 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %62 = call i32 @as3645a_v4l2_setup(%struct.as3645a* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %67

66:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %85

67:                                               ; preds = %65
  %68 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %69 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %68, i32 0, i32 3
  %70 = call i32 @led_classdev_flash_unregister(i32* %69)
  br label %71

71:                                               ; preds = %67, %59, %53
  %72 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %73 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %72, i32 0, i32 2
  %74 = call i32 @mutex_destroy(i32* %73)
  br label %75

75:                                               ; preds = %71, %41
  %76 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %77 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @fwnode_handle_put(i32 %78)
  %80 = load %struct.as3645a*, %struct.as3645a** %4, align 8
  %81 = getelementptr inbounds %struct.as3645a, %struct.as3645a* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @fwnode_handle_put(i32 %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %75, %66, %34, %20, %10
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @dev_fwnode(i32*) #1

declare dso_local %struct.as3645a* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @as3645a_parse_node(%struct.as3645a*, i32) #1

declare dso_local i32 @as3645a_detect(%struct.as3645a*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.as3645a*) #1

declare dso_local i32 @as3645a_setup(%struct.as3645a*) #1

declare dso_local i32 @as3645a_led_class_setup(%struct.as3645a*) #1

declare dso_local i32 @as3645a_v4l2_setup(%struct.as3645a*) #1

declare dso_local i32 @led_classdev_flash_unregister(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @fwnode_handle_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
