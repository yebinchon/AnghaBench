; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_set_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_group = type { i32* }

@iommu_group_attr_name = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_group_set_name(%struct.iommu_group* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.iommu_group* %0, %struct.iommu_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %8 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %13 = call i32 @iommu_group_remove_file(%struct.iommu_group* %12, i32* @iommu_group_attr_name)
  %14 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %15 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %19 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %51

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kstrdup(i8* %25, i32 %26)
  %28 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %29 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %31 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %24
  %38 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %39 = call i32 @iommu_group_create_file(%struct.iommu_group* %38, i32* @iommu_group_attr_name)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %44 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %48 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %42, %34, %22
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @iommu_group_remove_file(%struct.iommu_group*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kstrdup(i8*, i32) #1

declare dso_local i32 @iommu_group_create_file(%struct.iommu_group*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
