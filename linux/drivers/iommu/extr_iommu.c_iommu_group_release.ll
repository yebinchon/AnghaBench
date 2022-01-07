; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.iommu_group = type { %struct.iommu_group*, i64, i32, i32, i32 (i32)* }

@.str = private unnamed_addr constant [20 x i8] c"Releasing group %d\0A\00", align 1
@iommu_group_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kobject*)* @iommu_group_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_group_release(%struct.kobject* %0) #0 {
  %2 = alloca %struct.kobject*, align 8
  %3 = alloca %struct.iommu_group*, align 8
  store %struct.kobject* %0, %struct.kobject** %2, align 8
  %4 = load %struct.kobject*, %struct.kobject** %2, align 8
  %5 = call %struct.iommu_group* @to_iommu_group(%struct.kobject* %4)
  store %struct.iommu_group* %5, %struct.iommu_group** %3, align 8
  %6 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %7 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %11 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %10, i32 0, i32 4
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = icmp ne i32 (i32)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %16 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %15, i32 0, i32 4
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %19 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %17(i32 %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %24 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ida_simple_remove(i32* @iommu_group_ida, i32 %25)
  %27 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %28 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %33 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @iommu_domain_free(i64 %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %38 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %37, i32 0, i32 0
  %39 = load %struct.iommu_group*, %struct.iommu_group** %38, align 8
  %40 = call i32 @kfree(%struct.iommu_group* %39)
  %41 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %42 = call i32 @kfree(%struct.iommu_group* %41)
  ret void
}

declare dso_local %struct.iommu_group* @to_iommu_group(%struct.kobject*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @iommu_domain_free(i64) #1

declare dso_local i32 @kfree(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
