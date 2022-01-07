; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_mfd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wm97xx-core.c_wm97xx_mfd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wm97xx = type { i32, i32* }
%struct.wm97xx_platform_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm97xx_mfd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_mfd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wm97xx*, align 8
  %5 = alloca %struct.wm97xx_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.wm97xx_platform_data* @dev_get_platdata(i32* %8)
  store %struct.wm97xx_platform_data* %9, %struct.wm97xx_platform_data** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wm97xx* @devm_kzalloc(i32* %11, i32 16, i32 %12)
  store %struct.wm97xx* %13, %struct.wm97xx** %4, align 8
  %14 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %15 = icmp ne %struct.wm97xx* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %50

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %23 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.wm97xx_platform_data*, %struct.wm97xx_platform_data** %5, align 8
  %25 = getelementptr inbounds %struct.wm97xx_platform_data, %struct.wm97xx_platform_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %28 = getelementptr inbounds %struct.wm97xx, %struct.wm97xx* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %30 = call i32 @_wm97xx_probe(%struct.wm97xx* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %50

35:                                               ; preds = %19
  %36 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %37 = load %struct.wm97xx_platform_data*, %struct.wm97xx_platform_data** %5, align 8
  %38 = getelementptr inbounds %struct.wm97xx_platform_data, %struct.wm97xx_platform_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wm97xx_add_battery(%struct.wm97xx* %36, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %43
  %47 = load %struct.wm97xx*, %struct.wm97xx** %4, align 8
  %48 = call i32 @wm97xx_unregister_touch(%struct.wm97xx* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %44, %33, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.wm97xx_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.wm97xx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @_wm97xx_probe(%struct.wm97xx*) #1

declare dso_local i32 @wm97xx_add_battery(%struct.wm97xx*, i32) #1

declare dso_local i32 @wm97xx_unregister_touch(%struct.wm97xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
