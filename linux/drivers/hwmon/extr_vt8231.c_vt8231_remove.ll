; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_vt8231_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_vt8231_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vt8231_data = type { i32 }

@vt8231_group_volts = common dso_local global i32* null, align 8
@vt8231_group_temps = common dso_local global i32* null, align 8
@vt8231_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vt8231_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8231_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.vt8231_data*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.vt8231_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.vt8231_data* %6, %struct.vt8231_data** %3, align 8
  %7 = load %struct.vt8231_data*, %struct.vt8231_data** %3, align 8
  %8 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hwmon_device_unregister(i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** @vt8231_group_volts, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** @vt8231_group_volts, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @sysfs_remove_group(i32* %19, i32* %23)
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %11

28:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** @vt8231_group_temps, align 8
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** @vt8231_group_temps, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @sysfs_remove_group(i32* %37, i32* %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @sysfs_remove_group(i32* %49, i32* @vt8231_group)
  ret i32 0
}

declare dso_local %struct.vt8231_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
