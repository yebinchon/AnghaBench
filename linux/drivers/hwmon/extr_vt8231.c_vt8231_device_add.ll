; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_vt8231_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_vt8231_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i16, i8*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"vt8231\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@VT8231_EXTENT = common dso_local global i32 0, align 4
@pdev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Device allocation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Device resource addition failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Device addition failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @vt8231_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8231_device_add(i16 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca %struct.resource, align 8
  %5 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  %6 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 0
  %7 = load i16, i16* %3, align 2
  store i16 %7, i16* %6, align 8
  %8 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 2
  %10 = load i32, i32* @IORESOURCE_IO, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 3
  %12 = load i16, i16* %3, align 2
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* @VT8231_EXTENT, align 4
  %15 = add nsw i32 %13, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = call i32 @acpi_check_resource_conflict(%struct.resource* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %50

21:                                               ; preds = %1
  %22 = load i16, i16* %3, align 2
  %23 = call i32 @platform_device_alloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i16 zeroext %22)
  store i32 %23, i32* @pdev, align 4
  %24 = load i32, i32* @pdev, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %50

30:                                               ; preds = %21
  %31 = load i32, i32* @pdev, align 4
  %32 = call i32 @platform_device_add_resources(i32 %31, %struct.resource* %4, i32 1)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %47

38:                                               ; preds = %30
  %39 = load i32, i32* @pdev, align 4
  %40 = call i32 @platform_device_add(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  br label %47

46:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %52

47:                                               ; preds = %43, %35
  %48 = load i32, i32* @pdev, align 4
  %49 = call i32 @platform_device_put(i32 %48)
  br label %50

50:                                               ; preds = %47, %26, %20
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @acpi_check_resource_conflict(%struct.resource*) #1

declare dso_local i32 @platform_device_alloc(i8*, i16 zeroext) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @platform_device_add_resources(i32, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add(i32) #1

declare dso_local i32 @platform_device_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
