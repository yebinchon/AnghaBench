; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_dmar_ir_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_dmar_ir_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_drhd_unit = type { %struct.intel_iommu* }
%struct.intel_iommu = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@irq_remapping_enabled = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_POSTING_CAP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@INTR_REMAP_TABLE_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_ir_hotplug(%struct.dmar_drhd_unit* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_drhd_unit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_iommu*, align 8
  store %struct.dmar_drhd_unit* %0, %struct.dmar_drhd_unit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %4, align 8
  %9 = getelementptr inbounds %struct.dmar_drhd_unit, %struct.dmar_drhd_unit* %8, i32 0, i32 0
  %10 = load %struct.intel_iommu*, %struct.intel_iommu** %9, align 8
  store %struct.intel_iommu* %10, %struct.intel_iommu** %7, align 8
  %11 = load i32, i32* @irq_remapping_enabled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

14:                                               ; preds = %2
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %16 = icmp eq %struct.intel_iommu* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %81

20:                                               ; preds = %14
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %22 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ecap_ir_support(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %81

27:                                               ; preds = %20
  %28 = load i32, i32* @IRQ_POSTING_CAP, align 4
  %29 = call i64 @irq_remapping_cap(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %33 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cap_pi_support(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %81

40:                                               ; preds = %31, %27
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %45 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load %struct.dmar_drhd_unit*, %struct.dmar_drhd_unit** %4, align 8
  %50 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %51 = call i32 @dmar_ir_add(%struct.dmar_drhd_unit* %49, %struct.intel_iommu* %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %43
  br label %79

53:                                               ; preds = %40
  %54 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %55 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = icmp ne %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %60 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @INTR_REMAP_TABLE_ENTRIES, align 4
  %65 = call i32 @bitmap_empty(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %77

70:                                               ; preds = %58
  %71 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %72 = call i32 @iommu_disable_irq_remapping(%struct.intel_iommu* %71)
  %73 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %74 = call i32 @intel_teardown_irq_remapping(%struct.intel_iommu* %73)
  %75 = load %struct.intel_iommu*, %struct.intel_iommu** %7, align 8
  %76 = call i32 @ir_remove_ioapic_hpet_scope(%struct.intel_iommu* %75)
  br label %77

77:                                               ; preds = %70, %67
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78, %52
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %37, %26, %17, %13
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ecap_ir_support(i32) #1

declare dso_local i64 @irq_remapping_cap(i32) #1

declare dso_local i32 @cap_pi_support(i32) #1

declare dso_local i32 @dmar_ir_add(%struct.dmar_drhd_unit*, %struct.intel_iommu*) #1

declare dso_local i32 @bitmap_empty(i32, i32) #1

declare dso_local i32 @iommu_disable_irq_remapping(%struct.intel_iommu*) #1

declare dso_local i32 @intel_teardown_irq_remapping(%struct.intel_iommu*) #1

declare dso_local i32 @ir_remove_ioapic_hpet_scope(%struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
