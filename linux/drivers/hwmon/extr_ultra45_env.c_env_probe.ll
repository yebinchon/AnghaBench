; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ultra45_env.c_env_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ultra45_env.c_env_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.env = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pic16f747\00", align 1
@env_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @env_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @env_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.env*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 1
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.env* @devm_kzalloc(%struct.TYPE_3__* %6, i32 12, i32 %7)
  store %struct.env* %8, %struct.env** %3, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %4, align 4
  %11 = load %struct.env*, %struct.env** %3, align 8
  %12 = icmp ne %struct.env* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.env*, %struct.env** %3, align 8
  %16 = getelementptr inbounds %struct.env, %struct.env* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* @REG_SIZE, align 4
  %23 = call i32 @of_ioremap(i32* %21, i32 0, i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.env*, %struct.env** %3, align 8
  %25 = getelementptr inbounds %struct.env, %struct.env* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.env*, %struct.env** %3, align 8
  %27 = getelementptr inbounds %struct.env, %struct.env* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %14
  br label %59

31:                                               ; preds = %14
  %32 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @sysfs_create_group(i32* %34, i32* @env_group)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %66

39:                                               ; preds = %31
  %40 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 1
  %42 = call i32 @hwmon_device_register(%struct.TYPE_3__* %41)
  %43 = load %struct.env*, %struct.env** %3, align 8
  %44 = getelementptr inbounds %struct.env, %struct.env* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.env*, %struct.env** %3, align 8
  %46 = getelementptr inbounds %struct.env, %struct.env* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.env*, %struct.env** %3, align 8
  %52 = getelementptr inbounds %struct.env, %struct.env* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %61

55:                                               ; preds = %39
  %56 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %57 = load %struct.env*, %struct.env** %3, align 8
  %58 = call i32 @platform_set_drvdata(%struct.platform_device* %56, %struct.env* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %66, %55, %30, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60

61:                                               ; preds = %50
  %62 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @sysfs_remove_group(i32* %64, i32* @env_group)
  br label %66

66:                                               ; preds = %61, %38
  %67 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load %struct.env*, %struct.env** %3, align 8
  %72 = getelementptr inbounds %struct.env, %struct.env* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @REG_SIZE, align 4
  %75 = call i32 @of_iounmap(i32* %70, i32 %73, i32 %74)
  br label %59
}

declare dso_local %struct.env* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_ioremap(i32*, i32, i32, i8*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.env*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
