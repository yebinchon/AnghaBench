; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_handle_ppr_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_handle_ppr_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.amd_iommu_fault = type { i32, i32, i32, i32, i32 }

@PPR_REQ_FAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unknown PPR request received\0A\00", align 1
@ppr_notifier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*, i32*)* @iommu_handle_ppr_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_handle_ppr_entry(%struct.amd_iommu* %0, i32* %1) #0 {
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.amd_iommu_fault, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @PPR_REQ_TYPE(i32 %8)
  %10 = load i64, i64* @PPR_REQ_FAULT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %40

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %5, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PPR_PASID(i32 %21)
  %23 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %5, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PPR_DEVID(i32 %26)
  %28 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PPR_TAG(i32 %31)
  %33 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PPR_FLAGS(i32 %36)
  %38 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = call i32 @atomic_notifier_call_chain(i32* @ppr_notifier, i32 0, %struct.amd_iommu_fault* %5)
  br label %40

40:                                               ; preds = %14, %12
  ret void
}

declare dso_local i64 @PPR_REQ_TYPE(i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*) #1

declare dso_local i32 @PPR_PASID(i32) #1

declare dso_local i32 @PPR_DEVID(i32) #1

declare dso_local i32 @PPR_TAG(i32) #1

declare dso_local i32 @PPR_FLAGS(i32) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.amd_iommu_fault*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
