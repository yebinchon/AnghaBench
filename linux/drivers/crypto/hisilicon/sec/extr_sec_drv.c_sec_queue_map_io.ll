; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_map_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_map_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to get queue %d memory resource\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_queue*)* @sec_queue_map_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_queue_map_io(%struct.sec_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sec_queue*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.sec_queue* %0, %struct.sec_queue** %3, align 8
  %6 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %7 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @to_platform_device(%struct.device* %11)
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %15 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 2, %16
  %18 = call %struct.resource* @platform_get_resource(i32 %12, i32 %13, i32 %17)
  store %struct.resource* %18, %struct.resource** %5, align 8
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = icmp ne %struct.resource* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %24 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %46

29:                                               ; preds = %1
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = call i32 @resource_size(%struct.resource* %33)
  %35 = call i32 @ioremap(i32 %32, i32 %34)
  %36 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %37 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %39 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42, %21
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.resource* @platform_get_resource(i32, i32, i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
