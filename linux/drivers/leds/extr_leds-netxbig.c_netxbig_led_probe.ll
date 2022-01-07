; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-netxbig.c_netxbig_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-netxbig.c_netxbig_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.netxbig_led_platform_data = type { i32, i32*, i32 }
%struct.netxbig_led_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @netxbig_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxbig_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.netxbig_led_platform_data*, align 8
  %5 = alloca %struct.netxbig_led_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.netxbig_led_platform_data* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.netxbig_led_platform_data* %11, %struct.netxbig_led_platform_data** %4, align 8
  %12 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %4, align 8
  %13 = icmp ne %struct.netxbig_led_platform_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %79

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %4, align 8
  %21 = call i32 @netxbig_leds_get_of_pdata(i32* %19, %struct.netxbig_led_platform_data* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %79

26:                                               ; preds = %17
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.netxbig_led_data* @devm_kcalloc(i32* %28, i32 %31, i32 4, i32 %32)
  store %struct.netxbig_led_data* %33, %struct.netxbig_led_data** %5, align 8
  %34 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %5, align 8
  %35 = icmp ne %struct.netxbig_led_data* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %79

39:                                               ; preds = %26
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %4, align 8
  %42 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @gpio_ext_init(%struct.platform_device* %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %79

49:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %75, %49
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %4, align 8
  %53 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %4, align 8
  %59 = load %struct.netxbig_led_data*, %struct.netxbig_led_data** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.netxbig_led_data, %struct.netxbig_led_data* %59, i64 %61
  %63 = load %struct.netxbig_led_platform_data*, %struct.netxbig_led_platform_data** %4, align 8
  %64 = getelementptr inbounds %struct.netxbig_led_platform_data, %struct.netxbig_led_platform_data* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @create_netxbig_led(%struct.platform_device* %57, %struct.netxbig_led_platform_data* %58, %struct.netxbig_led_data* %62, i32* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %50

78:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %72, %47, %36, %24, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.netxbig_led_platform_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @netxbig_leds_get_of_pdata(i32*, %struct.netxbig_led_platform_data*) #1

declare dso_local %struct.netxbig_led_data* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @gpio_ext_init(%struct.platform_device*, i32) #1

declare dso_local i32 @create_netxbig_led(%struct.platform_device*, %struct.netxbig_led_platform_data*, %struct.netxbig_led_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
