; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_bus.c_alloc_dax_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_bus.c_alloc_dax_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_region = type { i64, i32, i32, i32, i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"dax core failed to setup private data\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@dax_region_attribute_groups = common dso_local global i32 0, align 4
@dax_region_unregister = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dax_region* @alloc_dax_region(%struct.device* %0, i32 %1, %struct.resource* %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dax_region*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.dax_region*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.resource* %2, %struct.resource** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = call i64 @dev_get_drvdata(%struct.device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = call i32 @dev_WARN(%struct.device* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.dax_region* null, %struct.dax_region** %7, align 8
  br label %87

21:                                               ; preds = %6
  %22 = load %struct.resource*, %struct.resource** %10, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @IS_ALIGNED(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.resource*, %struct.resource** %10, align 8
  %30 = call i32 @resource_size(%struct.resource* %29)
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @IS_ALIGNED(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28, %21
  store %struct.dax_region* null, %struct.dax_region** %7, align 8
  br label %87

35:                                               ; preds = %28
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.dax_region* @kzalloc(i32 40, i32 %36)
  store %struct.dax_region* %37, %struct.dax_region** %14, align 8
  %38 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %39 = icmp ne %struct.dax_region* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store %struct.dax_region* null, %struct.dax_region** %7, align 8
  br label %87

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %44 = call i32 @dev_set_drvdata(%struct.device* %42, %struct.dax_region* %43)
  %45 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %46 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %45, i32 0, i32 6
  %47 = load %struct.resource*, %struct.resource** %10, align 8
  %48 = call i32 @memcpy(i32* %46, %struct.resource* %47, i32 4)
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %51 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %53 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %52, i32 0, i32 4
  %54 = call i32 @kref_init(i32* %53)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %57 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %60 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.device*, %struct.device** %8, align 8
  %62 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %63 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %62, i32 0, i32 5
  store %struct.device* %61, %struct.device** %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %66 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.device*, %struct.device** %8, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load i32, i32* @dax_region_attribute_groups, align 4
  %70 = call i64 @sysfs_create_groups(i32* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %41
  %73 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %74 = call i32 @kfree(%struct.dax_region* %73)
  store %struct.dax_region* null, %struct.dax_region** %7, align 8
  br label %87

75:                                               ; preds = %41
  %76 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %77 = getelementptr inbounds %struct.dax_region, %struct.dax_region* %76, i32 0, i32 4
  %78 = call i32 @kref_get(i32* %77)
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = load i32, i32* @dax_region_unregister, align 4
  %81 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  %82 = call i64 @devm_add_action_or_reset(%struct.device* %79, i32 %80, %struct.dax_region* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store %struct.dax_region* null, %struct.dax_region** %7, align 8
  br label %87

85:                                               ; preds = %75
  %86 = load %struct.dax_region*, %struct.dax_region** %14, align 8
  store %struct.dax_region* %86, %struct.dax_region** %7, align 8
  br label %87

87:                                               ; preds = %85, %84, %72, %40, %34, %18
  %88 = load %struct.dax_region*, %struct.dax_region** %7, align 8
  ret %struct.dax_region* %88
}

declare dso_local i64 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_WARN(%struct.device*, i8*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.dax_region* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.dax_region*) #1

declare dso_local i32 @memcpy(i32*, %struct.resource*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i64 @sysfs_create_groups(i32*, i32) #1

declare dso_local i32 @kfree(%struct.dax_region*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @devm_add_action_or_reset(%struct.device*, i32, %struct.dax_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
