; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c_hwmon = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c_hwmon_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hwmon_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s3c_hwmon*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.s3c_hwmon* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.s3c_hwmon* %6, %struct.s3c_hwmon** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i32 @s3c_hwmon_remove_raw(i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %3, align 8
  %13 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %10
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %3, align 8
  %21 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @s3c_hwmon_remove_attr(i32* %19, i32* %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %3, align 8
  %32 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hwmon_device_unregister(i32 %33)
  %35 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %3, align 8
  %36 = getelementptr inbounds %struct.s3c_hwmon, %struct.s3c_hwmon* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @s3c_adc_release(i32 %37)
  ret i32 0
}

declare dso_local %struct.s3c_hwmon* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @s3c_hwmon_remove_raw(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @s3c_hwmon_remove_attr(i32*, i32*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @s3c_adc_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
