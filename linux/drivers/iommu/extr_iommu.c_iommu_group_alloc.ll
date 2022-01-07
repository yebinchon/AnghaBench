; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_group = type { i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iommu_group_kset = common dso_local global i32 0, align 4
@iommu_group_ida = common dso_local global i32 0, align 4
@iommu_group_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@iommu_group_attr_reserved_regions = common dso_local global i32 0, align 4
@iommu_group_attr_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Allocated group %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iommu_group* @iommu_group_alloc() #0 {
  %1 = alloca %struct.iommu_group*, align 8
  %2 = alloca %struct.iommu_group*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.iommu_group* @kzalloc(i32 24, i32 %4)
  store %struct.iommu_group* %5, %struct.iommu_group** %2, align 8
  %6 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %7 = icmp ne %struct.iommu_group* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.iommu_group* @ERR_PTR(i32 %10)
  store %struct.iommu_group* %11, %struct.iommu_group** %1, align 8
  br label %98

12:                                               ; preds = %0
  %13 = load i32, i32* @iommu_group_kset, align 4
  %14 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %15 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %18 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %17, i32 0, i32 5
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %21 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %20, i32 0, i32 4
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %24 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %23, i32 0, i32 3
  %25 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @ida_simple_get(i32* @iommu_group_ida, i32 0, i32 0, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %12
  %31 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %32 = call i32 @kfree(%struct.iommu_group* %31)
  %33 = load i32, i32* %3, align 4
  %34 = call %struct.iommu_group* @ERR_PTR(i32 %33)
  store %struct.iommu_group* %34, %struct.iommu_group** %1, align 8
  br label %98

35:                                               ; preds = %12
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %38 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %40 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %39, i32 0, i32 1
  %41 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %42 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kobject_init_and_add(%struct.TYPE_4__* %40, i32* @iommu_group_ktype, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %35
  %48 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %49 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ida_simple_remove(i32* @iommu_group_ida, i32 %50)
  %52 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %53 = call i32 @kfree(%struct.iommu_group* %52)
  %54 = load i32, i32* %3, align 4
  %55 = call %struct.iommu_group* @ERR_PTR(i32 %54)
  store %struct.iommu_group* %55, %struct.iommu_group** %1, align 8
  br label %98

56:                                               ; preds = %35
  %57 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %58 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %57, i32 0, i32 1
  %59 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %58)
  %60 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %61 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %63 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %56
  %67 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %68 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %67, i32 0, i32 1
  %69 = call i32 @kobject_put(%struct.TYPE_4__* %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.iommu_group* @ERR_PTR(i32 %71)
  store %struct.iommu_group* %72, %struct.iommu_group** %1, align 8
  br label %98

73:                                               ; preds = %56
  %74 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %75 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %74, i32 0, i32 1
  %76 = call i32 @kobject_put(%struct.TYPE_4__* %75)
  %77 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %78 = call i32 @iommu_group_create_file(%struct.iommu_group* %77, i32* @iommu_group_attr_reserved_regions)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* %3, align 4
  %83 = call %struct.iommu_group* @ERR_PTR(i32 %82)
  store %struct.iommu_group* %83, %struct.iommu_group** %1, align 8
  br label %98

84:                                               ; preds = %73
  %85 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %86 = call i32 @iommu_group_create_file(%struct.iommu_group* %85, i32* @iommu_group_attr_type)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %3, align 4
  %91 = call %struct.iommu_group* @ERR_PTR(i32 %90)
  store %struct.iommu_group* %91, %struct.iommu_group** %1, align 8
  br label %98

92:                                               ; preds = %84
  %93 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  %94 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  store %struct.iommu_group* %97, %struct.iommu_group** %1, align 8
  br label %98

98:                                               ; preds = %92, %89, %81, %66, %47, %30, %8
  %99 = load %struct.iommu_group*, %struct.iommu_group** %1, align 8
  ret %struct.iommu_group* %99
}

declare dso_local %struct.iommu_group* @kzalloc(i32, i32) #1

declare dso_local %struct.iommu_group* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.iommu_group*) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_4__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kobject_create_and_add(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @kobject_put(%struct.TYPE_4__*) #1

declare dso_local i32 @iommu_group_create_file(%struct.iommu_group*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
