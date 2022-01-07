; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_free_irq_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_free_irq_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_data = type { %struct.intel_ir_data* }
%struct.intel_ir_data = type { %struct.irq_2_iommu }
%struct.irq_2_iommu = type { i32 }

@irq_2_ir_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @intel_free_irq_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_free_irq_resources(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.intel_ir_data*, align 8
  %9 = alloca %struct.irq_2_iommu*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %46, %3
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add i32 %18, %19
  %21 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %17, i32 %20)
  store %struct.irq_data* %21, %struct.irq_data** %7, align 8
  %22 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %23 = icmp ne %struct.irq_data* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %16
  %25 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %26 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %25, i32 0, i32 0
  %27 = load %struct.intel_ir_data*, %struct.intel_ir_data** %26, align 8
  %28 = icmp ne %struct.intel_ir_data* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %31 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %30, i32 0, i32 0
  %32 = load %struct.intel_ir_data*, %struct.intel_ir_data** %31, align 8
  store %struct.intel_ir_data* %32, %struct.intel_ir_data** %8, align 8
  %33 = load %struct.intel_ir_data*, %struct.intel_ir_data** %8, align 8
  %34 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %33, i32 0, i32 0
  store %struct.irq_2_iommu* %34, %struct.irq_2_iommu** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @raw_spin_lock_irqsave(i32* @irq_2_ir_lock, i64 %35)
  %37 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %9, align 8
  %38 = call i32 @clear_entries(%struct.irq_2_iommu* %37)
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @raw_spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %39)
  %41 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %42 = call i32 @irq_domain_reset_irq_data(%struct.irq_data* %41)
  %43 = load %struct.intel_ir_data*, %struct.intel_ir_data** %8, align 8
  %44 = call i32 @kfree(%struct.intel_ir_data* %43)
  br label %45

45:                                               ; preds = %29, %24, %16
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %12

49:                                               ; preds = %12
  ret void
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_entries(%struct.irq_2_iommu*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_domain_reset_irq_data(%struct.irq_data*) #1

declare dso_local i32 @kfree(%struct.intel_ir_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
