; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_request_regions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_pc87427_request_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i64, i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Missing resource #%d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to request region 0x%lx-0x%lx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @pc87427_request_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pc87427_request_regions(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = load i32, i32* @IORESOURCE_IO, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %13, i32 %14, i32 %15)
  store %struct.resource* %16, %struct.resource** %6, align 8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %12
  %28 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.resource*, %struct.resource** %6, align 8
  %34 = call i32 @resource_size(%struct.resource* %33)
  %35 = load i32, i32* @DRVNAME, align 4
  %36 = call i32 @devm_request_region(i32* %29, i64 %32, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %27
  %39 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %46)
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %8

54:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %38, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @devm_request_region(i32*, i64, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
