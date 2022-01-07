; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_via-cputemp.c_via_cputemp_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_via-cputemp.c_via_cputemp_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pdev_entry = type { i32, i32, %struct.platform_device* }

@DRVNAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Device allocation failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Device addition failed (%d)\0A\00", align 1
@pdev_list_mutex = common dso_local global i32 0, align 4
@pdev_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @via_cputemp_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_cputemp_online(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.pdev_entry*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @DRVNAME, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.platform_device* @platform_device_alloc(i32 %7, i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = icmp ne %struct.platform_device* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %50

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.pdev_entry* @kzalloc(i32 16, i32 %17)
  store %struct.pdev_entry* %18, %struct.pdev_entry** %6, align 8
  %19 = load %struct.pdev_entry*, %struct.pdev_entry** %6, align 8
  %20 = icmp ne %struct.pdev_entry* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %16
  %25 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %26 = call i32 @platform_device_add(%struct.platform_device* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %44

32:                                               ; preds = %24
  %33 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %34 = load %struct.pdev_entry*, %struct.pdev_entry** %6, align 8
  %35 = getelementptr inbounds %struct.pdev_entry, %struct.pdev_entry* %34, i32 0, i32 2
  store %struct.platform_device* %33, %struct.platform_device** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.pdev_entry*, %struct.pdev_entry** %6, align 8
  %38 = getelementptr inbounds %struct.pdev_entry, %struct.pdev_entry* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = call i32 @mutex_lock(i32* @pdev_list_mutex)
  %40 = load %struct.pdev_entry*, %struct.pdev_entry** %6, align 8
  %41 = getelementptr inbounds %struct.pdev_entry, %struct.pdev_entry* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %41, i32* @pdev_list)
  %43 = call i32 @mutex_unlock(i32* @pdev_list_mutex)
  store i32 0, i32* %2, align 4
  br label %52

44:                                               ; preds = %29
  %45 = load %struct.pdev_entry*, %struct.pdev_entry** %6, align 8
  %46 = call i32 @kfree(%struct.pdev_entry* %45)
  br label %47

47:                                               ; preds = %44, %21
  %48 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %49 = call i32 @platform_device_put(%struct.platform_device* %48)
  br label %50

50:                                               ; preds = %47, %12
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %32
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.pdev_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.pdev_entry*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
