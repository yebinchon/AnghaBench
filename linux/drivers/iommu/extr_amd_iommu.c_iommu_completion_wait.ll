; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_completion_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_completion_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i64, i32 }
%struct.iommu_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*)* @iommu_completion_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_completion_wait(%struct.amd_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca %struct.iommu_cmd, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %3, align 8
  %7 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %8 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %14 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %13, i32 0, i32 1
  %15 = ptrtoint i64* %14 to i32
  %16 = call i32 @build_completion_wait(%struct.iommu_cmd* %4, i32 %15)
  %17 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %18 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @raw_spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %22 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %24 = call i32 @__iommu_queue_command_sync(%struct.amd_iommu* %23, %struct.iommu_cmd* %4, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  br label %32

28:                                               ; preds = %12
  %29 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %30 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %29, i32 0, i32 1
  %31 = call i32 @wait_on_sem(i64* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %34 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @raw_spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %32, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @build_completion_wait(%struct.iommu_cmd*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__iommu_queue_command_sync(%struct.amd_iommu*, %struct.iommu_cmd*, i32) #1

declare dso_local i32 @wait_on_sem(i64*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
