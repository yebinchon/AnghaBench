; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_attach_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c___iommu_attach_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.iommu_group = type { %struct.iommu_domain*, %struct.iommu_domain* }

@EBUSY = common dso_local global i32 0, align 4
@iommu_group_do_attach_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, %struct.iommu_group*)* @__iommu_attach_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iommu_attach_group(%struct.iommu_domain* %0, %struct.iommu_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  %6 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store %struct.iommu_group* %1, %struct.iommu_group** %5, align 8
  %7 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %8 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %7, i32 0, i32 1
  %9 = load %struct.iommu_domain*, %struct.iommu_domain** %8, align 8
  %10 = icmp ne %struct.iommu_domain* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %13 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %12, i32 0, i32 0
  %14 = load %struct.iommu_domain*, %struct.iommu_domain** %13, align 8
  %15 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %16 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %15, i32 0, i32 1
  %17 = load %struct.iommu_domain*, %struct.iommu_domain** %16, align 8
  %18 = icmp ne %struct.iommu_domain* %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %11, %2
  %23 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %24 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %25 = load i32, i32* @iommu_group_do_attach_device, align 4
  %26 = call i32 @__iommu_group_for_each_dev(%struct.iommu_group* %23, %struct.iommu_domain* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %31 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %32 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %31, i32 0, i32 0
  store %struct.iommu_domain* %30, %struct.iommu_domain** %32, align 8
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @__iommu_group_for_each_dev(%struct.iommu_group*, %struct.iommu_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
