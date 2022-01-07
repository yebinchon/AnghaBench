; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ultra45_env.c_env_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ultra45_env.c_env_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.env = type { i32, i32 }

@env_group = common dso_local global i32 0, align 4
@REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @env_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @env_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.env*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.env* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.env* %5, %struct.env** %3, align 8
  %6 = load %struct.env*, %struct.env** %3, align 8
  %7 = icmp ne %struct.env* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @sysfs_remove_group(i32* %11, i32* @env_group)
  %13 = load %struct.env*, %struct.env** %3, align 8
  %14 = getelementptr inbounds %struct.env, %struct.env* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @hwmon_device_unregister(i32 %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load %struct.env*, %struct.env** %3, align 8
  %22 = getelementptr inbounds %struct.env, %struct.env* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REG_SIZE, align 4
  %25 = call i32 @of_iounmap(i32* %20, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %8, %1
  ret i32 0
}

declare dso_local %struct.env* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
