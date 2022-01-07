; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_free_all_cpu_cached_iovas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_free_all_cpu_cached_iovas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32 }
%struct.dmar_domain = type { i32 }

@g_num_of_iommus = common dso_local global i32 0, align 4
@g_iommus = common dso_local global %struct.intel_iommu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @free_all_cpu_cached_iovas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_all_cpu_cached_iovas(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %44, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @g_num_of_iommus, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load %struct.intel_iommu**, %struct.intel_iommu*** @g_iommus, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.intel_iommu*, %struct.intel_iommu** %12, i64 %14
  %16 = load %struct.intel_iommu*, %struct.intel_iommu** %15, align 8
  store %struct.intel_iommu* %16, %struct.intel_iommu** %4, align 8
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %18 = icmp ne %struct.intel_iommu* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  br label %44

20:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %24 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cap_ndoms(i32 %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.dmar_domain* @get_iommu_domain(%struct.intel_iommu* %29, i32 %30)
  store %struct.dmar_domain* %31, %struct.dmar_domain** %5, align 8
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %33 = icmp ne %struct.dmar_domain* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %38 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %37, i32 0, i32 0
  %39 = call i32 @free_cpu_cached_iovas(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %34
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %21

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %7

47:                                               ; preds = %7
  ret void
}

declare dso_local i32 @cap_ndoms(i32) #1

declare dso_local %struct.dmar_domain* @get_iommu_domain(%struct.intel_iommu*, i32) #1

declare dso_local i32 @free_cpu_cached_iovas(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
