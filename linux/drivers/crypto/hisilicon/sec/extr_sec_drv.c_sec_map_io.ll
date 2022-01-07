; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_map_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_map_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_dev_info = type { i32, i32* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@SEC_NUM_ADDR_REGIONS = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Memory resource %d not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Memory resource %d could not be remapped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_dev_info*, %struct.platform_device*)* @sec_map_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_map_io(%struct.sec_dev_info* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sec_dev_info*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.sec_dev_info* %0, %struct.sec_dev_info** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %60, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @SEC_NUM_ADDR_REGIONS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %63

12:                                               ; preds = %8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = load i32, i32* @IORESOURCE_MEM, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %13, i32 %14, i32 %15)
  store %struct.resource* %16, %struct.resource** %6, align 8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %21 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %12
  %28 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %29 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = call i32 @resource_size(%struct.resource* %34)
  %36 = call i32 @devm_ioremap(i32 %30, i32 %33, i32 %35)
  %37 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %38 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %44 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %27
  %52 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %53 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %8

63:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %51, %19
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @devm_ioremap(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
