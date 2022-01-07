; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxreg.c_mlxreg_led_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxreg.c_mlxreg_led_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mlxreg_core_platform_data = type { i32 }
%struct.mlxreg_led_priv_data = type { %struct.mlxreg_core_platform_data*, %struct.platform_device*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to get platform data.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mlxreg_led_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_led_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mlxreg_core_platform_data*, align 8
  %5 = alloca %struct.mlxreg_led_priv_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.mlxreg_core_platform_data* @dev_get_platdata(i32* %7)
  store %struct.mlxreg_core_platform_data* %8, %struct.mlxreg_core_platform_data** %4, align 8
  %9 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %10 = icmp ne %struct.mlxreg_core_platform_data* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %39

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mlxreg_led_priv_data* @devm_kzalloc(i32* %19, i32 24, i32 %20)
  store %struct.mlxreg_led_priv_data* %21, %struct.mlxreg_led_priv_data** %5, align 8
  %22 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %5, align 8
  %23 = icmp ne %struct.mlxreg_led_priv_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %39

27:                                               ; preds = %17
  %28 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %5, align 8
  %29 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %28, i32 0, i32 2
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %5, align 8
  %33 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %32, i32 0, i32 1
  store %struct.platform_device* %31, %struct.platform_device** %33, align 8
  %34 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %4, align 8
  %35 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %5, align 8
  %36 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %35, i32 0, i32 0
  store %struct.mlxreg_core_platform_data* %34, %struct.mlxreg_core_platform_data** %36, align 8
  %37 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %5, align 8
  %38 = call i32 @mlxreg_led_config(%struct.mlxreg_led_priv_data* %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %27, %24, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.mlxreg_core_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.mlxreg_led_priv_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mlxreg_led_config(%struct.mlxreg_led_priv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
