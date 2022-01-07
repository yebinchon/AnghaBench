; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_alloc_device_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_alloc_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_dev_list = type { i32, i32, %struct.fwnode_handle** }
%struct.fwnode_handle = type { i32 }
%struct.device = type { i32 }

@coresight_mutex = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @coresight_alloc_device_name(%struct.coresight_dev_list* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.coresight_dev_list*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fwnode_handle**, align 8
  store %struct.coresight_dev_list* %0, %struct.coresight_dev_list** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  store i8* null, i8** %6, align 8
  %8 = call i32 @mutex_lock(i32* @coresight_mutex)
  %9 = load %struct.coresight_dev_list*, %struct.coresight_dev_list** %3, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %10)
  %12 = call i32 @coresight_search_device_idx(%struct.coresight_dev_list* %9, %struct.fwnode_handle* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %2
  %16 = load %struct.coresight_dev_list*, %struct.coresight_dev_list** %3, align 8
  %17 = getelementptr inbounds %struct.coresight_dev_list, %struct.coresight_dev_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.coresight_dev_list*, %struct.coresight_dev_list** %3, align 8
  %20 = getelementptr inbounds %struct.coresight_dev_list, %struct.coresight_dev_list* %19, i32 0, i32 2
  %21 = load %struct.fwnode_handle**, %struct.fwnode_handle*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.fwnode_handle** @krealloc(%struct.fwnode_handle** %21, i32 %26, i32 %27)
  store %struct.fwnode_handle** %28, %struct.fwnode_handle*** %7, align 8
  %29 = load %struct.fwnode_handle**, %struct.fwnode_handle*** %7, align 8
  %30 = call i64 @ZERO_OR_NULL_PTR(%struct.fwnode_handle** %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %57

35:                                               ; preds = %15
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call %struct.fwnode_handle* @dev_fwnode(%struct.device* %36)
  %38 = load %struct.fwnode_handle**, %struct.fwnode_handle*** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.fwnode_handle*, %struct.fwnode_handle** %38, i64 %40
  store %struct.fwnode_handle* %37, %struct.fwnode_handle** %41, align 8
  %42 = load %struct.fwnode_handle**, %struct.fwnode_handle*** %7, align 8
  %43 = load %struct.coresight_dev_list*, %struct.coresight_dev_list** %3, align 8
  %44 = getelementptr inbounds %struct.coresight_dev_list, %struct.coresight_dev_list* %43, i32 0, i32 2
  store %struct.fwnode_handle** %42, %struct.fwnode_handle*** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.coresight_dev_list*, %struct.coresight_dev_list** %3, align 8
  %48 = getelementptr inbounds %struct.coresight_dev_list, %struct.coresight_dev_list* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %35, %2
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load %struct.coresight_dev_list*, %struct.coresight_dev_list** %3, align 8
  %53 = getelementptr inbounds %struct.coresight_dev_list, %struct.coresight_dev_list* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i8* @devm_kasprintf(%struct.device* %50, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %49, %32
  %58 = call i32 @mutex_unlock(i32* @coresight_mutex)
  %59 = load i8*, i8** %6, align 8
  ret i8* %59
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @coresight_search_device_idx(%struct.coresight_dev_list*, %struct.fwnode_handle*) #1

declare dso_local %struct.fwnode_handle* @dev_fwnode(%struct.device*) #1

declare dso_local %struct.fwnode_handle** @krealloc(%struct.fwnode_handle**, i32, i32) #1

declare dso_local i64 @ZERO_OR_NULL_PTR(%struct.fwnode_handle**) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
