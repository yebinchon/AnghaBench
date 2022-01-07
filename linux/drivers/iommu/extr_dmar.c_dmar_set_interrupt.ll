; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_set_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dmar.c_dmar_set_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"No free IRQ vectors\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dmar_fault = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't request irq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_set_interrupt(%struct.intel_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %3, align 8
  %6 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %7 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %13 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %19 = call i32 @dmar_alloc_hwirq(i32 %14, i32 %17, %struct.intel_iommu* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %25 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %11
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %45

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @dmar_fault, align 4
  %33 = load i32, i32* @IRQF_NO_THREAD, align 4
  %34 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %35 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %38 = call i32 @request_irq(i32 %31, i32 %32, i32 %33, i32 %36, %struct.intel_iommu* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %30
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %26, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @dmar_alloc_hwirq(i32, i32, %struct.intel_iommu*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
