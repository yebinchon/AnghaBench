; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_detach_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_detach_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.iommu_group = type { %struct.iommu_domain*, %struct.iommu_domain* }

@iommu_group_do_detach_device = common dso_local global i32 0, align 4
@iommu_group_do_attach_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, %struct.iommu_group*)* @__iommu_detach_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iommu_detach_group(%struct.iommu_domain* %0, %struct.iommu_group* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.iommu_group*, align 8
  %5 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.iommu_group* %1, %struct.iommu_group** %4, align 8
  %6 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %7 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %6, i32 0, i32 0
  %8 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %9 = icmp ne %struct.iommu_domain* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %12 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %13 = load i32, i32* @iommu_group_do_detach_device, align 4
  %14 = call i32 @__iommu_group_for_each_dev(%struct.iommu_group* %11, %struct.iommu_domain* %12, i32 %13)
  %15 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %16 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %15, i32 0, i32 1
  store %struct.iommu_domain* null, %struct.iommu_domain** %16, align 8
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %19 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %18, i32 0, i32 1
  %20 = load %struct.iommu_domain*, %struct.iommu_domain** %19, align 8
  %21 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %22 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %21, i32 0, i32 0
  %23 = load %struct.iommu_domain*, %struct.iommu_domain** %22, align 8
  %24 = icmp eq %struct.iommu_domain* %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %43

26:                                               ; preds = %17
  %27 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %28 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %29 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %28, i32 0, i32 0
  %30 = load %struct.iommu_domain*, %struct.iommu_domain** %29, align 8
  %31 = load i32, i32* @iommu_group_do_attach_device, align 4
  %32 = call i32 @__iommu_group_for_each_dev(%struct.iommu_group* %27, %struct.iommu_domain* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @WARN_ON(i32 1)
  br label %43

37:                                               ; preds = %26
  %38 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %39 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %38, i32 0, i32 0
  %40 = load %struct.iommu_domain*, %struct.iommu_domain** %39, align 8
  %41 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %42 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %41, i32 0, i32 1
  store %struct.iommu_domain* %40, %struct.iommu_domain** %42, align 8
  br label %43

43:                                               ; preds = %10, %25, %37, %35
  ret void
}

declare dso_local i32 @__iommu_group_for_each_dev(%struct.iommu_group*, %struct.iommu_domain*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
